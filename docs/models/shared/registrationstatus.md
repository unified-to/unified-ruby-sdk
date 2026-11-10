# RegistrationStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = RegistrationStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = RegistrationStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PENDING`   | PENDING     |
| `APPROVED`  | APPROVED    |
| `REJECTED`  | REJECTED    |
| `CANCELLED` | CANCELLED   |