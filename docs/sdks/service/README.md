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

Create a service

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
  id: 'add1d5c2-caf0-492e-b391-6bcb199a810e',
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
  updated_at: DateTime.iso8601('2025-04-01T15:38:20.011Z'),
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

Retrieve a service

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

List all services

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

Update a service

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
    id: 'ccbaaf08-c828-4a37-98ba-1791a392062a',
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
    updated_at: DateTime.iso8601('2025-04-01T15:38:20.019Z'),
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

Remove a service

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

Update a service

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
    id: 'ccbaaf08-c828-4a37-98ba-1791a392062a',
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
    updated_at: DateTime.iso8601('2025-04-01T15:38:20.019Z'),
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