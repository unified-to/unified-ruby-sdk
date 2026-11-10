# AccountingTaxrateType

Whether the rate applies to sales, purchases, or both

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingTaxrateType::SALES

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingTaxrateType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `SALES`    | SALES      |
| `PURCHASE` | PURCHASE   |
| `BOTH`     | BOTH       |
| `OTHER`    | OTHER      |