# FulfillmentType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FulfillmentType::DINE_IN

# Open enum: use .deserialize() to create instances from custom string values
custom = FulfillmentType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `DINE_IN`  | DINE_IN    |
| `TAKEOUT`  | TAKEOUT    |
| `DELIVERY` | DELIVERY   |
| `PICKUP`   | PICKUP     |
| `CURBSIDE` | CURBSIDE   |
| `SHIPPING` | SHIPPING   |
| `DIGITAL`  | DIGITAL    |
| `OTHER`    | OTHER      |