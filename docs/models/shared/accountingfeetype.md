# AccountingFeeType

Unified fee category

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingFeeType::TAX

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingFeeType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `TAX`            | TAX              |
| `DISCOUNT`       | DISCOUNT         |
| `PROMOTION`      | PROMOTION        |
| `SHIPPING`       | SHIPPING         |
| `GIFT_WRAP`      | GIFT_WRAP        |
| `COD`            | COD              |
| `SURCHARGE`      | SURCHARGE        |
| `TIP`            | TIP              |
| `SERVICE_CHARGE` | SERVICE_CHARGE   |
| `OTHER`          | OTHER            |