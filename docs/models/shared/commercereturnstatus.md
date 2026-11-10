# CommerceReturnStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CommerceReturnStatus::REQUESTED

# Open enum: use .deserialize() to create instances from custom string values
custom = CommerceReturnStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `REQUESTED` | REQUESTED   |
| `OPEN`      | OPEN        |
| `APPROVED`  | APPROVED    |
| `REJECTED`  | REJECTED    |
| `CLOSED`    | CLOSED      |
| `CANCELLED` | CANCELLED   |
| `OTHER`     | OTHER       |