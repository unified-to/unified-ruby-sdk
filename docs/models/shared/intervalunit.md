# IntervalUnit

## Example Usage

```ruby
require "unified_ruby_sdk"

value = IntervalUnit::YEAR

# Open enum: use .deserialize() to create instances from custom string values
custom = IntervalUnit.deserialize("custom_value")
```


## Values

| Name    | Value   |
| ------- | ------- |
| `YEAR`  | YEAR    |
| `MONTH` | MONTH   |
| `WEEK`  | WEEK    |
| `DAY`   | DAY     |