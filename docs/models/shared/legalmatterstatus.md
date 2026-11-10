# LegalMatterStatus

the matter status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = LegalMatterStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = LegalMatterStatus.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `PENDING` | PENDING   |
| `OPEN`    | OPEN      |
| `CLOSED`  | CLOSED    |
| `OTHER`   | OTHER     |