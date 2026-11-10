# PaymentPayoutStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PaymentPayoutStatus::SUCCEEDED

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentPayoutStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `SUCCEEDED` | SUCCEEDED   |
| `PENDING`   | PENDING     |
| `FAILED`    | FAILED      |
| `CANCELED`  | CANCELED    |