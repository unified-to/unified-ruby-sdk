# HrisEarningFrequency

ONE_TIME for a single addition to the next unprocessed pay run, otherwise recurring

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HrisEarningFrequency::ONE_TIME

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisEarningFrequency.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `ONE_TIME`    | ONE_TIME      |
| `DAY`         | DAY           |
| `QUARTER`     | QUARTER       |
| `YEAR`        | YEAR          |
| `HOUR`        | HOUR          |
| `MONTH`       | MONTH         |
| `WEEK`        | WEEK          |
| `BIWEEKLY`    | BIWEEKLY      |
| `SEMIMONTHLY` | SEMIMONTHLY   |