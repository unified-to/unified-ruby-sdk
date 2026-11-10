# LegalPartyRole

the party role on the matter

## Example Usage

```ruby
require "unified_ruby_sdk"

value = LegalPartyRole::CLIENT

# Open enum: use .deserialize() to create instances from custom string values
custom = LegalPartyRole.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `CLIENT`           | CLIENT             |
| `OPPOSING_PARTY`   | OPPOSING_PARTY     |
| `OPPOSING_COUNSEL` | OPPOSING_COUNSEL   |
| `CO_COUNSEL`       | CO_COUNSEL         |
| `WITNESS`          | WITNESS            |
| `EXPERT`           | EXPERT             |
| `JUDGE`            | JUDGE              |
| `REFERRER`         | REFERRER           |
| `OTHER`            | OTHER              |