# Webhook
(*webhook*)

## Overview

### Available Operations

* [create_unified_webhook](#create_unified_webhook) - Create webhook subscription
* [get_unified_webhook](#get_unified_webhook) - Retrieve webhook by its ID
* [list_unified_webhooks](#list_unified_webhooks) - Returns all registered webhooks
* [patch_unified_webhook](#patch_unified_webhook) - Update webhook subscription
* [patch_unified_webhook_resume](#patch_unified_webhook_resume) - Resume an unhealthy webhook subscription
* [patch_unified_webhook_trigger](#patch_unified_webhook_trigger) - Trigger webhook
* [remove_unified_webhook](#remove_unified_webhook) - Remove webhook subscription
* [update_unified_webhook](#update_unified_webhook) - Update webhook subscription
* [update_unified_webhook_resume](#update_unified_webhook_resume) - Resume an unhealthy webhook subscription
* [update_unified_webhook_trigger](#update_unified_webhook_trigger) - Trigger webhook

## create_unified_webhook

The data payload received by your server is described at https://docs.unified.to/unified/overview. The `interval` field can be set as low as 1 minute for paid accounts, and 60 minutes for free accounts.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUnifiedWebhook" method="post" path="/unified/webhook" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.webhook.create_unified_webhook(webhook: Models::Shared::Webhook.new(
  connection_id: '<id>',
  event: Models::Shared::WebhookEvent::CREATED,
  object_type: Models::Shared::WebhookObjectType::ATS_APPLICATIONSTATUS,
))

unless res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `webhook`                                                                     | [Models::Shared::Webhook](../../models/shared/webhook.md)                     | :heavy_check_mark:                                                            | A webhook is used to POST new, updated, or deleted records to your server.    |
| `include_all`                                                                 | *T.nilable(T::Boolean)*                                                       | :heavy_minus_sign:                                                            | When true, send existing/historic data. When false, no historic data is sent. |

### Response

**[T.nilable(Models::Operations::CreateUnifiedWebhookResponse)](../../models/operations/createunifiedwebhookresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_unified_webhook

Retrieve webhook by its ID

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedWebhook" method="get" path="/unified/webhook/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.webhook.get_unified_webhook(id: '<id>')

unless res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Webhook  |

### Response

**[T.nilable(Models::Operations::GetUnifiedWebhookResponse)](../../models/operations/getunifiedwebhookresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_webhooks

Returns all registered webhooks

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedWebhooks" method="get" path="/unified/webhook" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedWebhooksRequest.new()

res = s.webhook.list_unified_webhooks(request: req)

unless res.webhooks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListUnifiedWebhooksRequest](../../models/operations/listunifiedwebhooksrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListUnifiedWebhooksResponse)](../../models/operations/listunifiedwebhooksresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_unified_webhook

Update webhook subscription

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUnifiedWebhook" method="patch" path="/unified/webhook/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.webhook.patch_unified_webhook(webhook: Models::Shared::Webhook.new(
  connection_id: '<id>',
  event: Models::Shared::WebhookEvent::UPDATED,
  object_type: Models::Shared::WebhookObjectType::MARTECH_MEMBER,
), id: '<id>')

unless res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                  | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `webhook`                                                                  | [Models::Shared::Webhook](../../models/shared/webhook.md)                  | :heavy_check_mark:                                                         | A webhook is used to POST new, updated, or deleted records to your server. |
| `id`                                                                       | *::String*                                                                 | :heavy_check_mark:                                                         | ID of the Webhook                                                          |

### Response

**[T.nilable(Models::Operations::PatchUnifiedWebhookResponse)](../../models/operations/patchunifiedwebhookresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_unified_webhook_resume

Sets is_healthy back to true and restarts the webhook. Fix the cause first (hook_url, connection auth); the connection must be healthy. Virtual: continues from where it stopped. A webhook that went unhealthy mid-initial-sync before resume was available restarts its initial sync, so deleting and recreating it is safer. Native: re-subscribes if the provider subscription is missing or expired. Events received while the webhook was unhealthy are not re-sent. Webhook sync (beta): continues from the stored sync token. Page cursors are not stored yet, so a resume can re-send some records. Virtual and initial-sync webhooks that have been unhealthy for more than 7 days cannot be resumed, because resuming would re-send every change since then; delete and recreate them instead. MCP Events subscriptions cannot be resumed; they are managed by their MCP client.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUnifiedWebhookResume" method="patch" path="/unified/webhook/{id}/resume" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.webhook.patch_unified_webhook_resume(id: '<id>')

unless res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Webhook  |

### Response

**[T.nilable(Models::Operations::PatchUnifiedWebhookResumeResponse)](../../models/operations/patchunifiedwebhookresumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_unified_webhook_trigger

Trigger webhook

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUnifiedWebhookTrigger" method="patch" path="/unified/webhook/{id}/trigger" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.webhook.patch_unified_webhook_trigger(id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Webhook  |

### Response

**[T.nilable(Models::Operations::PatchUnifiedWebhookTriggerResponse)](../../models/operations/patchunifiedwebhooktriggerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_unified_webhook

Remove webhook subscription

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUnifiedWebhook" method="delete" path="/unified/webhook/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.webhook.remove_unified_webhook(id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Webhook  |

### Response

**[T.nilable(Models::Operations::RemoveUnifiedWebhookResponse)](../../models/operations/removeunifiedwebhookresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_unified_webhook

Update webhook subscription

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUnifiedWebhook" method="put" path="/unified/webhook/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.webhook.update_unified_webhook(webhook: Models::Shared::Webhook.new(
  connection_id: '<id>',
  event: Models::Shared::WebhookEvent::DELETED,
  object_type: Models::Shared::WebhookObjectType::GENAI_PROMPT,
), id: '<id>')

unless res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                  | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `webhook`                                                                  | [Models::Shared::Webhook](../../models/shared/webhook.md)                  | :heavy_check_mark:                                                         | A webhook is used to POST new, updated, or deleted records to your server. |
| `id`                                                                       | *::String*                                                                 | :heavy_check_mark:                                                         | ID of the Webhook                                                          |

### Response

**[T.nilable(Models::Operations::UpdateUnifiedWebhookResponse)](../../models/operations/updateunifiedwebhookresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_unified_webhook_resume

Sets is_healthy back to true and restarts the webhook. Fix the cause first (hook_url, connection auth); the connection must be healthy. Virtual: continues from where it stopped. A webhook that went unhealthy mid-initial-sync before resume was available restarts its initial sync, so deleting and recreating it is safer. Native: re-subscribes if the provider subscription is missing or expired. Events received while the webhook was unhealthy are not re-sent. Webhook sync (beta): continues from the stored sync token. Page cursors are not stored yet, so a resume can re-send some records. Virtual and initial-sync webhooks that have been unhealthy for more than 7 days cannot be resumed, because resuming would re-send every change since then; delete and recreate them instead. MCP Events subscriptions cannot be resumed; they are managed by their MCP client.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUnifiedWebhookResume" method="put" path="/unified/webhook/{id}/resume" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.webhook.update_unified_webhook_resume(id: '<id>')

unless res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Webhook  |

### Response

**[T.nilable(Models::Operations::UpdateUnifiedWebhookResumeResponse)](../../models/operations/updateunifiedwebhookresumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_unified_webhook_trigger

Trigger webhook

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUnifiedWebhookTrigger" method="put" path="/unified/webhook/{id}/trigger" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.webhook.update_unified_webhook_trigger(id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Webhook  |

### Response

**[T.nilable(Models::Operations::UpdateUnifiedWebhookTriggerResponse)](../../models/operations/updateunifiedwebhooktriggerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |