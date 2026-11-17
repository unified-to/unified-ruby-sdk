# OverrideType

replaces the calculated withholding with a flat amount or percentage

## Example Usage

```ruby
require "unified_ruby_sdk"

value = OverrideType::NONE

# Open enum: use .deserialize() to create instances from custom string values
custom = OverrideType.deserialize("custom_value")
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `NONE`         | NONE           |
| `FIXED_AMOUNT` | FIXED_AMOUNT   |
| `PERCENT`      | PERCENT        |