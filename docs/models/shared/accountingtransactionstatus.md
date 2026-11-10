# AccountingTransactionStatus

Posting state of the transaction

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingTransactionStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingTransactionStatus.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `PENDING` | PENDING   |
| `POSTED`  | POSTED    |
| `VOID`    | VOID      |
| `OTHER`   | OTHER     |