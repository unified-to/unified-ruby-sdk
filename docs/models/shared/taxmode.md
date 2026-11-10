# TaxMode

INCLUSIVE / EXCLUSIVE / NONE; maps Xero LineAmountTypes (a boolean cannot represent NoTax)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = TaxMode::INCLUSIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = TaxMode.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `INCLUSIVE` | INCLUSIVE   |
| `EXCLUSIVE` | EXCLUSIVE   |
| `NONE`      | NONE        |