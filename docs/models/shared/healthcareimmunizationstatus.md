# HealthcareImmunizationStatus

Status of the immunization

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareImmunizationStatus::COMPLETED

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareImmunizationStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `COMPLETED`        | COMPLETED          |
| `NOT_DONE`         | NOT_DONE           |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `OTHER`            | OTHER              |