# ReturnType

Type of return

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ReturnType::CUSTOMER

# Open enum: use .deserialize() to create instances from custom string values
custom = ReturnType.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `CUSTOMER`  | CUSTOMER    |
| `VENDOR`    | VENDOR      |
| `WARRANTY`  | WARRANTY    |
| `DEFECTIVE` | DEFECTIVE   |
| `OTHER`     | OTHER       |