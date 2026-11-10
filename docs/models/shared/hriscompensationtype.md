# HrisCompensationType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HrisCompensationType::SALARY

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisCompensationType.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `SALARY`        | SALARY          |
| `BONUS`         | BONUS           |
| `STOCK_OPTIONS` | STOCK_OPTIONS   |
| `EQUITY`        | EQUITY          |
| `OTHER`         | OTHER           |
| `HOURLY`        | HOURLY          |
| `COMMISSION`    | COMMISSION      |