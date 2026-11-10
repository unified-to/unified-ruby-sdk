# ShippingTrackingEventStatus

Status at the time of this event

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ShippingTrackingEventStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = ShippingTrackingEventStatus.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `PENDING`            | PENDING              |
| `PROCESSING`         | PROCESSING           |
| `IN_TRANSIT`         | IN_TRANSIT           |
| `DELIVERED`          | DELIVERED            |
| `EXCEPTION`          | EXCEPTION            |
| `CANCELLED`          | CANCELLED            |
| `LABEL_CREATED`      | LABEL_CREATED        |
| `PICKED_UP`          | PICKED_UP            |
| `OUT_FOR_DELIVERY`   | OUT_FOR_DELIVERY     |
| `DELIVERY_ATTEMPTED` | DELIVERY_ATTEMPTED   |
| `RETURNED_TO_SENDER` | RETURNED_TO_SENDER   |
| `HELD_AT_LOCATION`   | HELD_AT_LOCATION     |
| `CUSTOMS_CLEARANCE`  | CUSTOMS_CLEARANCE    |
| `EXCEPTION_RESOLVED` | EXCEPTION_RESOLVED   |