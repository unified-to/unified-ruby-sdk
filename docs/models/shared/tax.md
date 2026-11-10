# Tax

Tax describes the tax treatment of the benefit

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Tax::PRE_TAX

# Open enum: use .deserialize() to create instances from custom string values
custom = Tax.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `PRE_TAX`     | PRE_TAX       |
| `POST_TAX`    | POST_TAX      |
| `TAXABLE`     | TAXABLE       |
| `NON_TAXABLE` | NON_TAXABLE   |
| `TAX`         | TAX           |