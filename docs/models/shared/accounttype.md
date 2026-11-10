# AccountType

CHECKING, SAVINGS, CREDIT_CARD, LOAN, OTHER

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountType::CHECKING

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountType.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `CHECKING`    | CHECKING      |
| `SAVINGS`     | SAVINGS       |
| `CREDIT_CARD` | CREDIT_CARD   |
| `LOAN`        | LOAN          |
| `OTHER`       | OTHER         |