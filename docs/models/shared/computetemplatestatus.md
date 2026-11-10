# ComputeTemplateStatus

Normalized build status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeTemplateStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeTemplateStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `PENDING`  | PENDING    |
| `BUILDING` | BUILDING   |
| `READY`    | READY      |
| `FAILED`   | FAILED     |
| `OTHER`    | OTHER      |