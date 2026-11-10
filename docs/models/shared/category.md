# Category

STANDARD (days-based) or DATE_DRIVEN (month-based)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Category::STANDARD

# Open enum: use .deserialize() to create instances from custom string values
custom = Category.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `STANDARD`    | STANDARD      |
| `DATE_DRIVEN` | DATE_DRIVEN   |
| `OTHER`       | OTHER         |