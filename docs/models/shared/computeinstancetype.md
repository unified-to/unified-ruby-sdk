# ComputeInstanceType

The kind of compute unit

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeInstanceType::CONTAINER

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeInstanceType.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `CONTAINER` | CONTAINER   |
| `VM`        | VM          |
| `BAREMETAL` | BAREMETAL   |
| `SANDBOX`   | SANDBOX     |
| `OTHER`     | OTHER       |