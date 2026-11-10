# Period

The aggregation period of the value

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Period::DAY

# Open enum: use .deserialize() to create instances from custom string values
custom = Period.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `DAY`      | DAY        |
| `WEEK`     | WEEK       |
| `MONTH`    | MONTH      |
| `LIFETIME` | LIFETIME   |
| `TOTAL`    | TOTAL      |
| `OTHER`    | OTHER      |