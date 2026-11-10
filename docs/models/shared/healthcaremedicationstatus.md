# HealthcareMedicationStatus

Status of the medication order

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareMedicationStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareMedicationStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `DRAFT`            | DRAFT              |
| `ACTIVE`           | ACTIVE             |
| `ON_HOLD`          | ON_HOLD            |
| `COMPLETED`        | COMPLETED          |
| `STOPPED`          | STOPPED            |
| `CANCELLED`        | CANCELLED          |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `UNKNOWN`          | UNKNOWN            |
| `OTHER`            | OTHER              |