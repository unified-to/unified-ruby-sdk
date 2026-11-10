# HealthcareSlotStatus

Availability of the slot

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareSlotStatus::FREE

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareSlotStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `FREE`             | FREE               |
| `BUSY`             | BUSY               |
| `BUSY_UNAVAILABLE` | BUSY_UNAVAILABLE   |
| `BUSY_TENTATIVE`   | BUSY_TENTATIVE     |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `OTHER`            | OTHER              |