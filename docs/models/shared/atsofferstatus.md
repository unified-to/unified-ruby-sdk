# AtsOfferStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AtsOfferStatus::CREATED

# Open enum: use .deserialize() to create instances from custom string values
custom = AtsOfferStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `CREATED`  | CREATED    |
| `SENT`     | SENT       |
| `ACCEPTED` | ACCEPTED   |
| `REJECTED` | REJECTED   |