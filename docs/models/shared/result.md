# Result

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Result::PASS

# Open enum: use .deserialize() to create instances from custom string values
custom = Result.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `PASS`        | PASS          |
| `FAIL`        | FAIL          |
| `CONDITIONAL` | CONDITIONAL   |