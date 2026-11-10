# UcCallInstructionType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = UcCallInstructionType::SAY

# Open enum: use .deserialize() to create instances from custom string values
custom = UcCallInstructionType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `SAY`    | SAY      |
| `PLAY`   | PLAY     |
| `PAUSE`  | PAUSE    |
| `DIAL`   | DIAL     |
| `HANGUP` | HANGUP   |