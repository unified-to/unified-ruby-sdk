# HrisDocumentType

unified, normalized document type (OTHER when unmappable)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HrisDocumentType::CONTRACT

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisDocumentType.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `CONTRACT`           | CONTRACT             |
| `OFFER_LETTER`       | OFFER_LETTER         |
| `POLICY`             | POLICY               |
| `TAX`                | TAX                  |
| `ID`                 | ID                   |
| `VISA`               | VISA                 |
| `PAYSLIP`            | PAYSLIP              |
| `BENEFITS`           | BENEFITS             |
| `CERTIFICATION`      | CERTIFICATION        |
| `PERFORMANCE_REVIEW` | PERFORMANCE_REVIEW   |
| `ONBOARDING`         | ONBOARDING           |
| `TERMINATION`        | TERMINATION          |
| `MEDICAL`            | MEDICAL              |
| `OTHER`              | OTHER                |