# CdpIdentifierType

The type of the identifier (eg. EMAIL, USER_ID, ANONYMOUS_ID)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = CdpIdentifierType::EMAIL

# Open enum: use .deserialize() to create instances from custom string values
custom = CdpIdentifierType.deserialize("custom_value")
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `EMAIL`        | EMAIL          |
| `USER_ID`      | USER_ID        |
| `ANONYMOUS_ID` | ANONYMOUS_ID   |
| `DEVICE_ID`    | DEVICE_ID      |
| `PHONE`        | PHONE          |
| `CRM_ID`       | CRM_ID         |
| `LOYALTY_ID`   | LOYALTY_ID     |
| `OTHER`        | OTHER          |