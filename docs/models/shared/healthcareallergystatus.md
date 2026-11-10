# HealthcareAllergyStatus

Clinical status of the allergy

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareAllergyStatus::ACTIVE

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareAllergyStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `ACTIVE`   | ACTIVE     |
| `INACTIVE` | INACTIVE   |
| `RESOLVED` | RESOLVED   |
| `OTHER`    | OTHER      |