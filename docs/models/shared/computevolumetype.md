# ComputeVolumeType

The kind of volume

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeVolumeType::STANDARD

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeVolumeType.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `STANDARD`         | STANDARD           |
| `HIGH_PERFORMANCE` | HIGH_PERFORMANCE   |
| `SHARED`           | SHARED             |
| `LOCAL`            | LOCAL              |
| `OTHER`            | OTHER              |