# PaymentType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PaymentType::DIRECT

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `DIRECT` | DIRECT   |
| `CHEQUE` | CHEQUE   |
| `CASH`   | CASH     |