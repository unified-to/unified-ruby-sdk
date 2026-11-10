# CdpEventType

The unified structural category of the event

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CdpEventType::TRACK

# Open enum: use .deserialize() to create instances from custom string values
custom = CdpEventType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `TRACK`    | TRACK      |
| `PAGE`     | PAGE       |
| `SCREEN`   | SCREEN     |
| `IDENTIFY` | IDENTIFY   |
| `GROUP`    | GROUP      |
| `ALIAS`    | ALIAS      |