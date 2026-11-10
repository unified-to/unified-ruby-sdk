# PlmDocumentStatus

Normalized lifecycle status of a part or document revision

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PlmDocumentStatus::IN_WORK

# Open enum: use .deserialize() to create instances from custom string values
custom = PlmDocumentStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `IN_WORK`   | IN_WORK     |
| `IN_REVIEW` | IN_REVIEW   |
| `RELEASED`  | RELEASED    |
| `OBSOLETE`  | OBSOLETE    |
| `OTHER`     | OTHER       |