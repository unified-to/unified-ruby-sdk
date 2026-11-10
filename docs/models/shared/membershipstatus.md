# MembershipStatus

The authenticated user's membership status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = MembershipStatus::MEMBER

# Open enum: use .deserialize() to create instances from custom string values
custom = MembershipStatus.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `MEMBER`  | MEMBER    |
| `PENDING` | PENDING   |
| `NONE`    | NONE      |