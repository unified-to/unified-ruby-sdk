# BillingMethod

how the matter is billed

## Example Usage

```ruby
require "unified_ruby_sdk"

value = BillingMethod::HOURLY

# Open enum: use .deserialize() to create instances from custom string values
custom = BillingMethod.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `HOURLY`      | HOURLY        |
| `FLAT_FEE`    | FLAT_FEE      |
| `CONTINGENCY` | CONTINGENCY   |
| `OTHER`       | OTHER         |