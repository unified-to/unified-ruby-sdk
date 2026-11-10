# AuthType

the authentication method to use for this workspace integration; when set, it overrides the default auth-method selection (e.g. force 'token' even when Unified OAUTH credentials exist)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AuthType::OAUTH2

# Open enum: use .deserialize() to create instances from custom string values
custom = AuthType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `OAUTH2` | oauth2   |
| `OTHER`  | other    |
| `TOKEN`  | token    |