# AdsCreativeStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AdsCreativeStatus::UNSPECIFIED

# Open enum: use .deserialize() to create instances from custom string values
custom = AdsCreativeStatus.deserialize("custom_value")
```


## Values

| Name                     | Value                    |
| ------------------------ | ------------------------ |
| `UNSPECIFIED`            | UNSPECIFIED              |
| `ACTIVE`                 | ACTIVE                   |
| `PAUSED`                 | PAUSED                   |
| `ARCHIVED`               | ARCHIVED                 |
| `DRAFT`                  | DRAFT                    |
| `SCHEDULED_FOR_DELETION` | SCHEDULED_FOR_DELETION   |
| `PROCESSING`             | PROCESSING               |
| `PROCESSING_FAILED`      | PROCESSING_FAILED        |