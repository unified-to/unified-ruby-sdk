# PerformanceFeedbackType

praise/recognition, constructive feedback, or a response to a feedback request

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PerformanceFeedbackType::PRAISE

# Open enum: use .deserialize() to create instances from custom string values
custom = PerformanceFeedbackType.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PRAISE`    | PRAISE      |
| `FEEDBACK`  | FEEDBACK    |
| `REQUESTED` | REQUESTED   |
| `OTHER`     | OTHER       |