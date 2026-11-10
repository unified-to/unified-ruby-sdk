# Gender

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Gender::MALE

# Open enum: use .deserialize() to create instances from custom string values
custom = Gender.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `MALE`       | MALE         |
| `FEMALE`     | FEMALE       |
| `INTERSEX`   | INTERSEX     |
| `TRANS`      | TRANS        |
| `NON_BINARY` | NON_BINARY   |