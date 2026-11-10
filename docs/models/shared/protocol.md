# Protocol

The protocol served on this port

## Example Usage

```ruby
require "unified_ruby_sdk"

value = Protocol::HTTP

# Open enum: use .deserialize() to create instances from custom string values
custom = Protocol.deserialize("custom_value")
```


## Values

| Name    | Value   |
| ------- | ------- |
| `HTTP`  | HTTP    |
| `HTTPS` | HTTPS   |
| `TCP`   | TCP     |
| `UDP`   | UDP     |
| `OTHER` | OTHER   |