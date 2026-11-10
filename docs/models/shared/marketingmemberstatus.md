# MarketingMemberStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = MarketingMemberStatus::SUBSCRIBED

# Open enum: use .deserialize() to create instances from custom string values
custom = MarketingMemberStatus.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `SUBSCRIBED`    | SUBSCRIBED      |
| `UNSUBSCRIBED`  | UNSUBSCRIBED    |
| `CLEANED`       | CLEANED         |
| `PENDING`       | PENDING         |
| `TRANSACTIONAL` | TRANSACTIONAL   |