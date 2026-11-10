# AssessmentOrderStatus

The current state of the assessment order

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AssessmentOrderStatus::OPEN

# Open enum: use .deserialize() to create instances from custom string values
custom = AssessmentOrderStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `OPEN`        | OPEN          |
| `IN_PROGRESS` | IN_PROGRESS   |
| `COMPLETED`   | COMPLETED     |
| `FAILED`      | FAILED        |
| `REJECTED`    | REJECTED      |