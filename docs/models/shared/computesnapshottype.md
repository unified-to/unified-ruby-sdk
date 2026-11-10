# ComputeSnapshotType

Whether memory state is included

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeSnapshotType::MEMORY

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeSnapshotType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `MEMORY` | MEMORY   |
| `DISK`   | DISK     |
| `OTHER`  | OTHER    |