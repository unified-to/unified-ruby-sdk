# Volume
(*volume*)

## Overview

### Available Operations

* [create_compute_volume](#create_compute_volume) - Create a volume
* [get_compute_volume](#get_compute_volume) - Retrieve a volume
* [list_compute_volumes](#list_compute_volumes) - List all volumes
* [patch_compute_volume](#patch_compute_volume) - Update a volume
* [remove_compute_volume](#remove_compute_volume) - Remove a volume
* [update_compute_volume](#update_compute_volume) - Update a volume

## create_compute_volume

Creates a ComputeVolume. Provide the unified ComputeVolume fields in the request body; they are mapped to the provider's API. Returns the created ComputeVolume.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeVolume" method="post" path="/compute/{connection_id}/volume" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.volume.create_compute_volume(compute_volume: Models::Shared::ComputeVolume.new(
  created_at: DateTime.iso8601('2022-11-15T15:12:48.055Z'),
  id: 'de23c3c9-e2d4-4a59-887a-d9609f1b288e',
  instance_ids: [],
  metadata: [],
  name: 'vol-solum',
  size_mb: 1_024_000.0,
  status: Models::Shared::ComputeVolumeStatus::OTHER,
  type: Models::Shared::ComputeVolumeType::HIGH_PERFORMANCE,
  updated_at: DateTime.iso8601('2024-02-13T00:31:05.824Z'),
  used_mb: 524_986.0,
), connection_id: '<id>')

unless res.compute_volume.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_volume`                                                                                                                                 | [Models::Shared::ComputeVolume](../../models/shared/computevolume.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeVolumeQueryParamFields](../../models/operations/createcomputevolumequeryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeVolumeResponse)](../../models/operations/createcomputevolumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_volume

Retrieves a single ComputeVolume by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeVolume" method="get" path="/compute/{connection_id}/volume/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.volume.get_compute_volume(connection_id: '<id>', id: '<id>')

unless res.compute_volume.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Volume                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeVolumeQueryParamFields](../../models/operations/getcomputevolumequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeVolumeResponse)](../../models/operations/getcomputevolumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_volumes

Returns a list of ComputeVolumes. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeVolumes" method="get" path="/compute/{connection_id}/volume" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeVolumesRequest.new(
  connection_id: '<id>',
)

res = s.volume.list_compute_volumes(request: req)

unless res.compute_volumes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListComputeVolumesRequest](../../models/operations/listcomputevolumesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListComputeVolumesResponse)](../../models/operations/listcomputevolumesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_volume

Updates the ComputeVolume identified by `id`. Provide the unified ComputeVolume fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeVolume" method="patch" path="/compute/{connection_id}/volume/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeVolumeRequest.new(
  compute_volume: Models::Shared::ComputeVolume.new(
    created_at: DateTime.iso8601('2022-11-15T15:12:48.055Z'),
    id: '64f75f3a-f185-4f2d-b135-d4844662705e',
    instance_ids: [],
    metadata: [],
    name: 'vol-solum',
    size_mb: 1_024_000.0,
    status: Models::Shared::ComputeVolumeStatus::OTHER,
    type: Models::Shared::ComputeVolumeType::HIGH_PERFORMANCE,
    updated_at: DateTime.iso8601('2024-02-13T00:31:05.827Z'),
    used_mb: 524_986.0,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.volume.patch_compute_volume(request: req)

unless res.compute_volume.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchComputeVolumeRequest](../../models/operations/patchcomputevolumerequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchComputeVolumeResponse)](../../models/operations/patchcomputevolumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_volume

Deletes the ComputeVolume identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeVolume" method="delete" path="/compute/{connection_id}/volume/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.volume.remove_compute_volume(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Volume     |

### Response

**[T.nilable(Models::Operations::RemoveComputeVolumeResponse)](../../models/operations/removecomputevolumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_volume

Updates the ComputeVolume identified by `id`. Provide the unified ComputeVolume fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeVolume" method="put" path="/compute/{connection_id}/volume/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeVolumeRequest.new(
  compute_volume: Models::Shared::ComputeVolume.new(
    created_at: DateTime.iso8601('2022-11-15T15:12:48.055Z'),
    id: '64f75f3a-f185-4f2d-b135-d4844662705e',
    instance_ids: [],
    metadata: [],
    name: 'vol-solum',
    size_mb: 1_024_000.0,
    status: Models::Shared::ComputeVolumeStatus::OTHER,
    type: Models::Shared::ComputeVolumeType::HIGH_PERFORMANCE,
    updated_at: DateTime.iso8601('2024-02-13T00:31:05.827Z'),
    used_mb: 524_986.0,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.volume.update_compute_volume(request: req)

unless res.compute_volume.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateComputeVolumeRequest](../../models/operations/updatecomputevolumerequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateComputeVolumeResponse)](../../models/operations/updatecomputevolumeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |