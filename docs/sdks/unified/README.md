# Unified
(*unified*)

## Overview

### Available Operations

* [create_unified_connection](#create_unified_connection) - Create connection
* [create_unified_connection_reauth](#create_unified_connection_reauth) - Create a re-authorization token for a connection
* [create_unified_environment](#create_unified_environment) - Create new environments
* [create_unified_secretsmanager](#create_unified_secretsmanager) - Create secrets manager
* [create_unified_webhook](#create_unified_webhook) - Create webhook subscription
* [get_unified_apicall](#get_unified_apicall) - Retrieve specific API Call by its ID
* [get_unified_connection](#get_unified_connection) - Retrieve connection
* [get_unified_integration_auth](#get_unified_integration_auth) - Authorize or re-authorize a connection
* [get_unified_issue](#get_unified_issue) - Retrieve support issue
* [get_unified_secretsmanager](#get_unified_secretsmanager) - Retrieve secrets manager
* [get_unified_webhook](#get_unified_webhook) - Retrieve webhook by its ID
* [list_unified_apicalls](#list_unified_apicalls) - Returns API Calls
* [list_unified_connections](#list_unified_connections) - List all connections
* [list_unified_environments](#list_unified_environments) - Returns all environments
* [list_unified_integration_workspaces](#list_unified_integration_workspaces) - Returns all activated integrations in a workspace
* [list_unified_integrations](#list_unified_integrations) - Returns all integrations
* [list_unified_issues](#list_unified_issues) - List support issues
* [list_unified_notifications](#list_unified_notifications) - List event notifications
* [list_unified_secretsmanager_instructions](#list_unified_secretsmanager_instructions) - List secrets manager setup instructions
* [list_unified_secretsmanager_secrets](#list_unified_secretsmanager_secrets) - List secrets in a secrets manager
* [list_unified_secretsmanagers](#list_unified_secretsmanagers) - List secrets managers
* [list_unified_webhooks](#list_unified_webhooks) - Returns all registered webhooks
* [patch_unified_connection](#patch_unified_connection) - Update connection
* [patch_unified_webhook](#patch_unified_webhook) - Update webhook subscription
* [patch_unified_webhook_trigger](#patch_unified_webhook_trigger) - Trigger webhook
* [remove_unified_connection](#remove_unified_connection) - Remove connection
* [remove_unified_environment](#remove_unified_environment) - Remove an environment
* [remove_unified_secretsmanager](#remove_unified_secretsmanager) - Remove secrets manager
* [remove_unified_webhook](#remove_unified_webhook) - Remove webhook subscription
* [update_unified_connection](#update_unified_connection) - Update connection
* [update_unified_webhook](#update_unified_webhook) - Update webhook subscription
* [update_unified_webhook_trigger](#update_unified_webhook_trigger) - Trigger webhook

## create_unified_connection

Used only to import existing customer credentials. To connect a new account, use the "Authorize or re-authorize a connection" auth URL instead. To change credentials on an existing connection, use "Update connection".

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUnifiedConnection" method="post" path="/unified/connection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::Connection.new(
  categories: [],
  integration_type: '<value>',
  permissions: [],
)

res = s.unified.create_unified_connection(request: req)

unless res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `request`                                                       | [Models::Shared::Connection](../../models/shared/connection.md) | :heavy_check_mark:                                              | The request object to use for the request.                      |

### Response

**[T.nilable(Models::Operations::CreateUnifiedConnectionResponse)](../../models/operations/createunifiedconnectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_unified_connection_reauth

Returns a short-lived, single-use token that lets your end-user re-authorize this existing connection in place via the "Authorize or re-authorize a connection" URL with connection_id and reauth_token.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUnifiedConnectionReauth" method="post" path="/unified/connection/{id}/reauth" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.create_unified_connection_reauth(id: '<id>')

unless res.connection_reauth.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Connection |

### Response

**[T.nilable(Models::Operations::CreateUnifiedConnectionReauthResponse)](../../models/operations/createunifiedconnectionreauthresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_unified_environment

Create new environments

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUnifiedEnvironment" method="post" path="/unified/environment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = []

res = s.unified.create_unified_environment(request: req)

unless res.environments.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `request`                                  | [T::Array[::String]](../../models//.md)    | :heavy_check_mark:                         | The request object to use for the request. |

### Response

**[T.nilable(Models::Operations::CreateUnifiedEnvironmentResponse)](../../models/operations/createunifiedenvironmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_unified_secretsmanager

Create secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUnifiedSecretsmanager" method="post" path="/unified/secretsmanager" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::SecretsManager.new(
  auth: {
    "key1": '<value>',
    "key": '<value>',
  },
  name: '<value>',
  type: Models::Shared::SecretsManagerType::AKEYLESS,
)

res = s.unified.create_unified_secretsmanager(request: req)

unless res.secrets_manager.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `request`                                                               | [Models::Shared::SecretsManager](../../models/shared/secretsmanager.md) | :heavy_check_mark:                                                      | The request object to use for the request.                              |

### Response

**[T.nilable(Models::Operations::CreateUnifiedSecretsmanagerResponse)](../../models/operations/createunifiedsecretsmanagerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.unified.create_unified_webhook(webhook: Models::Shared::Webhook.new(
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

## get_unified_apicall

Retrieve specific API Call by its ID

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedApicall" method="get" path="/unified/apicall/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.get_unified_apicall(id: '<id>')

unless res.api_call.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Apicall  |

### Response

**[T.nilable(Models::Operations::GetUnifiedApicallResponse)](../../models/operations/getunifiedapicallresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_unified_connection

Retrieve connection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedConnection" method="get" path="/unified/connection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.get_unified_connection(id: '<id>')

unless res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Connection |

### Response

**[T.nilable(Models::Operations::GetUnifiedConnectionResponse)](../../models/operations/getunifiedconnectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_unified_integration_auth

Returns an authorization URL for the specified integration. After successful authorization, a new connection is created unless connection_id and reauth_token are provided, in which case the existing connection is updated in place.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedIntegrationAuth" method="get" path="/unified/integration/auth/{workspace_id}/{integration_type}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::GetUnifiedIntegrationAuthRequest.new(
  integration_type: '<value>',
  workspace_id: '<id>',
)

res = s.unified.get_unified_integration_auth(request: req)

unless res.res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::GetUnifiedIntegrationAuthRequest](../../models/operations/getunifiedintegrationauthrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::GetUnifiedIntegrationAuthResponse)](../../models/operations/getunifiedintegrationauthresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_unified_issue

Retrieve support issue

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedIssue" method="get" path="/unified/issue/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.get_unified_issue(id: '<id>')

unless res.issue.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Issue    |

### Response

**[T.nilable(Models::Operations::GetUnifiedIssueResponse)](../../models/operations/getunifiedissueresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_unified_secretsmanager

Retrieve secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedSecretsmanager" method="get" path="/unified/secretsmanager/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.get_unified_secretsmanager(id: '<id>')

unless res.secrets_manager.nil?
  # handle response
end

```

### Parameters

| Parameter                | Type                     | Required                 | Description              |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `id`                     | *::String*               | :heavy_check_mark:       | ID of the Secretsmanager |

### Response

**[T.nilable(Models::Operations::GetUnifiedSecretsmanagerResponse)](../../models/operations/getunifiedsecretsmanagerresponse.md)**

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

res = s.unified.get_unified_webhook(id: '<id>')

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

## list_unified_apicalls

Returns API Calls

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedApicalls" method="get" path="/unified/apicall" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedApicallsRequest.new()

res = s.unified.list_unified_apicalls(request: req)

unless res.api_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListUnifiedApicallsRequest](../../models/operations/listunifiedapicallsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListUnifiedApicallsResponse)](../../models/operations/listunifiedapicallsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_connections

List all connections

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedConnections" method="get" path="/unified/connection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedConnectionsRequest.new()

res = s.unified.list_unified_connections(request: req)

unless res.connections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListUnifiedConnectionsRequest](../../models/operations/listunifiedconnectionsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListUnifiedConnectionsResponse)](../../models/operations/listunifiedconnectionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_environments

Returns all environments

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedEnvironments" method="get" path="/unified/environment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.list_unified_environments()

unless res.environments.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::ListUnifiedEnvironmentsResponse)](../../models/operations/listunifiedenvironmentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_integration_workspaces

No authentication required as this is to be used by front-end interface

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedIntegrationWorkspaces" method="get" path="/unified/integration/workspace/{workspace_id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedIntegrationWorkspacesRequest.new(
  workspace_id: '<id>',
)

res = s.unified.list_unified_integration_workspaces(request: req)

unless res.integrations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [Models::Operations::ListUnifiedIntegrationWorkspacesRequest](../../models/operations/listunifiedintegrationworkspacesrequest.md) | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |

### Response

**[T.nilable(Models::Operations::ListUnifiedIntegrationWorkspacesResponse)](../../models/operations/listunifiedintegrationworkspacesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_integrations

Returns all integrations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedIntegrations" method="get" path="/unified/integration" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedIntegrationsRequest.new()

res = s.unified.list_unified_integrations(request: req)

unless res.integrations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListUnifiedIntegrationsRequest](../../models/operations/listunifiedintegrationsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListUnifiedIntegrationsResponse)](../../models/operations/listunifiedintegrationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_issues

List support issues

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedIssues" method="get" path="/unified/issue" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedIssuesRequest.new()

res = s.unified.list_unified_issues(request: req)

unless res.issues.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListUnifiedIssuesRequest](../../models/operations/listunifiedissuesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListUnifiedIssuesResponse)](../../models/operations/listunifiedissuesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_notifications

List event notifications

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedNotifications" method="get" path="/unified/notification" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedNotificationsRequest.new()

res = s.unified.list_unified_notifications(request: req)

unless res.notifications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListUnifiedNotificationsRequest](../../models/operations/listunifiednotificationsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListUnifiedNotificationsResponse)](../../models/operations/listunifiednotificationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_secretsmanager_instructions

List secrets manager setup instructions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedSecretsmanagerInstructions" method="get" path="/unified/secretsmanager/instructions" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.list_unified_secretsmanager_instructions()

unless res.secrets_manager_instructions_list.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::ListUnifiedSecretsmanagerInstructionsResponse)](../../models/operations/listunifiedsecretsmanagerinstructionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_secretsmanager_secrets

List secrets in a secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedSecretsmanagerSecrets" method="get" path="/unified/secretsmanager/secrets" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.list_unified_secretsmanager_secrets(secretsmanager_id: '<id>')

unless res.secrets_manager_secrets.nil?
  # handle response
end

```

### Parameters

| Parameter                                | Type                                     | Required                                 | Description                              |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| `secretsmanager_id`                      | *::String*                               | :heavy_check_mark:                       | The secrets manager to list secrets from |
| `limit`                                  | *T.nilable(::Float)*                     | :heavy_minus_sign:                       | Maximum number of secrets to return      |
| `offset`                                 | *T.nilable(::Float)*                     | :heavy_minus_sign:                       | Number of secrets to skip                |
| `query`                                  | *T.nilable(::String)*                    | :heavy_minus_sign:                       | Filter secrets by name                   |

### Response

**[T.nilable(Models::Operations::ListUnifiedSecretsmanagerSecretsResponse)](../../models/operations/listunifiedsecretsmanagersecretsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_secretsmanagers

List secrets managers

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedSecretsmanagers" method="get" path="/unified/secretsmanager" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedSecretsmanagersRequest.new()

res = s.unified.list_unified_secretsmanagers(request: req)

unless res.secrets_managers.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListUnifiedSecretsmanagersRequest](../../models/operations/listunifiedsecretsmanagersrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListUnifiedSecretsmanagersResponse)](../../models/operations/listunifiedsecretsmanagersresponse.md)**

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

res = s.unified.list_unified_webhooks(request: req)

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

## patch_unified_connection

Update connection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUnifiedConnection" method="patch" path="/unified/connection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.patch_unified_connection(connection: Models::Shared::Connection.new(
  categories: [],
  integration_type: '<value>',
  permissions: [],
), id: '<id>')

unless res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `connection`                                                         | [Models::Shared::Connection](../../models/shared/connection.md)      | :heavy_check_mark:                                                   | A connection represents a specific authentication of an integration. |
| `id`                                                                 | *::String*                                                           | :heavy_check_mark:                                                   | ID of the Connection                                                 |

### Response

**[T.nilable(Models::Operations::PatchUnifiedConnectionResponse)](../../models/operations/patchunifiedconnectionresponse.md)**

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

res = s.unified.patch_unified_webhook(webhook: Models::Shared::Webhook.new(
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

res = s.unified.patch_unified_webhook_trigger(id: '<id>')

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

## remove_unified_connection

Remove connection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUnifiedConnection" method="delete" path="/unified/connection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.remove_unified_connection(id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Connection |

### Response

**[T.nilable(Models::Operations::RemoveUnifiedConnectionResponse)](../../models/operations/removeunifiedconnectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_unified_environment

Remove an environment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUnifiedEnvironment" method="delete" path="/unified/environment/{env}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.remove_unified_environment(env: '<value>')

unless res.environments.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `env`              | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::RemoveUnifiedEnvironmentResponse)](../../models/operations/removeunifiedenvironmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_unified_secretsmanager

Remove secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUnifiedSecretsmanager" method="delete" path="/unified/secretsmanager/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.remove_unified_secretsmanager(id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                | Type                     | Required                 | Description              |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `id`                     | *::String*               | :heavy_check_mark:       | ID of the Secretsmanager |

### Response

**[T.nilable(Models::Operations::RemoveUnifiedSecretsmanagerResponse)](../../models/operations/removeunifiedsecretsmanagerresponse.md)**

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

res = s.unified.remove_unified_webhook(id: '<id>')

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

## update_unified_connection

Update connection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUnifiedConnection" method="put" path="/unified/connection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.unified.update_unified_connection(connection: Models::Shared::Connection.new(
  categories: [],
  integration_type: '<value>',
  permissions: [
    Models::Shared::PropertyConnectionPermissions::PAYMENT_LINK_WRITE,
  ],
), id: '<id>')

unless res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                            | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `connection`                                                         | [Models::Shared::Connection](../../models/shared/connection.md)      | :heavy_check_mark:                                                   | A connection represents a specific authentication of an integration. |
| `id`                                                                 | *::String*                                                           | :heavy_check_mark:                                                   | ID of the Connection                                                 |

### Response

**[T.nilable(Models::Operations::UpdateUnifiedConnectionResponse)](../../models/operations/updateunifiedconnectionresponse.md)**

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

res = s.unified.update_unified_webhook(webhook: Models::Shared::Webhook.new(
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

res = s.unified.update_unified_webhook_trigger(id: '<id>')

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