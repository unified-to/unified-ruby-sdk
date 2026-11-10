# ComputeDomainStatus

DNS/ownership verification status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeDomainStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeDomainStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `PENDING`  | PENDING    |
| `VERIFIED` | VERIFIED   |
| `FAILED`   | FAILED     |
| `OTHER`    | OTHER      |