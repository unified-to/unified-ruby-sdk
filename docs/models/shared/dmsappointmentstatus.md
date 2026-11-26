# DmsAppointmentStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = DmsAppointmentStatus::SCHEDULED

# Open enum: use .deserialize() to create instances from custom string values
custom = DmsAppointmentStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `SCHEDULED` | SCHEDULED   |
| `CONFIRMED` | CONFIRMED   |
| `CONVERTED` | CONVERTED   |
| `CANCELLED` | CANCELLED   |
| `NO_SHOW`   | NO_SHOW     |
| `OTHER`     | OTHER       |