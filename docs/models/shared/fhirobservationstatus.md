# FhirObservationStatus

registered | preliminary | final | amended | corrected | cancelled | entered-in-error | unknown

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FhirObservationStatus::REGISTERED

# Open enum: use .deserialize() to create instances from custom string values
custom = FhirObservationStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `REGISTERED`       | registered         |
| `PRELIMINARY`      | preliminary        |
| `FINAL`            | final              |
| `AMENDED`          | amended            |
| `CORRECTED`        | corrected          |
| `CANCELLED`        | cancelled          |
| `ENTERED_IN_ERROR` | entered-in-error   |
| `UNKNOWN`          | unknown            |