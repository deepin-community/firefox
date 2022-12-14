"use strict";

const { FeatureManifest } = ChromeUtils.import(
  "resource://nimbus/FeatureManifest.js"
);
const { Ajv } = ChromeUtils.import("resource://testing-common/ajv-4.1.1.js");
Cu.importGlobalProperties(["fetch"]);

XPCOMUtils.defineLazyGetter(this, "fetchSchema", async () => {
  const response = await fetch(
    "resource://testing-common/ExperimentFeatureManifest.schema.json"
  );
  const schema = await response.json();
  if (!schema) {
    throw new Error("Failed to load NimbusSchema");
  }
  return schema.definitions.Feature;
});

async function validateManifestEntry(entry) {
  const ajv = new Ajv({ allErrors: true });
  const validate = ajv.compile(await fetchSchema);
  return [validate(entry), validate.errors];
}

function throwValidationError(featureId, errors) {
  throw new Error(
    `The manifest entry for ${featureId} is not valid in tookit/components/nimbus/NimbusFeature.js: ` +
      JSON.stringify(errors, undefined, 2)
  );
}

add_task(async function test_feature_manifest_is_valid() {
  // Validate each entry in the feature manifest.
  for (const featureId in FeatureManifest) {
    const entry = FeatureManifest[featureId];
    const [valid, errors] = await validateManifestEntry(entry);
    if (!valid) {
      throwValidationError(featureId, errors);
    }

    // Note: Because we're on an old version of ajv if/else isn't supported, see https://bugzilla.mozilla.org/show_bug.cgi?id=1730924
    if (entry.hasExposure && !entry.exposureDescription) {
      throwValidationError(featureId, {
        message: "Should have required property 'exposureDescription'",
      });
    }
  }
});
