# ComputeKeyType

The kind of credential

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeKeyType::SSH

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeKeyType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `SSH`      | SSH        |
| `REGISTRY` | REGISTRY   |
| `SECRET`   | SECRET     |
| `OTHER`    | OTHER      |