# HealthcareObservationComponentInterpretation

Interpretation of the component value

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareObservationComponentInterpretation::NORMAL

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareObservationComponentInterpretation.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `NORMAL`        | NORMAL          |
| `ABNORMAL`      | ABNORMAL        |
| `LOW`           | LOW             |
| `HIGH`          | HIGH            |
| `CRITICAL_LOW`  | CRITICAL_LOW    |
| `CRITICAL_HIGH` | CRITICAL_HIGH   |
| `OTHER`         | OTHER           |