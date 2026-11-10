# MatchType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = MatchType::BROAD

# Open enum: use .deserialize() to create instances from custom string values
custom = MatchType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `BROAD`  | BROAD    |
| `PHRASE` | PHRASE   |
| `EXACT`  | EXACT    |