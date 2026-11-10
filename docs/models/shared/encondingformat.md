# EncondingFormat

## Example Usage

```ruby
require "unified_ruby_sdk"

value = EncondingFormat::FLOAT

# Open enum: use .deserialize() to create instances from custom string values
custom = EncondingFormat.deserialize("custom_value")
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