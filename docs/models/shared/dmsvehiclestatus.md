# DmsVehicleStatus

Stock status; only set for inventory units

## Example Usage

```ruby
require "unified_ruby_sdk"

value = DmsVehicleStatus::AVAILABLE

# Open enum: use .deserialize() to create instances from custom string values
custom = DmsVehicleStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `AVAILABLE`   | AVAILABLE     |
| `ON_ORDER`    | ON_ORDER      |
| `IN_TRANSIT`  | IN_TRANSIT    |
| `RESERVED`    | RESERVED      |
| `SOLD`        | SOLD          |
| `UNAVAILABLE` | UNAVAILABLE   |
| `OTHER`       | OTHER         |