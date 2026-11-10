# HealthcareDocumentStatus

Status of the document

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareDocumentStatus::CURRENT

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareDocumentStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `CURRENT`          | CURRENT            |
| `SUPERSEDED`       | SUPERSEDED         |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `OTHER`            | OTHER              |