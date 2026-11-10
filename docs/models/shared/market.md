# Market

Pricing market the instance runs in

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Market::ON_DEMAND

# Open enum: use .deserialize() to create instances from custom string values
custom = Market.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `ON_DEMAND` | ON_DEMAND   |
| `SPOT`      | SPOT        |
| `RESERVED`  | RESERVED    |
| `COMMUNITY` | COMMUNITY   |
| `OTHER`     | OTHER       |