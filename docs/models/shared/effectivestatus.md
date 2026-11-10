# EffectiveStatus

read-only; controlled by the provider (whether/why the campaign can serve), unlike the user-managed status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = EffectiveStatus::UNSPECIFIED

# Open enum: use .deserialize() to create instances from custom string values
custom = EffectiveStatus.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `UNSPECIFIED`   | UNSPECIFIED     |
| `SERVING`       | SERVING         |
| `LIMITED`       | LIMITED         |
| `LEARNING`      | LEARNING        |
| `PAUSED`        | PAUSED          |
| `PENDING`       | PENDING         |
| `ENDED`         | ENDED           |
| `MISCONFIGURED` | MISCONFIGURED   |
| `NOT_ELIGIBLE`  | NOT_ELIGIBLE    |
| `ARCHIVED`      | ARCHIVED        |
| `REMOVED`       | REMOVED         |