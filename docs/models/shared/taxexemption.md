# TaxExemption

## Example Usage

```ruby
require "unified_ruby_sdk"

value = TaxExemption::FEDERAL_GOV

# Open enum: use .deserialize() to create instances from custom string values
custom = TaxExemption.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `FEDERAL_GOV`     | FEDERAL_GOV       |
| `REGION_GOV`      | REGION_GOV        |
| `LOCAL_GOV`       | LOCAL_GOV         |
| `TRIBAL_GOV`      | TRIBAL_GOV        |
| `CHARITABLE_ORG`  | CHARITABLE_ORG    |
| `RELIGIOUS_ORG`   | RELIGIOUS_ORG     |
| `EDUCATIONAL_ORG` | EDUCATIONAL_ORG   |
| `MEDICAL_ORG`     | MEDICAL_ORG       |
| `RESALE`          | RESALE            |
| `FOREIGN`         | FOREIGN           |
| `OTHER`           | OTHER             |