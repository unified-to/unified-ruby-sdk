# ComputeServiceType

The kind of service

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ComputeServiceType::WEB

# Open enum: use .deserialize() to create instances from custom string values
custom = ComputeServiceType.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `WEB`     | WEB       |
| `WORKER`  | WORKER    |
| `CRON`    | CRON      |
| `STATIC`  | STATIC    |
| `PRIVATE` | PRIVATE   |
| `OTHER`   | OTHER     |