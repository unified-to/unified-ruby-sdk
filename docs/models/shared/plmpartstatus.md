# PlmPartStatus

Normalized lifecycle status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PlmPartStatus::IN_WORK

# Open enum: use .deserialize() to create instances from custom string values
custom = PlmPartStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `IN_WORK`   | IN_WORK     |
| `IN_REVIEW` | IN_REVIEW   |
| `RELEASED`  | RELEASED    |
| `OBSOLETE`  | OBSOLETE    |
| `OTHER`     | OTHER       |