# DeliveryType

Ad server line item type / delivery class (Google Ad Manager lineItemType)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = DeliveryType::STANDARD

# Open enum: use .deserialize() to create instances from custom string values
custom = DeliveryType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `STANDARD`       | STANDARD         |
| `SPONSORSHIP`    | SPONSORSHIP      |
| `NETWORK`        | NETWORK          |
| `BULK`           | BULK             |
| `PRICE_PRIORITY` | PRICE_PRIORITY   |
| `HOUSE`          | HOUSE            |
| `PREFERRED_DEAL` | PREFERRED_DEAL   |
| `AD_EXCHANGE`    | AD_EXCHANGE      |
| `CLICK_TRACKING` | CLICK_TRACKING   |
| `OTHER`          | OTHER            |