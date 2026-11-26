# EncodingFormat

## Example Usage

```ruby
require "unified_ruby_sdk"

value = EncodingFormat::FLOAT

# Open enum: use .deserialize() to create instances from custom string values
custom = EncodingFormat.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `FLOAT`   | FLOAT     |
| `UINT8`   | UINT8     |
| `INT8`    | INT8      |
| `BINARY`  | BINARY    |
| `UBINARY` | UBINARY   |
| `BASE64`  | BASE64    |