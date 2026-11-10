# SplitType

how net pay is split into this account when an employee has several accounts

## Example Usage

```ruby
require "unified_ruby_sdk"

value = SplitType::PERCENTAGE

# Open enum: use .deserialize() to create instances from custom string values
custom = SplitType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `PERCENTAGE` | PERCENTAGE   |
| `FIXED`      | FIXED        |
| `REMAINDER`  | REMAINDER    |