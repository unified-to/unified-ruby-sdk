# Direction

DESTINATION, or BIDIRECTIONAL for import+export connectors

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Direction::SOURCE

# Open enum: use .deserialize() to create instances from custom string values
custom = Direction.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `SOURCE`        | SOURCE          |
| `DESTINATION`   | DESTINATION     |
| `BIDIRECTIONAL` | BIDIRECTIONAL   |