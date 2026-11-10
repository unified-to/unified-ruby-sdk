# Environment

Target environment

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Environment::PRODUCTION

# Open enum: use .deserialize() to create instances from custom string values
custom = Environment.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `PRODUCTION`  | PRODUCTION    |
| `PREVIEW`     | PREVIEW       |
| `DEVELOPMENT` | DEVELOPMENT   |
| `OTHER`       | OTHER         |