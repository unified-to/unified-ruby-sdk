# VerificationPackageType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = VerificationPackageType::IDENTITY_VERIFICATION

# Open enum: use .deserialize() to create instances from custom string values
custom = VerificationPackageType.deserialize("custom_value")
```


## Values

| Name                      | Value                     |
| ------------------------- | ------------------------- |
| `IDENTITY_VERIFICATION`   | IDENTITY_VERIFICATION     |
| `SCREENING`               | SCREENING                 |
| `BACKGROUND_CHECK`        | BACKGROUND_CHECK          |
| `EMPLOYMENT_VERIFICATION` | EMPLOYMENT_VERIFICATION   |
| `EDUCATION_VERIFICATION`  | EDUCATION_VERIFICATION    |
| `CREDIT_CHECK`            | CREDIT_CHECK              |
| `FRAUD_PREVENTION`        | FRAUD_PREVENTION          |
| `OTHER`                   | OTHER                     |