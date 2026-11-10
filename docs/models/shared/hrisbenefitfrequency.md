# HrisBenefitFrequency

Frequency that costs accrue for this benefit. For insurance/benefits, usually "MONTHLY". For compensation, matches pay cycle (WEEKLY, BIWEEKLY, etc).

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HrisBenefitFrequency::ONE_TIME

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisBenefitFrequency.deserialize("custom_value")
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