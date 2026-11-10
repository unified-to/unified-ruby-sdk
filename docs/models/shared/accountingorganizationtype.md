# AccountingOrganizationType

Entity type within a consolidation hierarchy

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AccountingOrganizationType::COMPANY

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountingOrganizationType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `COMPANY`    | COMPANY      |
| `SUBSIDIARY` | SUBSIDIARY   |
| `DIVISION`   | DIVISION     |
| `LOCATION`   | LOCATION     |