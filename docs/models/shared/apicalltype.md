# ApiCallType

The type of API Call being logged

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ApiCallType::LOGIN

# Open enum: use .deserialize() to create instances from custom string values
custom = ApiCallType.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `LOGIN`   | login     |
| `WEBHOOK` | webhook   |
| `INBOUND` | inbound   |
| `MCP`     | mcp       |