# UcCallStatus

The current or final status of the call

## Example Usage

```ruby
require "unified_ruby_sdk"

value = UcCallStatus::QUEUED

# Open enum: use .deserialize() to create instances from custom string values
custom = UcCallStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `QUEUED`      | QUEUED        |
| `RINGING`     | RINGING       |
| `IN_PROGRESS` | IN_PROGRESS   |
| `COMPLETED`   | COMPLETED     |
| `BUSY`        | BUSY          |
| `NO_ANSWER`   | NO_ANSWER     |
| `FAILED`      | FAILED        |
| `CANCELED`    | CANCELED      |
| `OTHER`       | OTHER         |