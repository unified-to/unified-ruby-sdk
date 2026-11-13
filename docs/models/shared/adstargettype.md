# AdsTargetType

Targeting search types for ads_target list endpoint (Meta: adinterest, adbehavior, adlocale, adgeolocation; Google: geoTargetConstants, user_interest, topic_constant, language_constant)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = AdsTargetType::INTEREST

# Open enum: use .deserialize() to create instances from custom string values
custom = AdsTargetType.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `INTEREST`         | INTEREST           |
| `BEHAVIOR`         | BEHAVIOR           |
| `LOCALE`           | LOCALE             |
| `COUNTRY`          | COUNTRY            |
| `REGION`           | REGION             |
| `CITY`             | CITY               |
| `ZIP`              | ZIP                |
| `US_DMA`           | US_DMA             |
| `TOPIC`            | TOPIC              |
| `USER_LIST`        | USER_LIST          |
| `CARRIER`          | CARRIER            |
| `DEVICE_MODEL`     | DEVICE_MODEL       |
| `OS_VERSION`       | OS_VERSION         |
| `CUSTOM_KEY`       | CUSTOM_KEY         |
| `CUSTOM_VALUE`     | CUSTOM_VALUE       |
| `BROWSER`          | BROWSER            |
| `OPERATING_SYSTEM` | OPERATING_SYSTEM   |
| `DEVICE_CATEGORY`  | DEVICE_CATEGORY    |