# AchievementStatus

Progress towards the goal

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AchievementStatus::IN_PROGRESS

# Open enum: use .deserialize() to create instances from custom string values
custom = AchievementStatus.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `IN_PROGRESS`    | IN_PROGRESS      |
| `IMPROVING`      | IMPROVING        |
| `WORSENING`      | WORSENING        |
| `NO_CHANGE`      | NO_CHANGE        |
| `ACHIEVED`       | ACHIEVED         |
| `SUSTAINING`     | SUSTAINING       |
| `NOT_ACHIEVED`   | NOT_ACHIEVED     |
| `NO_PROGRESS`    | NO_PROGRESS      |
| `NOT_ATTAINABLE` | NOT_ATTAINABLE   |
| `OTHER`          | OTHER            |