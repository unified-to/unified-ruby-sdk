# BillingType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = BillingType::FIXED_PRICE

# Open enum: use .deserialize() to create instances from custom string values
custom = BillingType.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `FIXED_PRICE`        | FIXED_PRICE          |
| `TIME_AND_MATERIALS` | TIME_AND_MATERIALS   |
| `MILESTONE`          | MILESTONE            |
| `NON_BILLABLE`       | NON_BILLABLE         |