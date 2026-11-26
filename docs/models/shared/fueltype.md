# FuelType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FuelType::GASOLINE

# Open enum: use .deserialize() to create instances from custom string values
custom = FuelType.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `GASOLINE`    | GASOLINE      |
| `DIESEL`      | DIESEL        |
| `ELECTRIC`    | ELECTRIC      |
| `HYBRID`      | HYBRID        |
| `HYDROGEN`    | HYDROGEN      |
| `LPG`         | LPG           |
| `NATURAL_GAS` | NATURAL_GAS   |
| `OTHER`       | OTHER         |