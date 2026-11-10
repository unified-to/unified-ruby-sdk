# PerformanceCycleStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PerformanceCycleStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = PerformanceCycleStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `DRAFT`     | DRAFT       |
| `SCHEDULED` | SCHEDULED   |
| `ACTIVE`    | ACTIVE      |
| `CLOSED`    | CLOSED      |
| `OTHER`     | OTHER       |