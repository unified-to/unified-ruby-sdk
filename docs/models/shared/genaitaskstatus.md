# GenaiTaskStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = GenaiTaskStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = GenaiTaskStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PENDING`   | PENDING     |
| `RUNNING`   | RUNNING     |
| `BLOCKED`   | BLOCKED     |
| `COMPLETED` | COMPLETED   |
| `FAILED`    | FAILED      |
| `CANCELLED` | CANCELLED   |
| `EXPIRED`   | EXPIRED     |
| `OTHER`     | OTHER       |