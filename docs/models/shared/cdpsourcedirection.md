# CdpSourceDirection

SOURCE, or BIDIRECTIONAL for import+export connectors

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CdpSourceDirection::SOURCE

# Open enum: use .deserialize() to create instances from custom string values
custom = CdpSourceDirection.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `SOURCE`        | SOURCE          |
| `DESTINATION`   | DESTINATION     |
| `BIDIRECTIONAL` | BIDIRECTIONAL   |