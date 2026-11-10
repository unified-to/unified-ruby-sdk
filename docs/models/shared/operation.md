# Operation

ONLY USED ON UPDATES

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Operation::ADD

# Open enum: use .deserialize() to create instances from custom string values
custom = Operation.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `ADD`    | add      |
| `DELETE` | delete   |