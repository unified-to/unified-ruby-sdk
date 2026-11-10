# PropertyAvailabilityStatus

whether the period is available, booked or blocked

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PropertyAvailabilityStatus::AVAILABLE

# Open enum: use .deserialize() to create instances from custom string values
custom = PropertyAvailabilityStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `AVAILABLE`   | AVAILABLE     |
| `UNAVAILABLE` | UNAVAILABLE   |
| `BLOCKED`     | BLOCKED       |