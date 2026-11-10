# HrisDeductionFrequency

Frequency for this deduction (should always be set, matches IHrisBenefit.frequency)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HrisDeductionFrequency::ONE_TIME

# Open enum: use .deserialize() to create instances from custom string values
custom = HrisDeductionFrequency.deserialize("custom_value")
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