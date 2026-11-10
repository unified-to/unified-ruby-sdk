# HealthcareIdentifierType

The kind of identifier

## Example Usage

```ruby
require "unified_ruby_sdk"

value = HealthcareIdentifierType::MRN

# Open enum: use .deserialize() to create instances from custom string values
custom = HealthcareIdentifierType.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `MRN`             | MRN               |
| `NPI`             | NPI               |
| `SSN`             | SSN               |
| `DRIVERS_LICENSE` | DRIVERS_LICENSE   |
| `PASSPORT`        | PASSPORT          |
| `INSURANCE`       | INSURANCE         |
| `OTHER`           | OTHER             |