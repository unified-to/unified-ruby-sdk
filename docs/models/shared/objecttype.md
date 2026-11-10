# ObjectType

The type of object this credit was applied to

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ObjectType::INVOICE

# Open enum: use .deserialize() to create instances from custom string values
custom = ObjectType.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `INVOICE` | INVOICE   |
| `BILL`    | BILL      |