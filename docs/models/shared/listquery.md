# ListQuery

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ListQuery::SUPPORTED_REQUIRED

# Open enum: use .deserialize() to create instances from custom string values
custom = ListQuery.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `SUPPORTED_REQUIRED` | supported-required   |
| `SUPPORTED`          | supported            |
| `NOT_SUPPORTED`      | not-supported        |