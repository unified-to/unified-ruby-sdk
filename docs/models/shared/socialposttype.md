# SocialPostType

The kind of post

## Example Usage

```ruby
require "unified_ruby_sdk"

value = SocialPostType::POST

# Open enum: use .deserialize() to create instances from custom string values
custom = SocialPostType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `POST`   | POST     |
| `REPLY`  | REPLY    |
| `REPOST` | REPOST   |
| `QUOTE`  | QUOTE    |
| `EVENT`  | EVENT    |
| `OFFER`  | OFFER    |
| `ALERT`  | ALERT    |
| `STORY`  | STORY    |
| `OTHER`  | OTHER    |