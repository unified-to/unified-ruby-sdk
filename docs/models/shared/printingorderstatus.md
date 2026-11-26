# PrintingOrderStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PrintingOrderStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = PrintingOrderStatus.deserialize("custom_value")
```


## Values

| Name                | Value               |
| ------------------- | ------------------- |
| `DRAFT`             | DRAFT               |
| `PENDING`           | PENDING             |
| `ON_HOLD`           | ON_HOLD             |
| `IN_PRODUCTION`     | IN_PRODUCTION       |
| `PARTIALLY_SHIPPED` | PARTIALLY_SHIPPED   |
| `SHIPPED`           | SHIPPED             |
| `DELIVERED`         | DELIVERED           |
| `CANCELLED`         | CANCELLED           |
| `FAILED`            | FAILED              |
| `OTHER`             | OTHER               |