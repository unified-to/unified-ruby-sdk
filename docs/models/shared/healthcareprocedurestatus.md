# HealthcareProcedureStatus

Status of the procedure

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareProcedureStatus::PREPARATION

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareProcedureStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `PREPARATION`      | PREPARATION        |
| `IN_PROGRESS`      | IN_PROGRESS        |
| `NOT_DONE`         | NOT_DONE           |
| `ON_HOLD`          | ON_HOLD            |
| `STOPPED`          | STOPPED            |
| `COMPLETED`        | COMPLETED          |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `UNKNOWN`          | UNKNOWN            |
| `OTHER`            | OTHER              |