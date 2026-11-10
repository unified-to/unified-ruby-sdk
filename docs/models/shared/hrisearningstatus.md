# HrisEarningStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HrisEarningStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisEarningStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PENDING`   | PENDING     |
| `ACTIVE`    | ACTIVE      |
| `PROCESSED` | PROCESSED   |
| `ENDED`     | ENDED       |
| `CANCELLED` | CANCELLED   |
| `FAILED`    | FAILED      |