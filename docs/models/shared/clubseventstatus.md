# ClubsEventStatus

The event status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ClubsEventStatus::SCHEDULED

# Open enum: use .deserialize() to create instances from custom string values
custom = ClubsEventStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `SCHEDULED` | SCHEDULED   |
| `CANCELED`  | CANCELED    |
| `TBD`       | TBD         |
| `FINAL`     | FINAL       |