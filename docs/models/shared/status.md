# Status

Account status, such as ACTIVE or ARCHIVED

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Status::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = Status.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `ACTIVE`   | ACTIVE     |
| `ARCHIVED` | ARCHIVED   |