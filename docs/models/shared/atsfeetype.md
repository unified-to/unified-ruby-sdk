# AtsFeeType

The fee arrangement (e.g. contingency or retained search)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AtsFeeType::CONTINGENCY

# Open enum: use .deserialize() to create instances from custom string values
custom = AtsFeeType.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `CONTINGENCY` | CONTINGENCY   |
| `RETAINED`    | RETAINED      |
| `OTHER`       | OTHER         |