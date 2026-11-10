# PropertyReservationStatus

the reservation status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PropertyReservationStatus::INQUIRY

# Open enum: use .deserialize() to create instances from custom string values
custom = PropertyReservationStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `INQUIRY`     | INQUIRY       |
| `PENDING`     | PENDING       |
| `CONFIRMED`   | CONFIRMED     |
| `CANCELLED`   | CANCELLED     |
| `CHECKED_IN`  | CHECKED_IN    |
| `CHECKED_OUT` | CHECKED_OUT   |
| `NO_SHOW`     | NO_SHOW       |
| `OTHER`       | OTHER         |