# UcFaxType

Whether the fax was received (INBOUND) or sent (OUTBOUND)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = UcFaxType::INBOUND

# Open enum: use .deserialize() to create instances from custom string values
custom = UcFaxType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `INBOUND`  | INBOUND    |
| `OUTBOUND` | OUTBOUND   |