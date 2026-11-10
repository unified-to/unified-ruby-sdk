# Interpretation

Interpretation of the result (e.g. high, low)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Interpretation::NORMAL

# Open enum: use .deserialize() to create instances from custom string values
custom = Interpretation.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `NORMAL`        | NORMAL          |
| `ABNORMAL`      | ABNORMAL        |
| `LOW`           | LOW             |
| `HIGH`          | HIGH            |
| `CRITICAL_LOW`  | CRITICAL_LOW    |
| `CRITICAL_HIGH` | CRITICAL_HIGH   |
| `OTHER`         | OTHER           |