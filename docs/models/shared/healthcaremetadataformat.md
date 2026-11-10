# HealthcareMetadataFormat

The data type of the value

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareMetadataFormat::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareMetadataFormat.deserialize("custom_value")
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