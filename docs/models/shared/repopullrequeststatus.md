# RepoPullrequestStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = RepoPullrequestStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = RepoPullrequestStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `PENDING`  | PENDING    |
| `APPROVED` | APPROVED   |
| `REJECTED` | REJECTED   |