# PerformanceReviewQuestionType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PerformanceReviewQuestionType::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = PerformanceReviewQuestionType.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `TEXT`          | TEXT            |
| `SINGLE_SELECT` | SINGLE_SELECT   |
| `MULTI_SELECT`  | MULTI_SELECT    |
| `RATING`        | RATING          |
| `OTHER`         | OTHER           |