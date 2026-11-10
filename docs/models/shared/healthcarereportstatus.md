# HealthcareReportStatus

Status of the report

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareReportStatus::REGISTERED

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareReportStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `REGISTERED`       | REGISTERED         |
| `PARTIAL`          | PARTIAL            |
| `PRELIMINARY`      | PRELIMINARY        |
| `FINAL`            | FINAL              |
| `AMENDED`          | AMENDED            |
| `CORRECTED`        | CORRECTED          |
| `APPENDED`         | APPENDED           |
| `CANCELLED`        | CANCELLED          |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `UNKNOWN`          | UNKNOWN            |
| `OTHER`            | OTHER              |