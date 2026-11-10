# Goal

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Goal::UNSPECIFIED

# Open enum: use .deserialize() to create instances from custom string values
custom = Goal.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `UNSPECIFIED`     | UNSPECIFIED       |
| `BRAND_AWARENESS` | BRAND_AWARENESS   |
| `ENGAGEMENT`      | ENGAGEMENT        |
| `REACH`           | REACH             |
| `WEBSITE_TRAFFIC` | WEBSITE_TRAFFIC   |
| `LEADS`           | LEADS             |
| `SALES`           | SALES             |
| `APP_PROMOTION`   | APP_PROMOTION     |