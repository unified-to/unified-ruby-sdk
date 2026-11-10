# UcFaxStatus

The current or final status of the fax

## Example Usage

```ruby
require "unified_ruby_sdk"

value = UcFaxStatus::QUEUED

# Open enum: use .deserialize() to create instances from custom string values
custom = UcFaxStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `QUEUED`    | QUEUED      |
| `SENDING`   | SENDING     |
| `DELIVERED` | DELIVERED   |
| `RECEIVING` | RECEIVING   |
| `RECEIVED`  | RECEIVED    |
| `FAILED`    | FAILED      |
| `CANCELED`  | CANCELED    |
| `OTHER`     | OTHER       |