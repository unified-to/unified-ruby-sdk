# Deployment
(*deployment*)

## Overview

### Available Operations

* [create_compute_deployment](#create_compute_deployment) - Create a deployment
* [get_compute_deployment](#get_compute_deployment) - Retrieve a deployment
* [list_compute_deployments](#list_compute_deployments) - List all deployments
* [patch_compute_deployment](#patch_compute_deployment) - Update a deployment
* [remove_compute_deployment](#remove_compute_deployment) - Remove a deployment
* [update_compute_deployment](#update_compute_deployment) - Update a deployment

## create_compute_deployment

Create a deployment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeDeployment" method="post" path="/compute/{connection_id}/deployment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.deployment.create_compute_deployment(compute_deployment: Models::Shared::ComputeDeployment.new(
  branch: 'develop',
  commit_identifier: 'fadfe54eefd8fea670bea6d58b4b15d406c4b02b',
  commit_message: 'copy primary pixel',
  created_at: DateTime.iso8601('2022-06-07T03:52:04.613Z'),
  environment: Models::Shared::Environment::PREVIEW,
  finished_at: DateTime.iso8601('2025-08-22T21:30:41.314Z'),
  id: 'ce276d80-b8dc-47a6-b6ad-675fc298c358',
  metadata: [],
  started_at: DateTime.iso8601('2025-04-04T09:16:39.133Z'),
  status: Models::Shared::ComputeDeploymentStatus::LIVE,
  trigger: Models::Shared::Trigger::API,
  updated_at: DateTime.iso8601('2026-02-20T23:22:47.256Z'),
  url: 'https://comfortable-petal.name',
), connection_id: '<id>')

unless res.compute_deployment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_deployment`                                                                                                                             | [Models::Shared::ComputeDeployment](../../models/shared/computedeployment.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeDeploymentQueryParamFields](../../models/operations/createcomputedeploymentqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeDeploymentResponse)](../../models/operations/createcomputedeploymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_deployment

Retrieve a deployment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeDeployment" method="get" path="/compute/{connection_id}/deployment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.deployment.get_compute_deployment(connection_id: '<id>', id: '<id>')

unless res.compute_deployment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Deployment                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeDeploymentQueryParamFields](../../models/operations/getcomputedeploymentqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeDeploymentResponse)](../../models/operations/getcomputedeploymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_deployments

List all deployments

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeDeployments" method="get" path="/compute/{connection_id}/deployment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeDeploymentsRequest.new(
  connection_id: '<id>',
)

res = s.deployment.list_compute_deployments(request: req)

unless res.compute_deployments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListComputeDeploymentsRequest](../../models/operations/listcomputedeploymentsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListComputeDeploymentsResponse)](../../models/operations/listcomputedeploymentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_deployment

Update a deployment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeDeployment" method="patch" path="/compute/{connection_id}/deployment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeDeploymentRequest.new(
  compute_deployment: Models::Shared::ComputeDeployment.new(
    branch: 'develop',
    commit_identifier: 'fadfe54eefd8fea670bea6d58b4b15d406c4b02b',
    commit_message: 'copy primary pixel',
    created_at: DateTime.iso8601('2022-06-07T03:52:04.613Z'),
    environment: Models::Shared::Environment::PREVIEW,
    finished_at: DateTime.iso8601('2025-08-22T21:30:41.331Z'),
    id: '3bfe8d6d-2e62-47d4-a100-2131c2b18b4c',
    metadata: [],
    started_at: DateTime.iso8601('2025-04-04T09:16:39.148Z'),
    status: Models::Shared::ComputeDeploymentStatus::LIVE,
    trigger: Models::Shared::Trigger::API,
    updated_at: DateTime.iso8601('2026-02-20T23:22:47.276Z'),
    url: 'https://comfortable-petal.name',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.deployment.patch_compute_deployment(request: req)

unless res.compute_deployment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchComputeDeploymentRequest](../../models/operations/patchcomputedeploymentrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchComputeDeploymentResponse)](../../models/operations/patchcomputedeploymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_deployment

Remove a deployment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeDeployment" method="delete" path="/compute/{connection_id}/deployment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.deployment.remove_compute_deployment(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Deployment |

### Response

**[T.nilable(Models::Operations::RemoveComputeDeploymentResponse)](../../models/operations/removecomputedeploymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_deployment

Update a deployment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeDeployment" method="put" path="/compute/{connection_id}/deployment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeDeploymentRequest.new(
  compute_deployment: Models::Shared::ComputeDeployment.new(
    branch: 'develop',
    commit_identifier: 'fadfe54eefd8fea670bea6d58b4b15d406c4b02b',
    commit_message: 'copy primary pixel',
    created_at: DateTime.iso8601('2022-06-07T03:52:04.613Z'),
    environment: Models::Shared::Environment::PREVIEW,
    finished_at: DateTime.iso8601('2025-08-22T21:30:41.331Z'),
    id: '3bfe8d6d-2e62-47d4-a100-2131c2b18b4c',
    metadata: [],
    started_at: DateTime.iso8601('2025-04-04T09:16:39.148Z'),
    status: Models::Shared::ComputeDeploymentStatus::LIVE,
    trigger: Models::Shared::Trigger::API,
    updated_at: DateTime.iso8601('2026-02-20T23:22:47.276Z'),
    url: 'https://comfortable-petal.name',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.deployment.update_compute_deployment(request: req)

unless res.compute_deployment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateComputeDeploymentRequest](../../models/operations/updatecomputedeploymentrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateComputeDeploymentResponse)](../../models/operations/updatecomputedeploymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |