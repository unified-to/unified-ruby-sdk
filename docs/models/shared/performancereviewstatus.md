# PerformanceReviewStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PerformanceReviewStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = PerformanceReviewStatus.deserialize("custom_value")
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `DRAFT`        | DRAFT          |
| `IN_PROGRESS`  | IN_PROGRESS    |
| `SUBMITTED`    | SUBMITTED      |
| `COMPLETED`    | COMPLETED      |
| `SHARED`       | SHARED         |
| `ACKNOWLEDGED` | ACKNOWLEDGED   |
| `OTHER`        | OTHER          |