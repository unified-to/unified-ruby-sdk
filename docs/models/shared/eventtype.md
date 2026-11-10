# EventType

## Example Usage

```ruby
require "unified_ruby_sdk"

value = EventType::PAGE_VIEW

# Open enum: use .deserialize() to create instances from custom string values
custom = EventType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `PAGE_VIEW`      | PAGE_VIEW        |
| `SCREEN_VIEW`    | SCREEN_VIEW      |
| `CLICK`          | CLICK            |
| `FORM_SUBMIT`    | FORM_SUBMIT      |
| `PURCHASE`       | PURCHASE         |
| `SIGN_UP`        | SIGN_UP          |
| `LOGIN`          | LOGIN            |
| `LOGOUT`         | LOGOUT           |
| `SEARCH`         | SEARCH           |
| `VIDEO_PLAY`     | VIDEO_PLAY       |
| `VIDEO_COMPLETE` | VIDEO_COMPLETE   |
| `FILE_DOWNLOAD`  | FILE_DOWNLOAD    |
| `SCROLL`         | SCROLL           |
| `SESSION_START`  | SESSION_START    |
| `FIRST_VISIT`    | FIRST_VISIT      |
| `CUSTOM`         | CUSTOM           |