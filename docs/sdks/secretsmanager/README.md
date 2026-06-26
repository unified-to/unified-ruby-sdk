# Secretsmanager
(*secretsmanager*)

## Overview

### Available Operations

* [create_unified_workspace_secretsmanager](#create_unified_workspace_secretsmanager) - Create secrets manager
* [get_unified_workspace_secretsmanager](#get_unified_workspace_secretsmanager) - Retrieve secrets manager
* [list_unified_workspace_secretsmanagers](#list_unified_workspace_secretsmanagers) - List secrets managers
* [remove_unified_workspace_secretsmanager](#remove_unified_workspace_secretsmanager) - Remove secrets manager

## create_unified_workspace_secretsmanager

Create secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUnifiedWorkspaceSecretsmanager" method="post" path="/unified/workspace/secretsmanager" -->
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

  },
  name: '<value>',
  type: Models::Shared::SecretsManagerType::HASHICORP,
)

res = s.secretsmanager.create_unified_workspace_secretsmanager(request: req)

unless res.secrets_manager.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `request`                                                               | [Models::Shared::SecretsManager](../../models/shared/secretsmanager.md) | :heavy_check_mark:                                                      | The request object to use for the request.                              |

### Response

**[T.nilable(Models::Operations::CreateUnifiedWorkspaceSecretsmanagerResponse)](../../models/operations/createunifiedworkspacesecretsmanagerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_unified_workspace_secretsmanager

Retrieve secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedWorkspaceSecretsmanager" method="get" path="/unified/workspace/secretsmanager/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.secretsmanager.get_unified_workspace_secretsmanager(id: '<id>')

unless res.secrets_manager.nil?
  # handle response
end

```

### Parameters

| Parameter                | Type                     | Required                 | Description              |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `id`                     | *::String*               | :heavy_check_mark:       | ID of the Secretsmanager |

### Response

**[T.nilable(Models::Operations::GetUnifiedWorkspaceSecretsmanagerResponse)](../../models/operations/getunifiedworkspacesecretsmanagerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_workspace_secretsmanagers

List secrets managers

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedWorkspaceSecretsmanagers" method="get" path="/unified/workspace/secretsmanager" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedWorkspaceSecretsmanagersRequest.new()

res = s.secretsmanager.list_unified_workspace_secretsmanagers(request: req)

unless res.secrets_managers.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                               | Type                                                                                                                                    | Required                                                                                                                                | Description                                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                               | [Models::Operations::ListUnifiedWorkspaceSecretsmanagersRequest](../../models/operations/listunifiedworkspacesecretsmanagersrequest.md) | :heavy_check_mark:                                                                                                                      | The request object to use for the request.                                                                                              |

### Response

**[T.nilable(Models::Operations::ListUnifiedWorkspaceSecretsmanagersResponse)](../../models/operations/listunifiedworkspacesecretsmanagersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_unified_workspace_secretsmanager

Remove secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUnifiedWorkspaceSecretsmanager" method="delete" path="/unified/workspace/secretsmanager/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.secretsmanager.remove_unified_workspace_secretsmanager(id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                | Type                     | Required                 | Description              |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `id`                     | *::String*               | :heavy_check_mark:       | ID of the Secretsmanager |

### Response

**[T.nilable(Models::Operations::RemoveUnifiedWorkspaceSecretsmanagerResponse)](../../models/operations/removeunifiedworkspacesecretsmanagerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |