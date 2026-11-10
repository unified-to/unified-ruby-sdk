# AtsJobStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AtsJobStatus::ARCHIVED

# Open enum: use .deserialize() to create instances from custom string values
custom = AtsJobStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `ARCHIVED` | ARCHIVED   |
| `PENDING`  | PENDING    |
| `DRAFT`    | DRAFT      |
| `OPEN`     | OPEN       |
| `CLOSED`   | CLOSED     |