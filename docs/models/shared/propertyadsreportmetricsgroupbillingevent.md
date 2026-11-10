# PropertyAdsReportMetricsGroupBillingEvent

Billing events for ads_group (what you pay for; cross-platform; platform-specific values allowed as pass-through)

## Example Usage

```ruby
require "unified_ruby_sdk"

value = PropertyAdsReportMetricsGroupBillingEvent::IMPRESSIONS

# Open enum: use .deserialize() to create instances from custom string values
custom = PropertyAdsReportMetricsGroupBillingEvent.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `IMPRESSIONS`     | IMPRESSIONS       |
| `LINK_CLICKS`     | LINK_CLICKS       |
| `VIDEO_VIEWS`     | VIDEO_VIEWS       |
| `APP_INSTALLS`    | APP_INSTALLS      |
| `ENGAGEMENT`      | ENGAGEMENT        |
| `PAGE_LIKES`      | PAGE_LIKES        |
| `MESSAGES`        | MESSAGES          |
| `POST_ENGAGEMENT` | POST_ENGAGEMENT   |
| `PURCHASE`        | PURCHASE          |
| `NONE`            | NONE              |