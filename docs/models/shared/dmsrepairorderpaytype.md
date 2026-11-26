# DmsRepairorderPayType

Primary pay type of the repair order

## Example Usage

```ruby
require "unified_ruby_sdk"

value = DmsRepairorderPayType::CUSTOMER

# Open enum: use .deserialize() to create instances from custom string values
custom = DmsRepairorderPayType.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `CUSTOMER`         | CUSTOMER           |
| `WARRANTY`         | WARRANTY           |
| `INTERNAL`         | INTERNAL           |
| `SERVICE_CONTRACT` | SERVICE_CONTRACT   |
| `OTHER`            | OTHER              |