# PropertyCrmEventTaskStatus

The event task's status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PropertyCrmEventTaskStatus::COMPLETED

# Open enum: use .deserialize() to create instances from custom string values
custom = PropertyCrmEventTaskStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `COMPLETED`        | COMPLETED          |
| `NOT_STARTED`      | NOT_STARTED        |
| `WORK_IN_PROGRESS` | WORK_IN_PROGRESS   |
| `DEFERRED`         | DEFERRED           |