# AccountingExpenseStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingExpenseStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingExpenseStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `DRAFT`     | DRAFT       |
| `SUBMITTED` | SUBMITTED   |
| `PENDING`   | PENDING     |
| `APPROVED`  | APPROVED    |
| `REJECTED`  | REJECTED    |
| `PAID`      | PAID        |