# WebhookEvent

The event to subscribe to. "deleted" is supported on native webhooks, and on virtual webhooks where the integration supports it. Check the integration's Feature Support tab.

## Example Usage

```ruby
require "unified_ruby_sdk"

value = WebhookEvent::UPDATED

# Open enum: use .deserialize() to create instances from custom string values
custom = WebhookEvent.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `UPDATED` | updated   |
| `CREATED` | created   |
| `DELETED` | deleted   |