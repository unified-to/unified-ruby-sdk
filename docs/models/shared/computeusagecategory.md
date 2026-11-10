# ComputeUsageCategory

What was consumed

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeUsageCategory::GPU

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeUsageCategory.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `GPU`     | GPU       |
| `CPU`     | CPU       |
| `MEMORY`  | MEMORY    |
| `STORAGE` | STORAGE   |
| `NETWORK` | NETWORK   |
| `OTHER`   | OTHER     |