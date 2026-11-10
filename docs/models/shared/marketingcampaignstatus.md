# MarketingCampaignStatus

Campaign status

## Example Usage

```ruby
require "unified_ruby_sdk"

value = MarketingCampaignStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = MarketingCampaignStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `DRAFT`     | DRAFT       |
| `SCHEDULED` | SCHEDULED   |
| `SENDING`   | SENDING     |
| `SENT`      | SENT        |
| `CANCELLED` | CANCELLED   |
| `PAUSED`    | PAUSED      |
| `ARCHIVED`  | ARCHIVED    |
| `OTHER`     | OTHER       |