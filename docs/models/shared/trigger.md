# Trigger

What started the deployment

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Trigger::GIT

# Open enum: use .deserialize() to create instances from custom string values
custom = Trigger.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `GIT`      | GIT        |
| `MANUAL`   | MANUAL     |
| `API`      | API        |
| `ROLLBACK` | ROLLBACK   |
| `OTHER`    | OTHER      |