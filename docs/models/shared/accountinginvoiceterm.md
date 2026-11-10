# AccountingInvoiceTerm

@deprecated use payment_terms instead

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingInvoiceTerm::ON_RECEIPT

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingInvoiceTerm.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `ON_RECEIPT` | ON_RECEIPT   |
| `NET_7`      | NET_7        |
| `NET_10`     | NET_10       |
| `NET_15`     | NET_15       |
| `NET_20`     | NET_20       |
| `NET_25`     | NET_25       |
| `NET_30`     | NET_30       |
| `NET_45`     | NET_45       |
| `NET_60`     | NET_60       |
| `NET_90`     | NET_90       |
| `OTHER`      | OTHER        |