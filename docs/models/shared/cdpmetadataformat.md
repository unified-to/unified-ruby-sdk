# CdpMetadataFormat

The data type of the attribute value

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CdpMetadataFormat::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = CdpMetadataFormat.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `TEXT`    | TEXT      |
| `NUMBER`  | NUMBER    |
| `DATE`    | DATE      |
| `BOOLEAN` | BOOLEAN   |
| `ARRAY`   | ARRAY     |
| `OBJECT`  | OBJECT    |