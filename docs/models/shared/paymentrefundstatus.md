# PaymentRefundStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PaymentRefundStatus::SUCCEEDED

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentRefundStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `SUCCEEDED` | SUCCEEDED   |
| `PENDING`   | PENDING     |
| `FAILED`    | FAILED      |
| `CANCELED`  | CANCELED    |