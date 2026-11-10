# SigningSignatoryStatus

Current status of this signatory

## Example Usage

```ruby
require "unified_ruby_sdk"

value = SigningSignatoryStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = SigningSignatoryStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PENDING`   | PENDING     |
| `SENT`      | SENT        |
| `DELIVERED` | DELIVERED   |
| `SIGNED`    | SIGNED      |
| `DECLINED`  | DECLINED    |
| `ERROR`     | ERROR       |