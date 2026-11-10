# Level

Normalized stock level

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Level::NONE

# Open enum: use .deserialize() to create instances from custom string values
custom = Level.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `NONE`   | NONE     |
| `LOW`    | LOW      |
| `MEDIUM` | MEDIUM   |
| `HIGH`   | HIGH     |
| `OTHER`  | OTHER    |