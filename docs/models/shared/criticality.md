# Criticality

low | high | unable-to-assess

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Criticality::LOW

# Open enum: use .deserialize() to create instances from custom string values
custom = Criticality.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `LOW`              | low                |
| `HIGH`             | high               |
| `UNABLE_TO_ASSESS` | unable-to-assess   |