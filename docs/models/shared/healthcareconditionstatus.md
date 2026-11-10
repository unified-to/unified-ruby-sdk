# HealthcareConditionStatus

Clinical status of the condition

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareConditionStatus::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareConditionStatus.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `ACTIVE`     | ACTIVE       |
| `RECURRENCE` | RECURRENCE   |
| `RELAPSE`    | RELAPSE      |
| `INACTIVE`   | INACTIVE     |
| `REMISSION`  | REMISSION    |
| `RESOLVED`   | RESOLVED     |
| `OTHER`      | OTHER        |