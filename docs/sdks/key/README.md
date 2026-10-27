# Key
(*key*)

## Overview

### Available Operations

* [create_compute_key](#create_compute_key) - Create a key
* [get_compute_key](#get_compute_key) - Retrieve a key
* [list_compute_keys](#list_compute_keys) - List all keys
* [patch_compute_key](#patch_compute_key) - Update a key
* [remove_compute_key](#remove_compute_key) - Remove a key
* [update_compute_key](#update_compute_key) - Update a key

## create_compute_key

Creates a ComputeKey. Provide the unified ComputeKey fields in the request body; they are mapped to the provider's API. Returns the created ComputeKey.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeKey" method="post" path="/compute/{connection_id}/key" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.key.create_compute_key(compute_key: Models::Shared::ComputeKey.new(
  created_at: DateTime.iso8601('2023-08-19T14:31:46.492Z'),
  id: '76da2521-95f1-4905-8f2b-1b05660ab3e2',
  metadata: [],
  name: 'nienow-secret',
  type: Models::Shared::ComputeKeyType::SECRET,
  updated_at: DateTime.iso8601('2024-10-09T02:10:37.974Z'),
), connection_id: '<id>')

unless res.compute_key.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_key`                                                                                                                                    | [Models::Shared::ComputeKey](../../models/shared/computekey.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeKeyQueryParamFields](../../models/operations/createcomputekeyqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeKeyResponse)](../../models/operations/createcomputekeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_key

Retrieves a single ComputeKey by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeKey" method="get" path="/compute/{connection_id}/key/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.key.get_compute_key(connection_id: '<id>', id: '<id>')

unless res.compute_key.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Key                                                                                                                                    |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeKeyQueryParamFields](../../models/operations/getcomputekeyqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeKeyResponse)](../../models/operations/getcomputekeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_keys

Returns a list of ComputeKeys. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeKeys" method="get" path="/compute/{connection_id}/key" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeKeysRequest.new(
  connection_id: '<id>',
)

res = s.key.list_compute_keys(request: req)

unless res.compute_keys.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListComputeKeysRequest](../../models/operations/listcomputekeysrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListComputeKeysResponse)](../../models/operations/listcomputekeysresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_key

Updates the ComputeKey identified by `id`. Provide the unified ComputeKey fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeKey" method="patch" path="/compute/{connection_id}/key/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeKeyRequest.new(
  compute_key: Models::Shared::ComputeKey.new(
    created_at: DateTime.iso8601('2023-08-19T14:31:46.492Z'),
    id: 'bb88995e-54ed-483b-8cd9-94144e1cf5e1',
    metadata: [],
    name: 'nienow-secret',
    type: Models::Shared::ComputeKeyType::SECRET,
    updated_at: DateTime.iso8601('2024-10-09T02:10:37.979Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.key.patch_compute_key(request: req)

unless res.compute_key.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchComputeKeyRequest](../../models/operations/patchcomputekeyrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchComputeKeyResponse)](../../models/operations/patchcomputekeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_key

Deletes the ComputeKey identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeKey" method="delete" path="/compute/{connection_id}/key/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.key.remove_compute_key(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Key        |

### Response

**[T.nilable(Models::Operations::RemoveComputeKeyResponse)](../../models/operations/removecomputekeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_key

Updates the ComputeKey identified by `id`. Provide the unified ComputeKey fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeKey" method="put" path="/compute/{connection_id}/key/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeKeyRequest.new(
  compute_key: Models::Shared::ComputeKey.new(
    created_at: DateTime.iso8601('2023-08-19T14:31:46.492Z'),
    id: 'bb88995e-54ed-483b-8cd9-94144e1cf5e1',
    metadata: [],
    name: 'nienow-secret',
    type: Models::Shared::ComputeKeyType::SECRET,
    updated_at: DateTime.iso8601('2024-10-09T02:10:37.979Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.key.update_compute_key(request: req)

unless res.compute_key.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateComputeKeyRequest](../../models/operations/updatecomputekeyrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateComputeKeyResponse)](../../models/operations/updatecomputekeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |