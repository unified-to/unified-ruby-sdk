# AssessmentAttributeStatus

For SUB_RESULT type

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AssessmentAttributeStatus::OPEN

# Open enum: use .deserialize() to create instances from custom string values
custom = AssessmentAttributeStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `OPEN`        | OPEN          |
| `IN_PROGRESS` | IN_PROGRESS   |
| `COMPLETED`   | COMPLETED     |
| `FAILED`      | FAILED        |
| `REJECTED`    | REJECTED      |