# Webhook
(*webhook*)

## Overview

### Available Operations

* [create_unified_webhook](#create_unified_webhook) - Create webhook subscription
* [get_unified_webhook](#get_unified_webhook) - Retrieve webhook by its ID
* [list_unified_webhooks](#list_unified_webhooks) - Returns all registered webhooks
* [patch_unified_webhook](#patch_unified_webhook) - Update webhook subscription
* [patch_unified_webhook_trigger](#patch_unified_webhook_trigger) - Trigger webhook
* [remove_unified_webhook](#remove_unified_webhook) - Remove webhook subscription
* [update_unified_webhook](#update_unified_webhook) - Update webhook subscription
* [update_unified_webhook_trigger](#update_unified_webhook_trigger) - Trigger webhook

## create_unified_webhook

The data payload received by your server is described at https://docs.unified.to/unified/overview. The `interval` field can be set as low as 1 minute for paid accounts, and 60 minutes for free accounts.

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.webhook.create_unified_webhook(webhook=::UnifiedRubySDK::Shared::Webhook.new(
  connection_id: "<id>",
  event: ::UnifiedRubySDK::Shared::Event::CREATED,
  hook_url: "https://blind-platypus.org/",
  object_type: ::UnifiedRubySDK::Shared::ObjectType::CRM_CONTACT,
), include_all=false)

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                      | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `webhook`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::Webhook)](../../models/shared/webhook.md) | :heavy_minus_sign:                                                             | A webhook is used to POST new/updated information to your server.              |
| `include_all`                                                                  | *T.nilable(T::Boolean)*                                                        | :heavy_minus_sign:                                                             | When set, all of the existing data will sent back to your server.              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateUnifiedWebhookResponse)](../../models/operations/createunifiedwebhookresponse.md)**



## get_unified_webhook

Retrieve webhook by its ID

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.webhook.get_unified_webhook(id="<id>")

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Webhook  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUnifiedWebhookResponse)](../../models/operations/getunifiedwebhookresponse.md)**



## list_unified_webhooks

Returns all registered webhooks

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListUnifiedWebhooksRequest.new()
    
res = s.webhook.list_unified_webhooks(req)

if ! res.webhooks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::UnifiedRubySDK::Operations::ListUnifiedWebhooksRequest](../../models/operations/listunifiedwebhooksrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedWebhooksResponse)](../../models/operations/listunifiedwebhooksresponse.md)**



## patch_unified_webhook

Update webhook subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.webhook.patch_unified_webhook(id="<id>", webhook=::UnifiedRubySDK::Shared::Webhook.new(
  connection_id: "<id>",
  event: ::UnifiedRubySDK::Shared::Event::DELETED,
  hook_url: "https://calculating-habit.name/",
  object_type: ::UnifiedRubySDK::Shared::ObjectType::COMMERCE_COLLECTION,
))

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                      | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `id`                                                                           | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the Webhook                                                              |
| `webhook`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::Webhook)](../../models/shared/webhook.md) | :heavy_minus_sign:                                                             | A webhook is used to POST new/updated information to your server.              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchUnifiedWebhookResponse)](../../models/operations/patchunifiedwebhookresponse.md)**



## patch_unified_webhook_trigger

Trigger webhook

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.webhook.patch_unified_webhook_trigger(id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Webhook  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchUnifiedWebhookTriggerResponse)](../../models/operations/patchunifiedwebhooktriggerresponse.md)**



## remove_unified_webhook

Remove webhook subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.webhook.remove_unified_webhook(id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Webhook  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveUnifiedWebhookResponse)](../../models/operations/removeunifiedwebhookresponse.md)**



## update_unified_webhook

Update webhook subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.webhook.update_unified_webhook(id="<id>", webhook=::UnifiedRubySDK::Shared::Webhook.new(
  connection_id: "<id>",
  event: ::UnifiedRubySDK::Shared::Event::CREATED,
  hook_url: "https://glaring-postbox.info/",
  object_type: ::UnifiedRubySDK::Shared::ObjectType::SCIM_GROUPS,
))

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                      | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `id`                                                                           | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the Webhook                                                              |
| `webhook`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::Webhook)](../../models/shared/webhook.md) | :heavy_minus_sign:                                                             | A webhook is used to POST new/updated information to your server.              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateUnifiedWebhookResponse)](../../models/operations/updateunifiedwebhookresponse.md)**



## update_unified_webhook_trigger

Trigger webhook

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.webhook.update_unified_webhook_trigger(id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Webhook  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateUnifiedWebhookTriggerResponse)](../../models/operations/updateunifiedwebhooktriggerresponse.md)**

