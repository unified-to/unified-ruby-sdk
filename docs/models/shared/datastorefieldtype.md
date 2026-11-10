# DatastoreFieldType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = DatastoreFieldType::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = DatastoreFieldType.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `TEXT`            | TEXT              |
| `NUMBER`          | NUMBER            |
| `DATE`            | DATE              |
| `BOOLEAN`         | BOOLEAN           |
| `FILE`            | FILE              |
| `TEXTAREA`        | TEXTAREA          |
| `SINGLE_SELECT`   | SINGLE_SELECT     |
| `MULTIPLE_SELECT` | MULTIPLE_SELECT   |
| `CURRENCY`        | CURRENCY          |
| `URL`             | URL               |
| `EMAIL`           | EMAIL             |
| `PHONE`           | PHONE             |
| `LINKED_RECORD`   | LINKED_RECORD     |
| `RELATION`        | RELATION          |