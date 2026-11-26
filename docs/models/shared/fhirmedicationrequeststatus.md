# FhirMedicationRequestStatus

active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FhirMedicationRequestStatus::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = FhirMedicationRequestStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `ACTIVE`           | active             |
| `ON_HOLD`          | on-hold            |
| `CANCELLED`        | cancelled          |
| `COMPLETED`        | completed          |
| `ENTERED_IN_ERROR` | entered-in-error   |
| `STOPPED`          | stopped            |
| `DRAFT`            | draft              |
| `UNKNOWN`          | unknown            |