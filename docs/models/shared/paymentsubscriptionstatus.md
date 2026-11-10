# PaymentSubscriptionStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PaymentSubscriptionStatus::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentSubscriptionStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `ACTIVE`   | ACTIVE     |
| `INACTIVE` | INACTIVE   |
| `CANCELED` | CANCELED   |
| `PAUSED`   | PAUSED     |