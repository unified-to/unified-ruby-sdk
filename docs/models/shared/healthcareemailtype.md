# HealthcareEmailType

The kind of email address (work, home or other)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareEmailType::WORK

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareEmailType.deserialize("custom_value")
```


## Values

| Name    | Value   |
| ------- | ------- |
| `WORK`  | WORK    |
| `HOME`  | HOME    |
| `OTHER` | OTHER   |