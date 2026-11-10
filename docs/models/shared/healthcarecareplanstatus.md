# HealthcareCareplanStatus

Status of the care plan

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareCareplanStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareCareplanStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `DRAFT`            | DRAFT              |
| `ACTIVE`           | ACTIVE             |
| `ON_HOLD`          | ON_HOLD            |
| `REVOKED`          | REVOKED            |
| `COMPLETED`        | COMPLETED          |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `UNKNOWN`          | UNKNOWN            |
| `OTHER`            | OTHER              |