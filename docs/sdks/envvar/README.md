# Envvar
(*envvar*)

## Overview

### Available Operations

* [create_compute_envvar](#create_compute_envvar) - Create an envvar
* [get_compute_envvar](#get_compute_envvar) - Retrieve an envvar
* [list_compute_envvars](#list_compute_envvars) - List all envvars
* [patch_compute_envvar](#patch_compute_envvar) - Update an envvar
* [remove_compute_envvar](#remove_compute_envvar) - Remove an envvar
* [update_compute_envvar](#update_compute_envvar) - Update an envvar

## create_compute_envvar

Creates a ComputeEnvvar. Provide the unified ComputeEnvvar fields in the request body; they are mapped to the provider's API. Returns the created ComputeEnvvar.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeEnvvar" method="post" path="/compute/{connection_id}/envvar" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.envvar.create_compute_envvar(compute_envvar: Models::Shared::ComputeEnvvar.new(
  created_at: DateTime.iso8601('2021-08-16T07:52:27.306Z'),
  environments: [
    Models::Shared::PropertyComputeEnvvarEnvironments::PREVIEW,
  ],
  id: '50b07642-d583-4796-91a3-f6dd94c66878',
  is_secret: true,
  metadata: [],
  name: 'AEGER_SUBSTANTIA',
  updated_at: DateTime.iso8601('2025-07-08T20:37:37.737Z'),
), connection_id: '<id>')

unless res.compute_envvar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_envvar`                                                                                                                                 | [Models::Shared::ComputeEnvvar](../../models/shared/computeenvvar.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeEnvvarQueryParamFields](../../models/operations/createcomputeenvvarqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeEnvvarResponse)](../../models/operations/createcomputeenvvarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_envvar

Retrieves a single ComputeEnvvar by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeEnvvar" method="get" path="/compute/{connection_id}/envvar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.envvar.get_compute_envvar(connection_id: '<id>', id: '<id>')

unless res.compute_envvar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Envvar                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeEnvvarQueryParamFields](../../models/operations/getcomputeenvvarqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeEnvvarResponse)](../../models/operations/getcomputeenvvarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_envvars

Returns a list of ComputeEnvvars. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeEnvvars" method="get" path="/compute/{connection_id}/envvar" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeEnvvarsRequest.new(
  connection_id: '<id>',
)

res = s.envvar.list_compute_envvars(request: req)

unless res.compute_envvars.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListComputeEnvvarsRequest](../../models/operations/listcomputeenvvarsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListComputeEnvvarsResponse)](../../models/operations/listcomputeenvvarsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_envvar

Updates the ComputeEnvvar identified by `id`. Provide the unified ComputeEnvvar fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeEnvvar" method="patch" path="/compute/{connection_id}/envvar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeEnvvarRequest.new(
  compute_envvar: Models::Shared::ComputeEnvvar.new(
    created_at: DateTime.iso8601('2021-08-16T07:52:27.306Z'),
    environments: [
      Models::Shared::PropertyComputeEnvvarEnvironments::PREVIEW,
    ],
    id: 'c7f0d120-b6ea-431e-ab37-5e827ac9b1c6',
    is_secret: true,
    metadata: [],
    name: 'AEGER_SUBSTANTIA',
    updated_at: DateTime.iso8601('2025-07-08T20:37:37.753Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.envvar.patch_compute_envvar(request: req)

unless res.compute_envvar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchComputeEnvvarRequest](../../models/operations/patchcomputeenvvarrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchComputeEnvvarResponse)](../../models/operations/patchcomputeenvvarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_envvar

Deletes the ComputeEnvvar identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeEnvvar" method="delete" path="/compute/{connection_id}/envvar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.envvar.remove_compute_envvar(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Envvar     |

### Response

**[T.nilable(Models::Operations::RemoveComputeEnvvarResponse)](../../models/operations/removecomputeenvvarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_envvar

Updates the ComputeEnvvar identified by `id`. Provide the unified ComputeEnvvar fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeEnvvar" method="put" path="/compute/{connection_id}/envvar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeEnvvarRequest.new(
  compute_envvar: Models::Shared::ComputeEnvvar.new(
    created_at: DateTime.iso8601('2021-08-16T07:52:27.306Z'),
    environments: [
      Models::Shared::PropertyComputeEnvvarEnvironments::PREVIEW,
    ],
    id: 'c7f0d120-b6ea-431e-ab37-5e827ac9b1c6',
    is_secret: true,
    metadata: [],
    name: 'AEGER_SUBSTANTIA',
    updated_at: DateTime.iso8601('2025-07-08T20:37:37.753Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.envvar.update_compute_envvar(request: req)

unless res.compute_envvar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateComputeEnvvarRequest](../../models/operations/updatecomputeenvvarrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateComputeEnvvarResponse)](../../models/operations/updatecomputeenvvarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |