# OnExpire

What happens when the instance expires

## Example Usage

```ruby
require "unified_ruby_sdk"

value = OnExpire::TERMINATE

# Open enum: use .deserialize() to create instances from custom string values
custom = OnExpire.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `TERMINATE` | TERMINATE   |
| `PAUSE`     | PAUSE       |
| `STOP`      | STOP        |
| `OTHER`     | OTHER       |