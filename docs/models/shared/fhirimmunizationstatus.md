# FhirImmunizationStatus

completed | entered-in-error | not-done

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FhirImmunizationStatus::COMPLETED

# Open enum: use .deserialize() to create instances from custom string values
custom = FhirImmunizationStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `COMPLETED`        | completed          |
| `ENTERED_IN_ERROR` | entered-in-error   |
| `NOT_DONE`         | not-done           |