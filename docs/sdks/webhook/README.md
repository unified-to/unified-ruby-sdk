# Webhook


### Available Operations

* [create_unified_webhook](#create_unified_webhook) - Create webhook subscription
* [get_unified_webhook](#get_unified_webhook) - Retrieve webhook by its ID
* [list_unified_webhooks](#list_unified_webhooks) - Returns all registered webhooks
* [patch_unified_webhook_trigger](#patch_unified_webhook_trigger) - Trigger webhook
* [remove_unified_webhook](#remove_unified_webhook) - Remove webhook subscription
* [update_unified_webhook_trigger](#update_unified_webhook_trigger) - Trigger webhook

## create_unified_webhook

The data payload received by your server is described at https://docs.unified.to/unified/overview.  The `interval` field can be set as low as 15 minutes for paid accounts, and 60 minutes for free accounts.

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.webhook.create_unified_webhook(::UnifiedRubySDK::Operations::CreateUnifiedWebhookSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), webhook=::UnifiedRubySDK::Shared::Webhook.new(
    connection_id: "<value>",
    event: ::UnifiedRubySDK::Shared::Event::CREATED,
    hook_url: "<value>",
    object_type: ::UnifiedRubySDK::Shared::ObjectType::ACCOUNTING_ACCOUNT,
  ), include_all=false)

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::CreateUnifiedWebhookSecurity](../../models/operations/createunifiedwebhooksecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `webhook`                                                                                                             | [::UnifiedRubySDK::Shared::Webhook](../../models/shared/webhook.md)                                                   | :heavy_minus_sign:                                                                                                    | N/A                                                                                                                   |
| `include_all`                                                                                                         | *T::Boolean*                                                                                                          | :heavy_minus_sign:                                                                                                    | When set, all of the existing data will sent back to your server.                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateUnifiedWebhookResponse)](../../models/operations/createunifiedwebhookresponse.md)**


## get_unified_webhook

Retrieve webhook by its ID

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.webhook.get_unified_webhook(::UnifiedRubySDK::Operations::GetUnifiedWebhookSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), id="<value>")

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::GetUnifiedWebhookSecurity](../../models/operations/getunifiedwebhooksecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Webhook                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUnifiedWebhookResponse)](../../models/operations/getunifiedwebhookresponse.md)**


## list_unified_webhooks

Returns all registered webhooks

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListUnifiedWebhooksRequest.new()
    
res = s.webhook.list_unified_webhooks(req, ::UnifiedRubySDK::Operations::ListUnifiedWebhooksSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.webhooks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::UnifiedRubySDK::Operations::ListUnifiedWebhooksRequest](../../models/operations/listunifiedwebhooksrequest.md)   | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::ListUnifiedWebhooksSecurity](../../models/operations/listunifiedwebhookssecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedWebhooksResponse)](../../models/operations/listunifiedwebhooksresponse.md)**


## patch_unified_webhook_trigger

Trigger webhook

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.webhook.patch_unified_webhook_trigger(::UnifiedRubySDK::Operations::PatchUnifiedWebhookTriggerSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                        | [::UnifiedRubySDK::Operations::PatchUnifiedWebhookTriggerSecurity](../../models/operations/patchunifiedwebhooktriggersecurity.md) | :heavy_check_mark:                                                                                                                | The security requirements to use for the request.                                                                                 |
| `id`                                                                                                                              | *::String*                                                                                                                        | :heavy_check_mark:                                                                                                                | ID of the Webhook                                                                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchUnifiedWebhookTriggerResponse)](../../models/operations/patchunifiedwebhooktriggerresponse.md)**


## remove_unified_webhook

Remove webhook subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.webhook.remove_unified_webhook(::UnifiedRubySDK::Operations::RemoveUnifiedWebhookSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::RemoveUnifiedWebhookSecurity](../../models/operations/removeunifiedwebhooksecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Webhook                                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveUnifiedWebhookResponse)](../../models/operations/removeunifiedwebhookresponse.md)**


## update_unified_webhook_trigger

Trigger webhook

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.webhook.update_unified_webhook_trigger(::UnifiedRubySDK::Operations::UpdateUnifiedWebhookTriggerSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                          | [::UnifiedRubySDK::Operations::UpdateUnifiedWebhookTriggerSecurity](../../models/operations/updateunifiedwebhooktriggersecurity.md) | :heavy_check_mark:                                                                                                                  | The security requirements to use for the request.                                                                                   |
| `id`                                                                                                                                | *::String*                                                                                                                          | :heavy_check_mark:                                                                                                                  | ID of the Webhook                                                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateUnifiedWebhookTriggerResponse)](../../models/operations/updateunifiedwebhooktriggerresponse.md)**

