# ContentType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = ContentType::HTML

# Open enum: use .deserialize() to create instances from custom string values
custom = ContentType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `HTML`     | HTML       |
| `MARKDOWN` | MARKDOWN   |
| `TEXT`     | TEXT       |
| `OTHER`    | OTHER      |