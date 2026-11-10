# PlmChangeStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PlmChangeStatus::OPEN

# Open enum: use .deserialize() to create instances from custom string values
custom = PlmChangeStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `OPEN`        | OPEN          |
| `IN_REVIEW`   | IN_REVIEW     |
| `APPROVED`    | APPROVED      |
| `IMPLEMENTED` | IMPLEMENTED   |
| `REJECTED`    | REJECTED      |
| `CANCELLED`   | CANCELLED     |