# GpuManufacturer

GPU manufacturer

## Example Usage

```ruby
require "unified_ruby_sdk"

value = GpuManufacturer::NVIDIA

# Open enum: use .deserialize() to create instances from custom string values
custom = GpuManufacturer.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `NVIDIA` | NVIDIA   |
| `AMD`    | AMD      |
| `INTEL`  | INTEL    |
| `OTHER`  | OTHER    |