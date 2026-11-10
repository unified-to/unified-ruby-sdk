# CrmEventType

The type of event

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CrmEventType::NOTE

# Open enum: use .deserialize() to create instances from custom string values
custom = CrmEventType.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `NOTE`            | NOTE              |
| `EMAIL`           | EMAIL             |
| `TASK`            | TASK              |
| `MEETING`         | MEETING           |
| `CALL`            | CALL              |
| `MARKETING_EMAIL` | MARKETING_EMAIL   |
| `FORM`            | FORM              |
| `PAGE_VIEW`       | PAGE_VIEW         |