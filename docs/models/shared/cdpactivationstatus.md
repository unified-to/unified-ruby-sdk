# CdpActivationStatus

The current status of the activation

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CdpActivationStatus::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = CdpActivationStatus.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `ACTIVE`  | ACTIVE    |
| `PAUSED`  | PAUSED    |
| `ERROR`   | ERROR     |
| `PENDING` | PENDING   |