# FormFieldType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FormFieldType::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = FormFieldType.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `TEXT`            | TEXT              |
| `TEXTAREA`        | TEXTAREA          |
| `NUMBER`          | NUMBER            |
| `EMAIL`           | EMAIL             |
| `URL`             | URL               |
| `DATE`            | DATE              |
| `TIME`            | TIME              |
| `DATETIME`        | DATETIME          |
| `PHONE`           | PHONE             |
| `BOOLEAN`         | BOOLEAN           |
| `SINGLE_SELECT`   | SINGLE_SELECT     |
| `MULTIPLE_SELECT` | MULTIPLE_SELECT   |
| `FILE_UPLOAD`     | FILE_UPLOAD       |
| `RATING`          | RATING            |
| `SCALE`           | SCALE             |
| `MATRIX`          | MATRIX            |
| `SECTION_HEADER`  | SECTION_HEADER    |
| `OTHER`           | OTHER             |