# SigningSignatoryRole

Role of the signatory

## Example Usage

```ruby
require "unified_ruby_sdk"

value = SigningSignatoryRole::SIGNER

# Open enum: use .deserialize() to create instances from custom string values
custom = SigningSignatoryRole.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `SIGNER`           | SIGNER             |
| `CC`               | CC                 |
| `APPROVER`         | APPROVER           |
| `IN_PERSON_SIGNER` | IN_PERSON_SIGNER   |
| `VIEWER`           | VIEWER             |