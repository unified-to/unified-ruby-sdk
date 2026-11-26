# DmsPartsaleStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = DmsPartsaleStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = DmsPartsaleStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `DRAFT`    | DRAFT      |
| `OPEN`     | OPEN       |
| `INVOICED` | INVOICED   |
| `SHIPPED`  | SHIPPED    |
| `CLOSED`   | CLOSED     |
| `VOIDED`   | VOIDED     |
| `OTHER`    | OTHER      |