# VerificationParameterType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = VerificationParameterType::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = VerificationParameterType.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `TEXT`            | TEXT              |
| `NUMBER`          | NUMBER            |
| `MULTIPLE_CHOICE` | MULTIPLE_CHOICE   |
| `MULTIPLE_SELECT` | MULTIPLE_SELECT   |
| `DATE`            | DATE              |
| `FILE`            | FILE              |