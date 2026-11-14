# Severity

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Severity::LOW

# Open enum: use .deserialize() to create instances from custom string values
custom = Severity.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `LOW`      | LOW        |
| `MEDIUM`   | MEDIUM     |
| `HIGH`     | HIGH       |
| `CRITICAL` | CRITICAL   |