# OnIdle

What happens when the instance is idle

## Example Usage

```ruby
require "unified_ruby_sdk"

value = OnIdle::TERMINATE

# Open enum: use .deserialize() to create instances from custom string values
custom = OnIdle.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `TERMINATE` | TERMINATE   |
| `PAUSE`     | PAUSE       |
| `STOP`      | STOP        |
| `OTHER`     | OTHER       |