# AccountingSalesorderStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingSalesorderStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingSalesorderStatus.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `DRAFT`              | DRAFT                |
| `VOIDED`             | VOIDED               |
| `AUTHORIZED`         | AUTHORIZED           |
| `PAID`               | PAID                 |
| `PARTIALLY_PAID`     | PARTIALLY_PAID       |
| `PARTIALLY_REFUNDED` | PARTIALLY_REFUNDED   |
| `REFUNDED`           | REFUNDED             |
| `SUBMITTED`          | SUBMITTED            |
| `DELETED`            | DELETED              |
| `OPEN`               | OPEN                 |
| `COMPLETED`          | COMPLETED            |
| `CANCELED`           | CANCELED             |