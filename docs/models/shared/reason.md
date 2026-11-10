# Reason

Why the refund was issued

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Reason::DUPLICATE

# Open enum: use .deserialize() to create instances from custom string values
custom = Reason.deserialize("custom_value")
```


## Values

| Name                    | Value                   |
| ----------------------- | ----------------------- |
| `DUPLICATE`             | DUPLICATE               |
| `FRAUDULENT`            | FRAUDULENT              |
| `REQUESTED_BY_CUSTOMER` | REQUESTED_BY_CUSTOMER   |
| `OTHER`                 | OTHER                   |