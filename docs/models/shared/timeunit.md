# TimeUnit

## Example Usage

```ruby
require "unified_ruby_sdk"

value = TimeUnit::UNSPECIFIED

# Open enum: use .deserialize() to create instances from custom string values
custom = TimeUnit.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `UNSPECIFIED` | UNSPECIFIED   |
| `LIFETIME`    | LIFETIME      |
| `MONTHS`      | MONTHS        |
| `WEEKS`       | WEEKS         |
| `DAYS`        | DAYS          |
| `HOURS`       | HOURS         |
| `MINUTES`     | MINUTES       |