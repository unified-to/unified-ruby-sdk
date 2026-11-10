# ComputeSnapshotStatus

Normalized snapshot status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeSnapshotStatus::CREATING

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeSnapshotStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `CREATING` | CREATING   |
| `READY`    | READY      |
| `FAILED`   | FAILED     |
| `DELETING` | DELETING   |
| `OTHER`    | OTHER      |