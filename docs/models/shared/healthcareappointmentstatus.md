# HealthcareAppointmentStatus

Status of the appointment

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareAppointmentStatus::PROPOSED

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareAppointmentStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `PROPOSED`         | PROPOSED           |
| `PENDING`          | PENDING            |
| `BOOKED`           | BOOKED             |
| `ARRIVED`          | ARRIVED            |
| `CHECKED_IN`       | CHECKED_IN         |
| `FULFILLED`        | FULFILLED          |
| `CANCELLED`        | CANCELLED          |
| `NOSHOW`           | NOSHOW             |
| `WAITLIST`         | WAITLIST           |
| `ENTERED_IN_ERROR` | ENTERED_IN_ERROR   |
| `OTHER`            | OTHER              |