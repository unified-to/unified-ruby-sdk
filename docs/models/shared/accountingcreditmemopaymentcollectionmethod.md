# AccountingCreditmemoPaymentCollectionMethod

When set to charging_automatically, an automated attempt will occur to pay this invoice using the default payment source attached to the contactcustomer. When set to send_invoice, an will email will be sent with this invoice to the contact/customer with payment instructions.

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingCreditmemoPaymentCollectionMethod::SEND_INVOICE

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingCreditmemoPaymentCollectionMethod.deserialize("custom_value")
```


## Values

| Name                   | Value                  |
| ---------------------- | ---------------------- |
| `SEND_INVOICE`         | send_invoice           |
| `CHARGE_AUTOMATICALLY` | charge_automatically   |