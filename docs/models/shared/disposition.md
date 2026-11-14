# Disposition

What to do with the nonconforming material

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Disposition::USE_AS_IS

# Open enum: use .deserialize() to create instances from custom string values
custom = Disposition.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `USE_AS_IS`        | USE_AS_IS          |
| `REWORK`           | REWORK             |
| `REPAIR`           | REPAIR             |
| `SCRAP`            | SCRAP              |
| `RETURN_TO_VENDOR` | RETURN_TO_VENDOR   |
| `OTHER`            | OTHER              |