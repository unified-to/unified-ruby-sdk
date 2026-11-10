# PaymentAllocationObjectType

The type of object this payment was applied to

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PaymentAllocationObjectType::INVOICE

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentAllocationObjectType.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `INVOICE`       | INVOICE         |
| `BILL`          | BILL            |
| `CREDITMEMO`    | CREDITMEMO      |
| `VENDORCREDIT`  | VENDORCREDIT    |
| `SALESORDER`    | SALESORDER      |
| `PURCHASEORDER` | PURCHASEORDER   |