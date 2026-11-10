# Source

Whether a part is made in-house or bought

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Source::MAKE

# Open enum: use .deserialize() to create instances from custom string values
custom = Source.deserialize("custom_value")
```


## Values

| Name    | Value   |
| ------- | ------- |
| `MAKE`  | MAKE    |
| `BUY`   | BUY     |
| `OTHER` | OTHER   |