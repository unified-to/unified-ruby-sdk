# HealthcareEncounterStatus

Status of the encounter

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareEncounterStatus::PLANNED

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareEncounterStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `PLANNED`          | PLANNED            |
| `ARRIVED`          | ARRIVED            |
| `TRIAGED`          | TRIAGED            |
| `IN_PROGRESS`      | IN_PROGRESS        |
| `ONLEAVE`          | ONLEAVE            |
| `FINISHED`         | FINISHED           |
| `CANCELLED`        | CANCELLED          |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `UNKNOWN`          | UNKNOWN            |
| `OTHER`            | OTHER              |