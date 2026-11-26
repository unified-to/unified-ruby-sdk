# FinanceType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FinanceType::CASH

# Open enum: use .deserialize() to create instances from custom string values
custom = FinanceType.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `CASH`    | CASH      |
| `FINANCE` | FINANCE   |
| `LEASE`   | LEASE     |
| `BALLOON` | BALLOON   |
| `OTHER`   | OTHER     |