# VerificationRequestResponseStatus

Background checks and compliance checks return CLEARFLAGGED or PASS/FAIL or YES/NO

## Example Usage

```ruby
require "unified_ruby_sdk"

value = VerificationRequestResponseStatus::COMPLETED

# Open enum: use .deserialize() to create instances from custom string values
custom = VerificationRequestResponseStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `COMPLETED` | COMPLETED   |
| `FAILED`    | FAILED      |
| `PASSED`    | PASSED      |
| `PENDING`   | PENDING     |