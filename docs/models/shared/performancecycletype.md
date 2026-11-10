# PerformanceCycleType

whether this is a review cycle or a goal cycle/timeframe

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PerformanceCycleType::REVIEW

# Open enum: use .deserialize() to create instances from custom string values
custom = PerformanceCycleType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `REVIEW` | REVIEW   |
| `GOAL`   | GOAL     |
| `OTHER`  | OTHER    |