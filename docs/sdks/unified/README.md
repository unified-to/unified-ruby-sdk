# Unified
(*unified*)

## Overview

### Available Operations

* [create_unified_connection](#create_unified_connection) - Create connection
* [create_unified_webhook](#create_unified_webhook) - Create webhook subscription
* [get_unified_apicall](#get_unified_apicall) - Retrieve specific API Call by its ID
* [get_unified_connection](#get_unified_connection) - Retrieve connection
* [get_unified_integration_auth](#get_unified_integration_auth) - Create connection indirectly
* [get_unified_webhook](#get_unified_webhook) - Retrieve webhook by its ID
* [list_unified_apicalls](#list_unified_apicalls) - Returns API Calls
* [list_unified_connections](#list_unified_connections) - List all connections
* [list_unified_integration_workspaces](#list_unified_integration_workspaces) - Returns all activated integrations in a workspace
* [list_unified_integrations](#list_unified_integrations) - Returns all integrations
* [list_unified_issues](#list_unified_issues) - List support issues
* [list_unified_webhooks](#list_unified_webhooks) - Returns all registered webhooks
* [patch_unified_connection](#patch_unified_connection) - Update connection
* [patch_unified_webhook](#patch_unified_webhook) - Update webhook subscription
* [patch_unified_webhook_trigger](#patch_unified_webhook_trigger) - Trigger webhook
* [remove_unified_connection](#remove_unified_connection) - Remove connection
* [remove_unified_webhook](#remove_unified_webhook) - Remove webhook subscription
* [update_unified_connection](#update_unified_connection) - Update connection
* [update_unified_webhook](#update_unified_webhook) - Update webhook subscription
* [update_unified_webhook_trigger](#update_unified_webhook_trigger) - Trigger webhook

## create_unified_connection

Used only to import existing customer credentials; use "Create connection indirectly" instead

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Shared::Connection.new(
  categories: [
    ::UnifiedRubySDK::Shared::PropertyConnectionCategories::METADATA,
  ],
  integration_type: "<value>",
  permissions: [
    ::UnifiedRubySDK::Shared::PropertyConnectionPermissions::CRM_PIPELINE_WRITE,
  ],
)

res = s.unified.create_unified_connection(req)

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `request`                                                                 | [::UnifiedRubySDK::Shared::Connection](../../models/shared/connection.md) | :heavy_check_mark:                                                        | The request object to use for the request.                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateUnifiedConnectionResponse)](../../models/operations/createunifiedconnectionresponse.md)**



## create_unified_webhook

The data payload received by your server is described at https://docs.unified.to/unified/overview. The `interval` field can be set as low as 1 minute for paid accounts, and 60 minutes for free accounts.

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.create_unified_webhook(webhook=::UnifiedRubySDK::Shared::Webhook.new(
  connection_id: "<id>",
  event: ::UnifiedRubySDK::Shared::Event::CREATED,
  object_type: ::UnifiedRubySDK::Shared::ObjectType::HRIS_PAYSLIP,
), include_all=false)

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `webhook`                                                           | [::UnifiedRubySDK::Shared::Webhook](../../models/shared/webhook.md) | :heavy_check_mark:                                                  | A webhook is used to POST new/updated information to your server.   |
| `include_all`                                                       | *T.nilable(T::Boolean)*                                             | :heavy_minus_sign:                                                  | When set, all of the existing data will sent back to your server.   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateUnifiedWebhookResponse)](../../models/operations/createunifiedwebhookresponse.md)**



## get_unified_apicall

Retrieve specific API Call by its ID

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.get_unified_apicall(id="<id>")

if ! res.api_call.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Apicall  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUnifiedApicallResponse)](../../models/operations/getunifiedapicallresponse.md)**



## get_unified_connection

Retrieve connection

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.get_unified_connection(id="<id>")

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Connection |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUnifiedConnectionResponse)](../../models/operations/getunifiedconnectionresponse.md)**



## get_unified_integration_auth

Returns an authorization URL for the specified integration.  Once a successful authorization occurs, a new connection is created.

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthRequest.new(
  integration_type: "<value>",
  workspace_id: "<id>",
)

res = s.unified.get_unified_integration_auth(req)

if ! res.res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthRequest](../../models/operations/getunifiedintegrationauthrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthResponse)](../../models/operations/getunifiedintegrationauthresponse.md)**



## get_unified_webhook

Retrieve webhook by its ID

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.get_unified_webhook(id="<id>")

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



## list_unified_apicalls

Returns API Calls

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListUnifiedApicallsRequest.new()

res = s.unified.list_unified_apicalls(req)

if ! res.api_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::UnifiedRubySDK::Operations::ListUnifiedApicallsRequest](../../models/operations/listunifiedapicallsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedApicallsResponse)](../../models/operations/listunifiedapicallsresponse.md)**



## list_unified_connections

List all connections

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListUnifiedConnectionsRequest.new()

res = s.unified.list_unified_connections(req)

if ! res.connections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListUnifiedConnectionsRequest](../../models/operations/listunifiedconnectionsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedConnectionsResponse)](../../models/operations/listunifiedconnectionsresponse.md)**



## list_unified_integration_workspaces

No authentication required as this is to be used by front-end interface

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListUnifiedIntegrationWorkspacesRequest.new(
  workspace_id: "<id>",
)

res = s.unified.list_unified_integration_workspaces(req)

if ! res.integrations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                   | Type                                                                                                                                        | Required                                                                                                                                    | Description                                                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                   | [::UnifiedRubySDK::Operations::ListUnifiedIntegrationWorkspacesRequest](../../models/operations/listunifiedintegrationworkspacesrequest.md) | :heavy_check_mark:                                                                                                                          | The request object to use for the request.                                                                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedIntegrationWorkspacesResponse)](../../models/operations/listunifiedintegrationworkspacesresponse.md)**



## list_unified_integrations

Returns all integrations

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListUnifiedIntegrationsRequest.new()

res = s.unified.list_unified_integrations(req)

if ! res.integrations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::UnifiedRubySDK::Operations::ListUnifiedIntegrationsRequest](../../models/operations/listunifiedintegrationsrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedIntegrationsResponse)](../../models/operations/listunifiedintegrationsresponse.md)**



## list_unified_issues

List support issues

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListUnifiedIssuesRequest.new()

res = s.unified.list_unified_issues(req)

if ! res.issues.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListUnifiedIssuesRequest](../../models/operations/listunifiedissuesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedIssuesResponse)](../../models/operations/listunifiedissuesresponse.md)**



## list_unified_webhooks

Returns all registered webhooks

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListUnifiedWebhooksRequest.new()

res = s.unified.list_unified_webhooks(req)

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



## patch_unified_connection

Update connection

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.patch_unified_connection(connection=::UnifiedRubySDK::Shared::Connection.new(
  categories: [
    ::UnifiedRubySDK::Shared::PropertyConnectionCategories::MESSAGING,
  ],
  integration_type: "<value>",
  permissions: [
    ::UnifiedRubySDK::Shared::PropertyConnectionPermissions::CALENDAR_RECORDING_WRITE,
  ],
), id="<id>")

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `connection`                                                              | [::UnifiedRubySDK::Shared::Connection](../../models/shared/connection.md) | :heavy_check_mark:                                                        | A connection represents a specific authentication of an integration.      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Connection                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchUnifiedConnectionResponse)](../../models/operations/patchunifiedconnectionresponse.md)**



## patch_unified_webhook

Update webhook subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.patch_unified_webhook(webhook=::UnifiedRubySDK::Shared::Webhook.new(
  connection_id: "<id>",
  event: ::UnifiedRubySDK::Shared::Event::DELETED,
  object_type: ::UnifiedRubySDK::Shared::ObjectType::CRM_LEAD,
), id="<id>")

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `webhook`                                                           | [::UnifiedRubySDK::Shared::Webhook](../../models/shared/webhook.md) | :heavy_check_mark:                                                  | A webhook is used to POST new/updated information to your server.   |
| `id`                                                                | *::String*                                                          | :heavy_check_mark:                                                  | ID of the Webhook                                                   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchUnifiedWebhookResponse)](../../models/operations/patchunifiedwebhookresponse.md)**



## patch_unified_webhook_trigger

Trigger webhook

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.patch_unified_webhook_trigger(id="<id>")

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



## remove_unified_connection

Remove connection

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.remove_unified_connection(id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Connection |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveUnifiedConnectionResponse)](../../models/operations/removeunifiedconnectionresponse.md)**



## remove_unified_webhook

Remove webhook subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.remove_unified_webhook(id="<id>")

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



## update_unified_connection

Update connection

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.update_unified_connection(connection=::UnifiedRubySDK::Shared::Connection.new(
  categories: [
    ::UnifiedRubySDK::Shared::PropertyConnectionCategories::SCIM,
  ],
  integration_type: "<value>",
  permissions: [
    ::UnifiedRubySDK::Shared::PropertyConnectionPermissions::CALENDAR_LINK_WRITE,
  ],
), id="<id>")

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `connection`                                                              | [::UnifiedRubySDK::Shared::Connection](../../models/shared/connection.md) | :heavy_check_mark:                                                        | A connection represents a specific authentication of an integration.      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Connection                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateUnifiedConnectionResponse)](../../models/operations/updateunifiedconnectionresponse.md)**



## update_unified_webhook

Update webhook subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.update_unified_webhook(webhook=::UnifiedRubySDK::Shared::Webhook.new(
  connection_id: "<id>",
  event: ::UnifiedRubySDK::Shared::Event::CREATED,
  object_type: ::UnifiedRubySDK::Shared::ObjectType::PAYMENT_LINK,
), id="<id>")

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `webhook`                                                           | [::UnifiedRubySDK::Shared::Webhook](../../models/shared/webhook.md) | :heavy_check_mark:                                                  | A webhook is used to POST new/updated information to your server.   |
| `id`                                                                | *::String*                                                          | :heavy_check_mark:                                                  | ID of the Webhook                                                   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateUnifiedWebhookResponse)](../../models/operations/updateunifiedwebhookresponse.md)**



## update_unified_webhook_trigger

Trigger webhook

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.unified.update_unified_webhook_trigger(id="<id>")

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

