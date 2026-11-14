# QmsIssueSource

Where a quality issue was found

## Example Usage

```ruby
require "unified_ruby_sdk"

value = QmsIssueSource::INTERNAL

# Open enum: use .deserialize() to create instances from custom string values
custom = QmsIssueSource.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `INTERNAL` | INTERNAL   |
| `SUPPLIER` | SUPPLIER   |
| `CUSTOMER` | CUSTOMER   |
| `AUDIT`    | AUDIT      |
| `OTHER`    | OTHER      |