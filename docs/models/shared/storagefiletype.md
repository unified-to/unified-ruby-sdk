# StorageFileType

Whether this is a file or a folder

## Example Usage

```ruby
require "unified_ruby_sdk"

value = StorageFileType::FILE

# Open enum: use .deserialize() to create instances from custom string values
custom = StorageFileType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `FILE`   | FILE     |
| `FOLDER` | FOLDER   |