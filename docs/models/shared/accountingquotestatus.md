# AccountingQuoteStatus

where EXPIRED is derived (expires_at < now), the source status is preserved in raw

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingQuoteStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingQuoteStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `DRAFT`    | DRAFT      |
| `SENT`     | SENT       |
| `ACCEPTED` | ACCEPTED   |
| `DECLINED` | DECLINED   |
| `INVOICED` | INVOICED   |
| `EXPIRED`  | EXPIRED    |
| `VOIDED`   | VOIDED     |
| `DELETED`  | DELETED    |