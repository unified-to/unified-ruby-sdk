# AccountingProjectStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingProjectStatus::NOT_STARTED

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingProjectStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `NOT_STARTED` | NOT_STARTED   |
| `IN_PROGRESS` | IN_PROGRESS   |
| `ON_HOLD`     | ON_HOLD       |
| `COMPLETED`   | COMPLETED     |
| `CANCELLED`   | CANCELLED     |
| `CLOSED`      | CLOSED        |