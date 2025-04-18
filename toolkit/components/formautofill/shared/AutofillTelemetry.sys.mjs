/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import { FormAutofillUtils } from "resource://gre/modules/shared/FormAutofillUtils.sys.mjs";

const { FIELD_STATES } = FormAutofillUtils;

class AutofillTelemetryBase {
  SUPPORTED_FIELDS = {};

  EVENT_CATEGORY = null;
  EVENT_OBJECT_FORM_INTERACTION = null;

  SCALAR_DETECTED_SECTION_COUNT = null;
  SCALAR_SUBMITTED_SECTION_COUNT = null;

  HISTOGRAM_NUM_USES = null;
  HISTOGRAM_PROFILE_NUM_USES = null;
  HISTOGRAM_PROFILE_NUM_USES_KEY = null;

  #initFormEventExtra(value) {
    let extra = {};
    for (const field of Object.values(this.SUPPORTED_FIELDS)) {
      extra[field] = value;
    }
    return extra;
  }

  #setFormEventExtra(extra, key, value) {
    if (!this.SUPPORTED_FIELDS[key]) {
      return;
    }

    extra[this.SUPPORTED_FIELDS[key]] = value;
  }

  /**
   * Building the extra keys object that is included in the Legacy Telemetry event `cc_form_v2`
   * or `address_form` event and the Glean event `cc_form`, and `address_form`.
   * It indicates the detected credit card or address fields and which method (autocomplete property, regular expression heuristics or fathom) identified them.
   *
   * @param {Array<object>} fieldDetails fieldDetails to extract which fields were identified and how
   * @param {string} undetected Default value when a field is not detected: 'undetected' (Glean) and 'false' in (Legacy)
   * @param {string} autocomplete Value when a field is identified with autocomplete property: 'autocomplete' (Glean), 'true' (Legacy)
   * @param {string} regexp Value when a field is identified with regex expression heuristics: 'regexp' (Glean), '0' (Legacy)
   * @param {boolean} includeMultiPart Include multi part data or not
   * @returns {object} Extra keys to include in the form event
   */
  #buildFormDetectedEventExtra(
    fieldDetails,
    undetected,
    autocomplete,
    regexp,
    includeMultiPart
  ) {
    let extra = this.#initFormEventExtra(undetected);

    let identified = new Set();
    fieldDetails.forEach(detail => {
      identified.add(detail.fieldName);

      if (detail.reason == "autocomplete") {
        this.#setFormEventExtra(extra, detail.fieldName, autocomplete);
      } else {
        // confidence exists only when a field is identified by fathom.
        let confidence =
          detail.confidence > 0 ? Math.floor(100 * detail.confidence) / 100 : 0;

        this.#setFormEventExtra(
          extra,
          detail.fieldName,
          confidence ? confidence.toString() : regexp
        );
      }

      if (
        detail.fieldName === "cc-number" &&
        this.SUPPORTED_FIELDS[detail.fieldName] &&
        includeMultiPart
      ) {
        extra.cc_number_multi_parts = detail.part ?? 1;
      }
    });
    return extra;
  }

  recordFormDetected(flowId, fieldDetails) {
    this.recordFormEvent(
      "detected",
      flowId,
      this.#buildFormDetectedEventExtra(
        fieldDetails,
        "false",
        "true",
        "0",
        false
      )
    );

    this.recordGleanFormEvent(
      "formDetected",
      flowId,
      this.#buildFormDetectedEventExtra(
        fieldDetails,
        "undetected",
        "autocomplete",
        "regexp",
        true
      )
    );
  }

  recordPopupShown(flowId, fieldDetails) {
    const extra = { field_name: fieldDetails[0].fieldName };
    this.recordFormEvent("popup_shown", flowId, extra);
    this.recordGleanFormEvent("formPopupShown", flowId, extra);
  }

  recordFormFilled(flowId, fieldDetails, data) {
    // Calculate values for telemetry
    const extra = this.#initFormEventExtra("unavailable");

    for (const fieldDetail of fieldDetails) {
      let { filledState, value } = data.get(fieldDetail.elementId);
      switch (filledState) {
        case FIELD_STATES.AUTO_FILLED:
          filledState = "filled";
          break;
        case FIELD_STATES.NORMAL:
        default:
          filledState =
            fieldDetail.tagName == "SELECT" || value.length
              ? "user_filled"
              : "not_filled";
          break;
      }
      this.#setFormEventExtra(extra, fieldDetail.fieldName, filledState);
    }

    this.recordFormEvent("filled", flowId, extra);
    this.recordGleanFormEvent("formFilled", flowId, extra);
  }

  recordFilledModified(flowId, fieldDetails) {
    const extra = { field_name: fieldDetails[0].fieldName };
    this.recordFormEvent("filled_modified", flowId, extra);
    this.recordGleanFormEvent("formFilledModified", flowId, extra);
  }

  recordFormSubmitted(flowId, fieldDetails, data) {
    const extra = this.#initFormEventExtra("unavailable");

    for (const fieldDetail of fieldDetails) {
      let { filledState, value } = data.get(fieldDetail.elementId);
      switch (filledState) {
        case FIELD_STATES.AUTO_FILLED:
          filledState = "autofilled";
          break;
        case FIELD_STATES.NORMAL:
        default:
          filledState =
            fieldDetail.tagName == "SELECT" || value.length
              ? "user_filled"
              : "not_filled";
          break;
      }
      this.#setFormEventExtra(extra, fieldDetail.fieldName, filledState);
    }

    this.recordFormEvent("submitted", flowId, extra);
    this.recordGleanFormEvent("formSubmitted", flowId, extra);
  }

  recordFormCleared(flowId, fieldDetails) {
    const extra = { field_name: fieldDetails[0].fieldName };

    // Note that when a form is cleared, we also record `filled_modified` events
    // for all the fields that have been cleared.
    this.recordFormEvent("cleared", flowId, extra);
    this.recordGleanFormEvent("formCleared", flowId, extra);
  }

  recordFormEvent(method, flowId, extra) {
    Services.telemetry.recordEvent(
      this.EVENT_CATEGORY,
      method,
      this.EVENT_OBJECT_FORM_INTERACTION,
      flowId,
      extra
    );
  }

  recordGleanFormEvent(_eventName, _flowId, _extra) {
    throw new Error("Not implemented.");
  }

  recordFormInteractionEvent(method, flowId, fieldDetails, data) {
    if (!this.EVENT_OBJECT_FORM_INTERACTION) {
      return undefined;
    }
    switch (method) {
      case "detected":
        return this.recordFormDetected(flowId, fieldDetails);
      case "popup_shown":
        return this.recordPopupShown(flowId, fieldDetails);
      case "filled":
        return this.recordFormFilled(flowId, fieldDetails, data);
      case "filled_modified":
        return this.recordFilledModified(flowId, fieldDetails);
      case "submitted":
        return this.recordFormSubmitted(flowId, fieldDetails, data);
      case "cleared":
        return this.recordFormCleared(flowId, fieldDetails);
    }
    return undefined;
  }

  recordDoorhangerEvent(method, object, flowId) {
    Services.telemetry.recordEvent(this.EVENT_CATEGORY, method, object, flowId);
  }

  recordManageEvent(method) {
    Services.telemetry.recordEvent(this.EVENT_CATEGORY, method, "manage");
  }

  recordAutofillProfileCount(_count) {
    throw new Error("Not implemented.");
  }

  recordDetectedSectionCount() {
    if (!this.SCALAR_DETECTED_SECTION_COUNT) {
      return;
    }

    Services.telemetry.scalarAdd(this.SCALAR_DETECTED_SECTION_COUNT, 1);
  }

  recordSubmittedSectionCount(count) {
    if (!this.SCALAR_SUBMITTED_SECTION_COUNT || !count) {
      return;
    }

    Services.telemetry.scalarAdd(this.SCALAR_SUBMITTED_SECTION_COUNT, count);
  }

  recordNumberOfUse(records) {
    let histogram = Services.telemetry.getKeyedHistogramById(
      this.HISTOGRAM_PROFILE_NUM_USES
    );
    histogram.clear();

    for (let record of records) {
      histogram.add(this.HISTOGRAM_PROFILE_NUM_USES_KEY, record.timesUsed);
    }
  }
}

export class AddressTelemetry extends AutofillTelemetryBase {
  EVENT_CATEGORY = "address";
  EVENT_OBJECT_FORM_INTERACTION = "address_form";
  EVENT_OBJECT_FORM_INTERACTION_EXT = "address_form_ext";

  SCALAR_DETECTED_SECTION_COUNT =
    "formautofill.addresses.detected_sections_count";
  SCALAR_SUBMITTED_SECTION_COUNT =
    "formautofill.addresses.submitted_sections_count";
  SCALAR_AUTOFILL_PROFILE_COUNT =
    "formautofill.addresses.autofill_profiles_count";

  HISTOGRAM_PROFILE_NUM_USES = "AUTOFILL_PROFILE_NUM_USES";
  HISTOGRAM_PROFILE_NUM_USES_KEY = "address";

  // Fields that are record in `address_form` and `address_form_ext` telemetry
  SUPPORTED_FIELDS = {
    "street-address": "street_address",
    "address-line1": "address_line1",
    "address-line2": "address_line2",
    "address-line3": "address_line3",
    "address-level1": "address_level1",
    "address-level2": "address_level2",
    "postal-code": "postal_code",
    country: "country",
    name: "name",
    "given-name": "given_name",
    "additional-name": "additional_name",
    "family-name": "family_name",
    email: "email",
    organization: "organization",
    tel: "tel",
  };

  // Fields that are record in `address_form` event telemetry extra_keys
  static SUPPORTED_FIELDS_IN_FORM = [
    "street_address",
    "address_line1",
    "address_line2",
    "address_line3",
    "address_level2",
    "address_level1",
    "postal_code",
    "country",
  ];

  // Fields that are record in `address_form_ext` event telemetry extra_keys
  static SUPPORTED_FIELDS_IN_FORM_EXT = [
    "name",
    "given_name",
    "additional_name",
    "family_name",
    "email",
    "organization",
    "tel",
  ];

  recordGleanFormEvent(_eventName, _flowId, _extra) {
    // To be implemented when migrating the legacy event address.address_form to Glean
  }

  recordFormEvent(method, flowId, extra) {
    let extExtra = {};
    if (["detected", "filled", "submitted"].includes(method)) {
      for (const [key, value] of Object.entries(extra)) {
        if (AddressTelemetry.SUPPORTED_FIELDS_IN_FORM_EXT.includes(key)) {
          extExtra[key] = value;
          delete extra[key];
        }
      }
    }

    Services.telemetry.recordEvent(
      this.EVENT_CATEGORY,
      method,
      this.EVENT_OBJECT_FORM_INTERACTION,
      flowId,
      extra
    );

    if (Object.keys(extExtra).length) {
      Services.telemetry.recordEvent(
        this.EVENT_CATEGORY,
        method,
        this.EVENT_OBJECT_FORM_INTERACTION_EXT,
        flowId,
        extExtra
      );
    }
  }

  recordAutofillProfileCount(count) {
    Services.telemetry.scalarSet(this.SCALAR_AUTOFILL_PROFILE_COUNT, count);
  }
}

class CreditCardTelemetry extends AutofillTelemetryBase {
  EVENT_CATEGORY = "creditcard";
  EVENT_OBJECT_FORM_INTERACTION = "cc_form_v2";

  SCALAR_DETECTED_SECTION_COUNT =
    "formautofill.creditCards.detected_sections_count";
  SCALAR_SUBMITTED_SECTION_COUNT =
    "formautofill.creditCards.submitted_sections_count";

  HISTOGRAM_NUM_USES = "CREDITCARD_NUM_USES";
  HISTOGRAM_PROFILE_NUM_USES = "AUTOFILL_PROFILE_NUM_USES";
  HISTOGRAM_PROFILE_NUM_USES_KEY = "credit_card";

  // Mapping of field name used in formautofill code to the field name
  // used in the telemetry.
  SUPPORTED_FIELDS = {
    "cc-name": "cc_name",
    "cc-number": "cc_number",
    "cc-type": "cc_type",
    "cc-exp": "cc_exp",
    "cc-exp-month": "cc_exp_month",
    "cc-exp-year": "cc_exp_year",
  };

  recordGleanFormEvent(eventName, flowId, extra) {
    extra.flow_id = flowId;
    Glean.formautofillCreditcards[eventName].record(extra);
  }

  recordNumberOfUse(records) {
    super.recordNumberOfUse(records);

    if (!this.HISTOGRAM_NUM_USES) {
      return;
    }

    let histogram = Services.telemetry.getHistogramById(
      this.HISTOGRAM_NUM_USES
    );
    histogram.clear();

    for (let record of records) {
      histogram.add(record.timesUsed);
    }
  }

  recordAutofillProfileCount(count) {
    Glean.formautofillCreditcards.autofillProfilesCount.set(count);
  }
}

export class AutofillTelemetry {
  static #creditCardTelemetry = new CreditCardTelemetry();
  static #addressTelemetry = new AddressTelemetry();

  // const for `type` parameter used in the utility functions
  static ADDRESS = "address";
  static CREDIT_CARD = "creditcard";

  static #getTelemetryByFieldDetail(fieldDetail) {
    return FormAutofillUtils.isAddressField(fieldDetail.fieldName)
      ? this.#addressTelemetry
      : this.#creditCardTelemetry;
  }

  static #getTelemetryByType(type) {
    return type == AutofillTelemetry.CREDIT_CARD
      ? this.#creditCardTelemetry
      : this.#addressTelemetry;
  }

  /**
   * Utility functions for `doorhanger` event (defined in Events.yaml)
   *
   * Category: address or creditcard
   * Event name: doorhanger
   */
  static recordDoorhangerShown(type, object, flowId) {
    const telemetry = this.#getTelemetryByType(type);
    telemetry.recordDoorhangerEvent("show", object, flowId);
  }

  static recordDoorhangerClicked(type, method, object, flowId) {
    const telemetry = this.#getTelemetryByType(type);

    // We don't have `create` method in telemetry, we treat `create` as `save`
    switch (method) {
      case "create":
        method = "save";
        break;
      case "open-pref":
        method = "pref";
        break;
      case "learn-more":
        method = "learn_more";
        break;
    }

    telemetry.recordDoorhangerEvent(method, object, flowId);
  }

  /**
   * Utility functions for form event (defined in Events.yaml)
   *
   * Category: address or creditcard
   * Event name: cc_form_v2, or address_form
   */

  static recordFormInteractionEvent(method, flowId, fieldDetails, data) {
    const telemetry = this.#getTelemetryByFieldDetail(fieldDetails[0]);
    telemetry.recordFormInteractionEvent(method, flowId, fieldDetails, data);
  }

  /**
   * Utility functions for submitted section count scalar (defined in Scalars.yaml)
   *
   * Category: formautofill.creditCards or formautofill.addresses
   * Scalar name: submitted_sections_count
   */
  static recordDetectedSectionCount(fieldDetails) {
    const telemetry = this.#getTelemetryByFieldDetail(fieldDetails[0]);
    telemetry.recordDetectedSectionCount();
  }

  static recordSubmittedSectionCount(fieldDetails, count) {
    const telemetry = this.#getTelemetryByFieldDetail(fieldDetails[0]);
    telemetry.recordSubmittedSectionCount(count);
  }

  static recordManageEvent(type, method) {
    const telemetry = this.#getTelemetryByType(type);
    telemetry.recordManageEvent(method);
  }

  static recordAutofillProfileCount(type, count) {
    const telemetry = this.#getTelemetryByType(type);
    telemetry.recordAutofillProfileCount(count);
  }

  /**
   * Utility functions for address/credit card number of use
   */
  static recordNumberOfUse(type, records) {
    const telemetry = this.#getTelemetryByType(type);
    telemetry.recordNumberOfUse(records);
  }

  static recordFormSubmissionHeuristicCount(label) {
    Glean.formautofill.formSubmissionHeuristic[label].add(1);
  }
}
