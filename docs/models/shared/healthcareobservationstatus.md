# HealthcareObservationStatus

Status of the observation result

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareObservationStatus::REGISTERED

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareObservationStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `REGISTERED`       | REGISTERED         |
| `PRELIMINARY`      | PRELIMINARY        |
| `FINAL`            | FINAL              |
| `AMENDED`          | AMENDED            |
| `CORRECTED`        | CORRECTED          |
| `CANCELLED`        | CANCELLED          |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `UNKNOWN`          | UNKNOWN            |
| `OTHER`            | OTHER              |