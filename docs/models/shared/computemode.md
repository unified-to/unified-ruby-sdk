# ComputeMode

How the segment membership is computed (REALTIME or BATCH)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeMode::REALTIME

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeMode.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `REALTIME` | REALTIME   |
| `BATCH`    | BATCH      |