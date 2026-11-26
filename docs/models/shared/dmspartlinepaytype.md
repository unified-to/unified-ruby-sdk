# DmsPartlinePayType

Who pays for this line

## Example Usage

```ruby
require "unified_ruby_sdk"

value = DmsPartlinePayType::CUSTOMER

# Open enum: use .deserialize() to create instances from custom string values
custom = DmsPartlinePayType.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `CUSTOMER`         | CUSTOMER           |
| `WARRANTY`         | WARRANTY           |
| `INTERNAL`         | INTERNAL           |
| `SERVICE_CONTRACT` | SERVICE_CONTRACT   |
| `OTHER`            | OTHER              |