# EmployerContributionCategory

kind of employer retirement contribution (eg. MATCH, SAFE_HARBOR_MATCH, PROFIT_SHARING)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = EmployerContributionCategory::MATCH

# Open enum: use .deserialize() to create instances from custom string values
custom = EmployerContributionCategory.deserialize("custom_value")
```


## Values

| Name                      | Value                     |
| ------------------------- | ------------------------- |
| `MATCH`                   | MATCH                     |
| `SAFE_HARBOR_MATCH`       | SAFE_HARBOR_MATCH         |
| `SAFE_HARBOR_NONELECTIVE` | SAFE_HARBOR_NONELECTIVE   |
| `QACA_MATCH`              | QACA_MATCH                |
| `NONELECTIVE`             | NONELECTIVE               |
| `PROFIT_SHARING`          | PROFIT_SHARING            |
| `OTHER`                   | OTHER                     |