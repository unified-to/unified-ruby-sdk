# ResourceType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ResourceType::USER

# Open enum: use .deserialize() to create instances from custom string values
custom = ResourceType.deserialize("custom_value")
```


## Values

| Name    | Value   |
| ------- | ------- |
| `USER`  | User    |
| `GROUP` | Group   |