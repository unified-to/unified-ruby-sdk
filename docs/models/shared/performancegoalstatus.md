# PerformanceGoalStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PerformanceGoalStatus::NOT_STARTED

# Open enum: use .deserialize() to create instances from custom string values
custom = PerformanceGoalStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `NOT_STARTED` | NOT_STARTED   |
| `IN_PROGRESS` | IN_PROGRESS   |
| `COMPLETED`   | COMPLETED     |
| `CLOSED`      | CLOSED        |
| `OTHER`       | OTHER         |