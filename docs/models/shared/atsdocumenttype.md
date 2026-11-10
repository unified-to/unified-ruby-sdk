# AtsDocumentType

The kind of document

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AtsDocumentType::RESUME

# Open enum: use .deserialize() to create instances from custom string values
custom = AtsDocumentType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `RESUME`         | RESUME           |
| `COVER_LETTER`   | COVER_LETTER     |
| `OFFER_PACKET`   | OFFER_PACKET     |
| `OFFER_LETTER`   | OFFER_LETTER     |
| `TAKE_HOME_TEST` | TAKE_HOME_TEST   |
| `OTHER`          | OTHER            |