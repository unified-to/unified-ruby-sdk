# TenderType

normalized tender category; the provider's original label stays in payment_method

## Example Usage

```ruby
require "unified_ruby_sdk"

value = TenderType::CARD

# Open enum: use .deserialize() to create instances from custom string values
custom = TenderType.deserialize("custom_value")
```


## Values

| Name                | Value               |
| ------------------- | ------------------- |
| `CARD`              | CARD                |
| `CASH`              | CASH                |
| `GIFT_CARD`         | GIFT_CARD           |
| `BANK_TRANSFER`     | BANK_TRANSFER       |
| `WALLET`            | WALLET              |
| `CHECK`             | CHECK               |
| `STORE_CREDIT`      | STORE_CREDIT        |
| `BUY_NOW_PAY_LATER` | BUY_NOW_PAY_LATER   |
| `EXTERNAL`          | EXTERNAL            |
| `OTHER`             | OTHER               |