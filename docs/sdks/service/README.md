# Service
(*service*)

## Overview

### Available Operations

* [create_compute_service](#create_compute_service) - Create a service
* [get_compute_service](#get_compute_service) - Retrieve a service
* [list_compute_services](#list_compute_services) - List all services
* [patch_compute_service](#patch_compute_service) - Update a service
* [remove_compute_service](#remove_compute_service) - Remove a service
* [update_compute_service](#update_compute_service) - Update a service

## create_compute_service

Creates a ComputeService. Provide the unified ComputeService fields in the request body; they are mapped to the provider's API. Returns the created ComputeService.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeService" method="post" path="/compute/{connection_id}/service" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.service.create_compute_service(compute_service: Models::Shared::ComputeService.new(
  branch: 'main',
  build_command: 'npm run build',
  created_at: DateTime.iso8601('2023-10-04T02:06:29.391Z'),
  id: 'b9ee2b78-46a1-4ced-8a1b-a71369124382',
  instance_count: 6.0,
  max_instance_count: 6.0,
  metadata: [],
  min_instance_count: 1.0,
  name: 'tame-sideboard',
  project_identifier: '4nyWICvPfi',
  repo_url: 'https://github.com/Kimberly_Muller95/tame-sideboard',
  runtime: 'python',
  status: Models::Shared::ComputeServiceStatus::SUSPENDED,
  type: Models::Shared::ComputeServiceType::OTHER,
  updated_at: DateTime.iso8601('2025-04-07T01:33:24.517Z'),
  url: 'https://tame-sideboard.rotating-shoulder.biz',
), connection_id: '<id>')

unless res.compute_service.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_service`                                                                                                                                | [Models::Shared::ComputeService](../../models/shared/computeservice.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeServiceQueryParamFields](../../models/operations/createcomputeservicequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeServiceResponse)](../../models/operations/createcomputeserviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_service

Retrieves a single ComputeService by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeService" method="get" path="/compute/{connection_id}/service/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.service.get_compute_service(connection_id: '<id>', id: '<id>')

unless res.compute_service.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Service                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeServiceQueryParamFields](../../models/operations/getcomputeservicequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeServiceResponse)](../../models/operations/getcomputeserviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_services

Returns a list of ComputeServices. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeServices" method="get" path="/compute/{connection_id}/service" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeServicesRequest.new(
  connection_id: '<id>',
)

res = s.service.list_compute_services(request: req)

unless res.compute_services.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListComputeServicesRequest](../../models/operations/listcomputeservicesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListComputeServicesResponse)](../../models/operations/listcomputeservicesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_service

Updates the ComputeService identified by `id`. Provide the unified ComputeService fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeService" method="patch" path="/compute/{connection_id}/service/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeServiceRequest.new(
  compute_service: Models::Shared::ComputeService.new(
    branch: 'main',
    build_command: 'npm run build',
    created_at: DateTime.iso8601('2023-10-04T02:06:29.391Z'),
    id: '423a1967-2edf-4600-ac74-be4fb8b3aee6',
    instance_count: 6.0,
    max_instance_count: 6.0,
    metadata: [],
    min_instance_count: 1.0,
    name: 'tame-sideboard',
    project_identifier: '4nyWICvPfi',
    repo_url: 'https://github.com/Kimberly_Muller95/tame-sideboard',
    runtime: 'python',
    status: Models::Shared::ComputeServiceStatus::SUSPENDED,
    type: Models::Shared::ComputeServiceType::OTHER,
    updated_at: DateTime.iso8601('2025-04-07T01:33:24.529Z'),
    url: 'https://tame-sideboard.rotating-shoulder.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.service.patch_compute_service(request: req)

unless res.compute_service.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchComputeServiceRequest](../../models/operations/patchcomputeservicerequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchComputeServiceResponse)](../../models/operations/patchcomputeserviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_service

Deletes the ComputeService identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeService" method="delete" path="/compute/{connection_id}/service/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.service.remove_compute_service(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Service    |

### Response

**[T.nilable(Models::Operations::RemoveComputeServiceResponse)](../../models/operations/removecomputeserviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_service

Updates the ComputeService identified by `id`. Provide the unified ComputeService fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeService" method="put" path="/compute/{connection_id}/service/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeServiceRequest.new(
  compute_service: Models::Shared::ComputeService.new(
    branch: 'main',
    build_command: 'npm run build',
    created_at: DateTime.iso8601('2023-10-04T02:06:29.391Z'),
    id: '423a1967-2edf-4600-ac74-be4fb8b3aee6',
    instance_count: 6.0,
    max_instance_count: 6.0,
    metadata: [],
    min_instance_count: 1.0,
    name: 'tame-sideboard',
    project_identifier: '4nyWICvPfi',
    repo_url: 'https://github.com/Kimberly_Muller95/tame-sideboard',
    runtime: 'python',
    status: Models::Shared::ComputeServiceStatus::SUSPENDED,
    type: Models::Shared::ComputeServiceType::OTHER,
    updated_at: DateTime.iso8601('2025-04-07T01:33:24.529Z'),
    url: 'https://tame-sideboard.rotating-shoulder.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.service.update_compute_service(request: req)

unless res.compute_service.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateComputeServiceRequest](../../models/operations/updatecomputeservicerequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateComputeServiceResponse)](../../models/operations/updatecomputeserviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |