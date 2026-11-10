# FlsaStatus

US Fair Labor Standards Act classification

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FlsaStatus::EXEMPT

# Open enum: use .deserialize() to create instances from custom string values
custom = FlsaStatus.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `EXEMPT`             | EXEMPT               |
| `NON_EXEMPT`         | NON_EXEMPT           |
| `SALARIED_NONEXEMPT` | SALARIED_NONEXEMPT   |
| `OWNER`              | OWNER                |