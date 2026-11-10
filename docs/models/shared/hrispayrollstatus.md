# HrisPayrollStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HrisPayrollStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisPayrollStatus.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `DRAFT`      | DRAFT        |
| `PENDING`    | PENDING      |
| `APPROVED`   | APPROVED     |
| `PROCESSING` | PROCESSING   |
| `PAID`       | PAID         |
| `FAILED`     | FAILED       |
| `CANCELLED`  | CANCELLED    |