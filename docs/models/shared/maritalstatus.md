# MaritalStatus

Marital status of the patient

## Example Usage

```ruby
require "unified_ruby_sdk"

value = MaritalStatus::MARRIED

# Open enum: use .deserialize() to create instances from custom string values
custom = MaritalStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `MARRIED`          | MARRIED            |
| `SINGLE`           | SINGLE             |
| `DOMESTIC_PARTNER` | DOMESTIC_PARTNER   |
| `SEPARATED`        | SEPARATED          |
| `DIVORCED`         | DIVORCED           |
| `WIDOWED`          | WIDOWED            |
| `ANNULLED`         | ANNULLED           |
| `UNKNOWN`          | UNKNOWN            |
| `OTHER`            | OTHER              |