# SenderType

whether the guest, host or system sent the message

## Example Usage

```ruby
require "unified_ruby_sdk"

value = SenderType::GUEST

# Open enum: use .deserialize() to create instances from custom string values
custom = SenderType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `GUEST`  | GUEST    |
| `HOST`   | HOST     |
| `SYSTEM` | SYSTEM   |