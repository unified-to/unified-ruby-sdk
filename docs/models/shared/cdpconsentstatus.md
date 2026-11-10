# CdpConsentStatus

The consent status for this purpose

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CdpConsentStatus::GRANTED

# Open enum: use .deserialize() to create instances from custom string values
custom = CdpConsentStatus.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `GRANTED` | GRANTED   |
| `DENIED`  | DENIED    |
| `PENDING` | PENDING   |