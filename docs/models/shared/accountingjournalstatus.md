# AccountingJournalStatus

Posting state of the journal entry

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingJournalStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingJournalStatus.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `DRAFT`  | DRAFT    |
| `POSTED` | POSTED   |
| `VOID`   | VOID     |
| `OTHER`  | OTHER    |