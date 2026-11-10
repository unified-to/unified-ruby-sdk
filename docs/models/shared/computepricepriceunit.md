# ComputePricePriceUnit

Unit that price_amount is quoted in

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputePricePriceUnit::PER_GPU_HOUR

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputePricePriceUnit.deserialize("custom_value")
```


## Values

| Name                | Value               |
| ------------------- | ------------------- |
| `PER_GPU_HOUR`      | PER_GPU_HOUR        |
| `PER_INSTANCE_HOUR` | PER_INSTANCE_HOUR   |
| `OTHER`             | OTHER               |