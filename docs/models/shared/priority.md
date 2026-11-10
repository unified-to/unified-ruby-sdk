# Priority

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Priority::HIGH

# Open enum: use .deserialize() to create instances from custom string values
custom = Priority.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `HIGH`   | HIGH     |
| `MEDIUM` | MEDIUM   |
| `LOW`    | LOW      |