# PaymentFrequency

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PaymentFrequency::MONTHLY

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentFrequency.deserialize("custom_value")
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `MONTHLY`      | MONTHLY        |
| `SEMI_MONTHLY` | SEMI_MONTHLY   |
| `BIWEEKLY`     | BIWEEKLY       |
| `WEEKLY`       | WEEKLY         |
| `YEARLY`       | YEARLY         |
| `OTHER`        | OTHER          |