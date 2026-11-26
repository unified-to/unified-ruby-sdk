# DmsRepairorderJobStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = DmsRepairorderJobStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = DmsRepairorderJobStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `PENDING`     | PENDING       |
| `IN_PROGRESS` | IN_PROGRESS   |
| `ON_HOLD`     | ON_HOLD       |
| `COMPLETED`   | COMPLETED     |
| `DECLINED`    | DECLINED      |
| `CANCELLED`   | CANCELLED     |
| `OTHER`       | OTHER         |