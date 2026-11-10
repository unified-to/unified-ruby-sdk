# HrisTimeoffStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HrisTimeoffStatus::APPROVED

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisTimeoffStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `APPROVED`  | APPROVED    |
| `PENDING`   | PENDING     |
| `DENIED`    | DENIED      |
| `CANCELLED` | CANCELLED   |