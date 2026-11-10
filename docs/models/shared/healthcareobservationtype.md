# HealthcareObservationType

Category of the observation

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareObservationType::LABORATORY

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareObservationType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `LABORATORY`     | LABORATORY       |
| `VITAL_SIGNS`    | VITAL_SIGNS      |
| `SOCIAL_HISTORY` | SOCIAL_HISTORY   |
| `IMAGING`        | IMAGING          |
| `SURVEY`         | SURVEY           |
| `EXAM`           | EXAM             |
| `PROCEDURE`      | PROCEDURE        |
| `THERAPY`        | THERAPY          |
| `ACTIVITY`       | ACTIVITY         |
| `OTHER`          | OTHER            |