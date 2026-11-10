# ComputeVolumeStatus

Normalized volume status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeVolumeStatus::CREATING

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeVolumeStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `CREATING`  | CREATING    |
| `AVAILABLE` | AVAILABLE   |
| `IN_USE`    | IN_USE      |
| `DELETING`  | DELETING    |
| `ERROR`     | ERROR       |
| `OTHER`     | OTHER       |