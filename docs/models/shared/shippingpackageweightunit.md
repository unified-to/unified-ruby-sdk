# ShippingPackageWeightUnit

Unit for weight (g, kg, oz, lb)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ShippingPackageWeightUnit::G

# Open enum: use .deserialize() to create instances from custom string values
custom = ShippingPackageWeightUnit.deserialize("custom_value")
```


## Values

| Name  | Value |
| ----- | ----- |
| `G`   | g     |
| `KG`  | kg    |
| `OZ`  | oz    |
| `LB`  | lb    |