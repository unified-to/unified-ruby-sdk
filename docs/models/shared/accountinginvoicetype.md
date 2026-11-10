# AccountingInvoiceType

BILL removed (use AccountingBill); remaining values: INVOICE, CREDITMEMO

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingInvoiceType::INVOICE

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingInvoiceType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `INVOICE`    | INVOICE      |
| `CREDITMEMO` | CREDITMEMO   |