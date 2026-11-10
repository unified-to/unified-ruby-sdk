# CommerceReviewStatus

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CommerceReviewStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = CommerceReviewStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `PENDING`  | PENDING    |
| `APPROVED` | APPROVED   |
| `REJECTED` | REJECTED   |
| `SPAM`     | SPAM       |