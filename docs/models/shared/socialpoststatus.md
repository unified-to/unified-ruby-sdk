# SocialPostStatus

Publication status of the post

## Example Usage

```ruby
require "unified_ruby_sdk"

value = SocialPostStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = SocialPostStatus.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `DRAFT`      | DRAFT        |
| `SCHEDULED`  | SCHEDULED    |
| `PUBLISHED`  | PUBLISHED    |
| `REJECTED`   | REJECTED     |
| `PROCESSING` | PROCESSING   |
| `DELETED`    | DELETED      |
| `OTHER`      | OTHER        |