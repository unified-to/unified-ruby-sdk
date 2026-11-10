# PlmPartType

Normalized part type

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PlmPartType::COMPONENT

# Open enum: use .deserialize() to create instances from custom string values
custom = PlmPartType.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `COMPONENT`     | COMPONENT       |
| `ASSEMBLY`      | ASSEMBLY        |
| `RAW_MATERIAL`  | RAW_MATERIAL    |
| `SOFTWARE`      | SOFTWARE        |
| `DOCUMENT_ONLY` | DOCUMENT_ONLY   |
| `OTHER`         | OTHER           |