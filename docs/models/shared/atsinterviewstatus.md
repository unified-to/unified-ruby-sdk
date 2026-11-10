# AtsInterviewStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AtsInterviewStatus::SCHEDULED

# Open enum: use .deserialize() to create instances from custom string values
custom = AtsInterviewStatus.deserialize("custom_value")
```


## Values

| Name                | Value               |
| ------------------- | ------------------- |
| `SCHEDULED`         | SCHEDULED           |
| `AWAITING_FEEDBACK` | AWAITING_FEEDBACK   |
| `COMPLETE`          | COMPLETE            |
| `CANCELED`          | CANCELED            |
| `NEEDS_SCHEDULING`  | NEEDS_SCHEDULING    |