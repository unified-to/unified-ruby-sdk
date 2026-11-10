# MarketingMetadataFormat

## Example Usage

```ruby
require "unified_ruby_sdk"

value = MarketingMetadataFormat::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = MarketingMetadataFormat.deserialize("custom_value")
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
| `MEASUREMENT`     | MEASUREMENT       |
| `PRICE`           | PRICE             |
| `YES_NO`          | YES_NO            |
| `CURRENCY`        | CURRENCY          |
| `URL`             | URL               |