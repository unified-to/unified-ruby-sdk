# HealthcareGoalStatus

Lifecycle status of the goal

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareGoalStatus::PROPOSED

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareGoalStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `PROPOSED`         | PROPOSED           |
| `PLANNED`          | PLANNED            |
| `ACCEPTED`         | ACCEPTED           |
| `ACTIVE`           | ACTIVE             |
| `ON_HOLD`          | ON_HOLD            |
| `COMPLETED`        | COMPLETED          |
| `CANCELLED`        | CANCELLED          |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `REJECTED`         | REJECTED           |
| `OTHER`            | OTHER              |