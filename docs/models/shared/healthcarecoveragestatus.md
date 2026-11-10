# HealthcareCoverageStatus

Status of the coverage

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareCoverageStatus::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareCoverageStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `ACTIVE`           | ACTIVE             |
| `CANCELLED`        | CANCELLED          |
| `DRAFT`            | DRAFT              |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `OTHER`            | OTHER              |