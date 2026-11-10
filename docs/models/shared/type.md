# Type

Account type, such as BANK. EQUITY, ASSET, ...

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Type::ACCOUNTS_PAYABLE

# Open enum: use .deserialize() to create instances from custom string values
custom = Type.deserialize("custom_value")
```


## Values

| Name                  | Value                 |
| --------------------- | --------------------- |
| `ACCOUNTS_PAYABLE`    | ACCOUNTS_PAYABLE      |
| `ACCOUNTS_RECEIVABLE` | ACCOUNTS_RECEIVABLE   |
| `BANK`                | BANK                  |
| `CREDIT_CARD`         | CREDIT_CARD           |
| `FIXED_ASSET`         | FIXED_ASSET           |
| `LIABILITY`           | LIABILITY             |
| `EQUITY`              | EQUITY                |
| `EXPENSE`             | EXPENSE               |
| `REVENUE`             | REVENUE               |
| `OTHER`               | OTHER                 |