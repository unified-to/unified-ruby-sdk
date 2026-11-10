# Unit

Unit of quantity

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Unit::GPU_HOUR

# Open enum: use .deserialize() to create instances from custom string values
custom = Unit.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `GPU_HOUR`    | GPU_HOUR      |
| `VCPU_SECOND` | VCPU_SECOND   |
| `GB_SECOND`   | GB_SECOND     |
| `GB_MONTH`    | GB_MONTH      |
| `BYTE`        | BYTE          |
| `SECOND`      | SECOND        |
| `OTHER`       | OTHER         |