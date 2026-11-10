# AtsStatusStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AtsStatusStatus::NEW

# Open enum: use .deserialize() to create instances from custom string values
custom = AtsStatusStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `NEW`              | NEW                |
| `REVIEWING`        | REVIEWING          |
| `SCREENING`        | SCREENING          |
| `SUBMITTED`        | SUBMITTED          |
| `FIRST_INTERVIEW`  | FIRST_INTERVIEW    |
| `SECOND_INTERVIEW` | SECOND_INTERVIEW   |
| `THIRD_INTERVIEW`  | THIRD_INTERVIEW    |
| `BACKGROUND_CHECK` | BACKGROUND_CHECK   |
| `OFFERED`          | OFFERED            |
| `ACCEPTED`         | ACCEPTED           |
| `HIRED`            | HIRED              |
| `REJECTED`         | REJECTED           |
| `DECLINED`         | DECLINED           |
| `WITHDRAWN`        | WITHDRAWN          |