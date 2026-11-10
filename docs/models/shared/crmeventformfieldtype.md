# CrmEventFormFieldType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CrmEventFormFieldType::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = CrmEventFormFieldType.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `TEXT`            | TEXT              |
| `NUMBER`          | NUMBER            |
| `DATE`            | DATE              |
| `BOOLEAN`         | BOOLEAN           |
| `MULTIPLE_CHOICE` | MULTIPLE_CHOICE   |
| `FILE`            | FILE              |
| `TEXTAREA`        | TEXTAREA          |
| `SINGLE_SELECT`   | SINGLE_SELECT     |
| `MULTIPLE_SELECT` | MULTIPLE_SELECT   |
| `EMAIL`           | EMAIL             |
| `PHONE`           | PHONE             |
| `YES_NO`          | YES_NO            |
| `CURRENCY`        | CURRENCY          |
| `URL`             | URL               |