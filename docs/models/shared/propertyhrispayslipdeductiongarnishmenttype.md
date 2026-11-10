# PropertyHrisPayslipDeductionGarnishmentType

set when this deduction is a court-ordered garnishment

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PropertyHrisPayslipDeductionGarnishmentType::CHILD_SUPPORT

# Open enum: use .deserialize() to create instances from custom string values
custom = PropertyHrisPayslipDeductionGarnishmentType.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `CHILD_SUPPORT` | CHILD_SUPPORT   |
| `TAX_LEVY`      | TAX_LEVY        |
| `STUDENT_LOAN`  | STUDENT_LOAN    |
| `CREDITOR`      | CREDITOR        |
| `BANKRUPTCY`    | BANKRUPTCY      |
| `OTHER`         | OTHER           |