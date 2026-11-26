# FhirDiagnosticReportStatus

registered | partial | preliminary | final | amended | corrected | appended | cancelled | entered-in-error | unknown

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FhirDiagnosticReportStatus::REGISTERED

# Open enum: use .deserialize() to create instances from custom string values
custom = FhirDiagnosticReportStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `REGISTERED`       | registered         |
| `PARTIAL`          | partial            |
| `PRELIMINARY`      | preliminary        |
| `FINAL`            | final              |
| `AMENDED`          | amended            |
| `CORRECTED`        | corrected          |
| `APPENDED`         | appended           |
| `CANCELLED`        | cancelled          |
| `ENTERED_IN_ERROR` | entered-in-error   |
| `UNKNOWN`          | unknown            |