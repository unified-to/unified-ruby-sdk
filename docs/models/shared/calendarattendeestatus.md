# CalendarAttendeeStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CalendarAttendeeStatus::ACCEPTED

# Open enum: use .deserialize() to create instances from custom string values
custom = CalendarAttendeeStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `ACCEPTED`  | ACCEPTED    |
| `REJECTED`  | REJECTED    |
| `TENTATIVE` | TENTATIVE   |