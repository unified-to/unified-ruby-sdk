# PrintingFileStatus

Processing status of the file

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PrintingFileStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = PrintingFileStatus.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `PENDING` | PENDING   |
| `READY`   | READY     |
| `FAILED`  | FAILED    |
| `OTHER`   | OTHER     |