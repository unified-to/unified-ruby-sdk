# ResponseStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ResponseStatus::OPEN

# Open enum: use .deserialize() to create instances from custom string values
custom = ResponseStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `OPEN`        | OPEN          |
| `IN_PROGRESS` | IN_PROGRESS   |
| `COMPLETED`   | COMPLETED     |
| `FAILED`      | FAILED        |
| `REJECTED`    | REJECTED      |