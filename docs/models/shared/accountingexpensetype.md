# AccountingExpenseType

USER = employee spend; COMPANY = books/purchase expense

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingExpenseType::USER

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingExpenseType.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `USER`    | USER      |
| `COMPANY` | COMPANY   |