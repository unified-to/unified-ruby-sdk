# FhirEncounterStatus

planned | arrived | triaged | in-progress | onleave | finished | cancelled | entered-in-error | unknown

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FhirEncounterStatus::PLANNED

# Open enum: use .deserialize() to create instances from custom string values
custom = FhirEncounterStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `PLANNED`          | planned            |
| `ARRIVED`          | arrived            |
| `TRIAGED`          | triaged            |
| `IN_PROGRESS`      | in-progress        |
| `ONLEAVE`          | onleave            |
| `FINISHED`         | finished           |
| `CANCELLED`        | cancelled          |
| `ENTERED_IN_ERROR` | entered-in-error   |
| `UNKNOWN`          | unknown            |