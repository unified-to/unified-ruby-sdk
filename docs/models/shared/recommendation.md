# Recommendation

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Recommendation::DEFINITELY_NO

# Open enum: use .deserialize() to create instances from custom string values
custom = Recommendation.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `DEFINITELY_NO` | DEFINITELY_NO   |
| `NO`            | NO              |
| `YES`           | YES             |
| `STRONG_YES`    | STRONG_YES      |