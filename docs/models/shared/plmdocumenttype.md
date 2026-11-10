# PlmDocumentType

Normalized document type

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PlmDocumentType::DRAWING

# Open enum: use .deserialize() to create instances from custom string values
custom = PlmDocumentType.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `DRAWING`       | DRAWING         |
| `CAD_MODEL`     | CAD_MODEL       |
| `SPECIFICATION` | SPECIFICATION   |
| `PROCEDURE`     | PROCEDURE       |
| `REPORT`        | REPORT          |
| `OTHER`         | OTHER           |