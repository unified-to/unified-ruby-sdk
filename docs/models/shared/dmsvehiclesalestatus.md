# DmsVehiclesaleStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = DmsVehiclesaleStatus::QUOTE

# Open enum: use .deserialize() to create instances from custom string values
custom = DmsVehiclesaleStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `QUOTE`     | QUOTE       |
| `PENDING`   | PENDING     |
| `SOLD`      | SOLD        |
| `DELIVERED` | DELIVERED   |
| `FINALIZED` | FINALIZED   |
| `CANCELLED` | CANCELLED   |
| `OTHER`     | OTHER       |