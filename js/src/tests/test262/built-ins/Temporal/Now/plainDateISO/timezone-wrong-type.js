// |reftest| skip-if(!this.hasOwnProperty('Temporal')) -- Temporal is not enabled unconditionally
// Copyright (C) 2022 Igalia, S.L. All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.

/*---
esid: sec-temporal.now.plaindateiso
description: >
  Appropriate error thrown when argument cannot be converted to a valid string
  for time zone
features: [BigInt, Symbol, Temporal]
---*/

const primitiveTests = [
  [null, "null"],
  [true, "boolean"],
  ["", "empty string"],
  [1, "number that doesn't convert to a valid ISO string"],
  [19761118, "number that would convert to a valid ISO string in other contexts"],
  [1n, "bigint"],
];

for (const [timeZone, description] of primitiveTests) {
  assert.throws(
    typeof timeZone === 'string' ? RangeError : TypeError,
    () => Temporal.Now.plainDateISO(timeZone),
    `${description} does not convert to a valid ISO string`
  );
}

const typeErrorTests = [
  [Symbol(), "symbol"],
  [{}, "object"],
  [new Temporal.Duration(), "duration instance"],
];

for (const [timeZone, description] of typeErrorTests) {
  assert.throws(TypeError, () => Temporal.Now.plainDateISO(timeZone), `${description} is not a valid object and does not convert to a string`);
}

reportCompare(0, 0);
