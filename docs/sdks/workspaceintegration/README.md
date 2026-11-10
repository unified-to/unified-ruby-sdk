# Workspaceintegration

## Overview

### Available Operations

* [create_unified_workspaceintegration](#create_unified_workspaceintegration) - Create workspace integration
* [get_unified_workspaceintegration](#get_unified_workspaceintegration) - Retrieve workspace integration
* [list_unified_workspaceintegrations](#list_unified_workspaceintegrations) - List workspace integrations
* [patch_unified_workspaceintegration](#patch_unified_workspaceintegration) - Update workspace integration
* [remove_unified_workspaceintegration](#remove_unified_workspaceintegration) - Remove workspace integration
* [update_unified_workspaceintegration](#update_unified_workspaceintegration) - Update workspace integration

## create_unified_workspaceintegration

Create workspace integration

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUnifiedWorkspaceintegration" method="post" path="/unified/workspaceintegration" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Shared::WorkspaceIntegration.new(
  integration_type: '<value>',
  is_active: true
)
res = s.workspaceintegration.create_unified_workspaceintegration(request: req)

unless res.workspace_integration.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Models::Shared::WorkspaceIntegration](../../models/shared/workspaceintegration.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |

### Response

**[T.nilable(Models::Operations::CreateUnifiedWorkspaceintegrationResponse)](../../models/operations/createunifiedworkspaceintegrationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_unified_workspaceintegration

Retrieve workspace integration

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedWorkspaceintegration" method="get" path="/unified/workspaceintegration/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.workspaceintegration.get_unified_workspaceintegration(id: '<id>')

unless res.workspace_integration.nil?
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `id`                           | *::String*                     | :heavy_check_mark:             | ID of the Workspaceintegration |

### Response

**[T.nilable(Models::Operations::GetUnifiedWorkspaceintegrationResponse)](../../models/operations/getunifiedworkspaceintegrationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_workspaceintegrations

List workspace integrations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedWorkspaceintegrations" method="get" path="/unified/workspaceintegration" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUnifiedWorkspaceintegrationsRequest.new
res = s.workspaceintegration.list_unified_workspaceintegrations(request: req)

unless res.workspace_integrations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [Models::Operations::ListUnifiedWorkspaceintegrationsRequest](../../models/operations/listunifiedworkspaceintegrationsrequest.md) | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |

### Response

**[T.nilable(Models::Operations::ListUnifiedWorkspaceintegrationsResponse)](../../models/operations/listunifiedworkspaceintegrationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_unified_workspaceintegration

Update workspace integration

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUnifiedWorkspaceintegration" method="patch" path="/unified/workspaceintegration/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.workspaceintegration.patch_unified_workspaceintegration(workspace_integration_patch: Models::Shared::WorkspaceIntegrationPatch.new, id: '<id>')

unless res.workspace_integration.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `workspace_integration_patch`                                                                 | [Models::Shared::WorkspaceIntegrationPatch](../../models/shared/workspaceintegrationpatch.md) | :heavy_check_mark:                                                                            | N/A                                                                                           |
| `id`                                                                                          | *::String*                                                                                    | :heavy_check_mark:                                                                            | ID of the Workspaceintegration                                                                |

### Response

**[T.nilable(Models::Operations::PatchUnifiedWorkspaceintegrationResponse)](../../models/operations/patchunifiedworkspaceintegrationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_unified_workspaceintegration

Remove workspace integration

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUnifiedWorkspaceintegration" method="delete" path="/unified/workspaceintegration/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.workspaceintegration.remove_unified_workspaceintegration(id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `id`                           | *::String*                     | :heavy_check_mark:             | ID of the Workspaceintegration |

### Response

**[T.nilable(Models::Operations::RemoveUnifiedWorkspaceintegrationResponse)](../../models/operations/removeunifiedworkspaceintegrationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_unified_workspaceintegration

Update workspace integration

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUnifiedWorkspaceintegration" method="put" path="/unified/workspaceintegration/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.workspaceintegration.update_unified_workspaceintegration(workspace_integration: Models::Shared::WorkspaceIntegration.new(
  integration_type: '<value>',
  is_active: false
), id: '<id>')

unless res.workspace_integration.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `workspace_integration`                                                             | [Models::Shared::WorkspaceIntegration](../../models/shared/workspaceintegration.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `id`                                                                                | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the Workspaceintegration                                                      |

### Response

**[T.nilable(Models::Operations::UpdateUnifiedWorkspaceintegrationResponse)](../../models/operations/updateunifiedworkspaceintegrationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |