# AssessmentParameterType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AssessmentParameterType::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = AssessmentParameterType.deserialize("custom_value")
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