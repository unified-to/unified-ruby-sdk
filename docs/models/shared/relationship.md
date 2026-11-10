# Relationship

Relationship of the patient to the policy holder

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Relationship::SELF

# Open enum: use .deserialize() to create instances from custom string values
custom = Relationship.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `SELF`   | SELF     |
| `SPOUSE` | SPOUSE   |
| `CHILD`  | CHILD    |
| `OTHER`  | OTHER    |