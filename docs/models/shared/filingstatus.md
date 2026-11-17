# FilingStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = FilingStatus::SINGLE

# Open enum: use .deserialize() to create instances from custom string values
custom = FilingStatus.deserialize("custom_value")
```


## Values

| Name                  | Value                 |
| --------------------- | --------------------- |
| `SINGLE`              | SINGLE                |
| `MARRIED_JOINTLY`     | MARRIED_JOINTLY       |
| `MARRIED_SEPARATELY`  | MARRIED_SEPARATELY    |
| `HEAD_OF_HOUSEHOLD`   | HEAD_OF_HOUSEHOLD     |
| `QUALIFYING_SURVIVOR` | QUALIFYING_SURVIVOR   |
| `OTHER`               | OTHER                 |