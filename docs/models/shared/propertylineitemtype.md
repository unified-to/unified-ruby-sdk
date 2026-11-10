# PropertyLineitemType

base price, fee, tax, discount or deposit

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PropertyLineitemType::BASE

# Open enum: use .deserialize() to create instances from custom string values
custom = PropertyLineitemType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `BASE`     | BASE       |
| `FEE`      | FEE        |
| `TAX`      | TAX        |
| `DISCOUNT` | DISCOUNT   |
| `DEPOSIT`  | DEPOSIT    |
| `OTHER`    | OTHER      |