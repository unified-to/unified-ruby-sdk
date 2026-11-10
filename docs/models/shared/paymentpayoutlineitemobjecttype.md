# PaymentPayoutLineitemObjectType

What this payout line settles

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PaymentPayoutLineitemObjectType::PAYMENT

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentPayoutLineitemObjectType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `PAYMENT`    | PAYMENT      |
| `REFUND`     | REFUND       |
| `FEE`        | FEE          |
| `ADJUSTMENT` | ADJUSTMENT   |
| `TRANSFER`   | TRANSFER     |
| `OTHER`      | OTHER        |