# QmsInspectionStatus

Normalized status of a quality record

## Example Usage

```ruby
require "unified_ruby_sdk"

value = QmsInspectionStatus::OPEN

# Open enum: use .deserialize() to create instances from custom string values
custom = QmsInspectionStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `OPEN`        | OPEN          |
| `IN_PROGRESS` | IN_PROGRESS   |
| `IN_REVIEW`   | IN_REVIEW     |
| `CLOSED`      | CLOSED        |
| `CANCELLED`   | CANCELLED     |