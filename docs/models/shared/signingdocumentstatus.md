# SigningDocumentStatus

Current status of the signing document

## Example Usage

```ruby
require "unified_ruby_sdk"

value = SigningDocumentStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = SigningDocumentStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `DRAFT`       | DRAFT         |
| `SENT`        | SENT          |
| `DELIVERED`   | DELIVERED     |
| `IN_PROGRESS` | IN_PROGRESS   |
| `COMPLETED`   | COMPLETED     |
| `DECLINED`    | DECLINED      |
| `VOIDED`      | VOIDED        |
| `EXPIRED`     | EXPIRED       |