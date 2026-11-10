# Criticality

Potential severity of future reactions

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
| `LOW`              | LOW                |
| `HIGH`             | HIGH               |
| `UNABLE_TO_ASSESS` | UNABLE_TO_ASSESS   |
| `OTHER`            | OTHER              |