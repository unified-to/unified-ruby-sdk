# CdpSegmentType

The type of entity the segment targets (USERS, ACCOUNTS, LINKED)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CdpSegmentType::USERS

# Open enum: use .deserialize() to create instances from custom string values
custom = CdpSegmentType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `USERS`    | USERS      |
| `ACCOUNTS` | ACCOUNTS   |
| `LINKED`   | LINKED     |