# Instance
(*instance*)

## Overview

### Available Operations

* [create_compute_instance](#create_compute_instance) - Create an instance
* [get_compute_instance](#get_compute_instance) - Retrieve an instance
* [list_compute_instances](#list_compute_instances) - List all instances
* [patch_compute_instance](#patch_compute_instance) - Update an instance
* [remove_compute_instance](#remove_compute_instance) - Remove an instance
* [update_compute_instance](#update_compute_instance) - Update an instance

## create_compute_instance

Creates a ComputeInstance. Provide the unified ComputeInstance fields in the request body; they are mapped to the provider's API. Returns the created ComputeInstance.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeInstance" method="post" path="/compute/{connection_id}/instance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.instance.create_compute_instance(compute_instance: Models::Shared::ComputeInstance.new(
  allowed_actions: [
    Models::Shared::PropertyComputeInstanceAllowedActions::TERMINATE,
  ],
  architecture: Models::Shared::ComputeInstanceArchitecture::OTHER,
  cpu_count: 8.0,
  created_at: DateTime.iso8601('2022-10-07T14:18:53.874Z'),
  currency: 'USD',
  disk_mb: 1_024_000.0,
  endpoints: [
    Models::Shared::ComputeEndpoint.new(
      is_auth_required: true,
      port: 8080.0,
      protocol: Models::Shared::Protocol::HTTPS,
      url: 'https://serene-shark.biz/',
    ),
  ],
  gpu_count: 0.0,
  has_internet_access: true,
  id: 'e2ab3563-4706-4658-88c3-53364c4ea537',
  image: 'ubuntu:24.04',
  market: Models::Shared::Market::SPOT,
  memory_mb: 2048.0,
  metadata: [],
  name: 'digital-panel',
  on_idle: Models::Shared::OnIdle::TERMINATE,
  price_amount: 24.90_336_107_776_966,
  price_unit: Models::Shared::PriceUnit::PER_INSTANCE_HOUR,
  project_identifier: 'g547KrivqY',
  ssh: Models::Shared::PropertyComputeInstanceSsh.new(
    host: '116.42.165.89',
    port: 22.0,
    username: 'root',
  ),
  started_at: DateTime.iso8601('2025-03-25T04:21:08.819Z'),
  status: Models::Shared::ComputeInstanceStatus::ERROR,
  status_reason: 'Sponte quasi adversus alioqui reiciendis arca carmen canis.',
  type: Models::Shared::ComputeInstanceType::BAREMETAL,
  updated_at: DateTime.iso8601('2025-06-17T12:37:07.611Z'),
), connection_id: '<id>')

unless res.compute_instance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_instance`                                                                                                                               | [Models::Shared::ComputeInstance](../../models/shared/computeinstance.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeInstanceQueryParamFields](../../models/operations/createcomputeinstancequeryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeInstanceResponse)](../../models/operations/createcomputeinstanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_instance

Retrieves a single ComputeInstance by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeInstance" method="get" path="/compute/{connection_id}/instance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.instance.get_compute_instance(connection_id: '<id>', id: '<id>')

unless res.compute_instance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Instance                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeInstanceQueryParamFields](../../models/operations/getcomputeinstancequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeInstanceResponse)](../../models/operations/getcomputeinstanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_instances

Returns a list of ComputeInstances. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeInstances" method="get" path="/compute/{connection_id}/instance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeInstancesRequest.new(
  connection_id: '<id>',
)

res = s.instance.list_compute_instances(request: req)

unless res.compute_instances.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListComputeInstancesRequest](../../models/operations/listcomputeinstancesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListComputeInstancesResponse)](../../models/operations/listcomputeinstancesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_instance

Updates the ComputeInstance identified by `id`. Provide the unified ComputeInstance fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeInstance" method="patch" path="/compute/{connection_id}/instance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeInstanceRequest.new(
  compute_instance: Models::Shared::ComputeInstance.new(
    allowed_actions: [
      Models::Shared::PropertyComputeInstanceAllowedActions::TERMINATE,
    ],
    architecture: Models::Shared::ComputeInstanceArchitecture::OTHER,
    cpu_count: 8.0,
    created_at: DateTime.iso8601('2022-10-07T14:18:53.874Z'),
    currency: 'USD',
    disk_mb: 1_024_000.0,
    endpoints: [
      Models::Shared::ComputeEndpoint.new(
        is_auth_required: true,
        port: 8080.0,
        protocol: Models::Shared::Protocol::HTTPS,
        url: 'https://serene-shark.biz/',
      ),
    ],
    gpu_count: 0.0,
    has_internet_access: true,
    id: '32a54e86-dc4c-43c8-81e5-4aeefde9d981',
    image: 'ubuntu:24.04',
    market: Models::Shared::Market::SPOT,
    memory_mb: 2048.0,
    metadata: [],
    name: 'digital-panel',
    on_idle: Models::Shared::OnIdle::TERMINATE,
    price_amount: 24.90_336_107_776_966,
    price_unit: Models::Shared::PriceUnit::PER_INSTANCE_HOUR,
    project_identifier: 'g547KrivqY',
    ssh: Models::Shared::PropertyComputeInstanceSsh.new(
      host: '116.42.165.89',
      port: 22.0,
      username: 'root',
    ),
    started_at: DateTime.iso8601('2025-03-25T04:21:08.845Z'),
    status: Models::Shared::ComputeInstanceStatus::ERROR,
    status_reason: 'Sponte quasi adversus alioqui reiciendis arca carmen canis.',
    type: Models::Shared::ComputeInstanceType::BAREMETAL,
    updated_at: DateTime.iso8601('2025-06-17T12:37:07.640Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.instance.patch_compute_instance(request: req)

unless res.compute_instance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchComputeInstanceRequest](../../models/operations/patchcomputeinstancerequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchComputeInstanceResponse)](../../models/operations/patchcomputeinstanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_instance

Deletes the ComputeInstance identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeInstance" method="delete" path="/compute/{connection_id}/instance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.instance.remove_compute_instance(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Instance   |

### Response

**[T.nilable(Models::Operations::RemoveComputeInstanceResponse)](../../models/operations/removecomputeinstanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_instance

Updates the ComputeInstance identified by `id`. Provide the unified ComputeInstance fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeInstance" method="put" path="/compute/{connection_id}/instance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeInstanceRequest.new(
  compute_instance: Models::Shared::ComputeInstance.new(
    allowed_actions: [
      Models::Shared::PropertyComputeInstanceAllowedActions::TERMINATE,
    ],
    architecture: Models::Shared::ComputeInstanceArchitecture::OTHER,
    cpu_count: 8.0,
    created_at: DateTime.iso8601('2022-10-07T14:18:53.874Z'),
    currency: 'USD',
    disk_mb: 1_024_000.0,
    endpoints: [
      Models::Shared::ComputeEndpoint.new(
        is_auth_required: true,
        port: 8080.0,
        protocol: Models::Shared::Protocol::HTTPS,
        url: 'https://serene-shark.biz/',
      ),
    ],
    gpu_count: 0.0,
    has_internet_access: true,
    id: '32a54e86-dc4c-43c8-81e5-4aeefde9d981',
    image: 'ubuntu:24.04',
    market: Models::Shared::Market::SPOT,
    memory_mb: 2048.0,
    metadata: [],
    name: 'digital-panel',
    on_idle: Models::Shared::OnIdle::TERMINATE,
    price_amount: 24.90_336_107_776_966,
    price_unit: Models::Shared::PriceUnit::PER_INSTANCE_HOUR,
    project_identifier: 'g547KrivqY',
    ssh: Models::Shared::PropertyComputeInstanceSsh.new(
      host: '116.42.165.89',
      port: 22.0,
      username: 'root',
    ),
    started_at: DateTime.iso8601('2025-03-25T04:21:08.845Z'),
    status: Models::Shared::ComputeInstanceStatus::ERROR,
    status_reason: 'Sponte quasi adversus alioqui reiciendis arca carmen canis.',
    type: Models::Shared::ComputeInstanceType::BAREMETAL,
    updated_at: DateTime.iso8601('2025-06-17T12:37:07.640Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.instance.update_compute_instance(request: req)

unless res.compute_instance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateComputeInstanceRequest](../../models/operations/updatecomputeinstancerequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateComputeInstanceResponse)](../../models/operations/updatecomputeinstanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |