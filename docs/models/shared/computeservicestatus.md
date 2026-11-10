# ComputeServiceStatus

Normalized status; set to SUSPENDED or LIVE on update to suspend or resume

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeServiceStatus::CREATING

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeServiceStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `CREATING`  | CREATING    |
| `DEPLOYING` | DEPLOYING   |
| `LIVE`      | LIVE        |
| `SUSPENDED` | SUSPENDED   |
| `FAILED`    | FAILED      |
| `OTHER`     | OTHER       |