# PaymentPaymentStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PaymentPaymentStatus::SUCCEEDED

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentPaymentStatus.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `SUCCEEDED`  | SUCCEEDED    |
| `PENDING`    | PENDING      |
| `AUTHORIZED` | AUTHORIZED   |
| `FAILED`     | FAILED       |
| `CANCELED`   | CANCELED     |