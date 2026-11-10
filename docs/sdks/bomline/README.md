# Bomline

## Overview

### Available Operations

* [create_plm_bomline](#create_plm_bomline) - Create a bomline
* [get_plm_bomline](#get_plm_bomline) - Retrieve a bomline
* [list_plm_bomlines](#list_plm_bomlines) - List all bomlines
* [patch_plm_bomline](#patch_plm_bomline) - Update a bomline
* [remove_plm_bomline](#remove_plm_bomline) - Remove a bomline
* [update_plm_bomline](#update_plm_bomline) - Update a bomline

## create_plm_bomline

Creates a PlmBomline. Provide the unified PlmBomline fields in the request body; they are mapped to the provider's API. Returns the created PlmBomline.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPlmBomline" method="post" path="/plm/{connection_id}/bomline" example="plm_bomline" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.bomline.create_plm_bomline(plm_bomline: Models::Shared::PlmBomline.new(
  created_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
  effective_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
  id: '255a0805-cb87-40f8-97d2-adaa349b5273',
  quantity: 7.0,
  reference_designators: [],
  unit_of_measure: 'EA',
  updated_at: DateTime.iso8601('2023-04-19T05:22:16.020Z')
), connection_id: '<id>')

unless res.plm_bomline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `plm_bomline`                                                                                                                                    | [Models::Shared::PlmBomline](../../models/shared/plmbomline.md)                                                                                  | :heavy_check_mark:                                                                                                                               | One parent to child usage in a bill of materials                                                                                                 |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePlmBomlineQueryParamFields](../../models/operations/createplmbomlinequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePlmBomlineResponse)](../../models/operations/createplmbomlineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_plm_bomline

Retrieves a single PlmBomline by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPlmBomline" method="get" path="/plm/{connection_id}/bomline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.bomline.get_plm_bomline(connection_id: '<id>', id: '<id>')

unless res.plm_bomline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Bomline                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPlmBomlineQueryParamFields](../../models/operations/getplmbomlinequeryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPlmBomlineResponse)](../../models/operations/getplmbomlineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_plm_bomlines

Returns a list of PlmBomlines. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPlmBomlines" method="get" path="/plm/{connection_id}/bomline" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPlmBomlinesRequest.new(
  connection_id: '<id>'
)
res = s.bomline.list_plm_bomlines(request: req)

unless res.plm_bomlines.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListPlmBomlinesRequest](../../models/operations/listplmbomlinesrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListPlmBomlinesResponse)](../../models/operations/listplmbomlinesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_plm_bomline

Updates the PlmBomline identified by `id`. Provide the unified PlmBomline fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPlmBomline" method="patch" path="/plm/{connection_id}/bomline/{id}" example="plm_bomline" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchPlmBomlineRequest.new(
  plm_bomline: Models::Shared::PlmBomline.new(
    created_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
    effective_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
    id: '6707753c-f07f-4037-a000-693e611b61a4',
    quantity: 7.0,
    reference_designators: [],
    unit_of_measure: 'EA',
    updated_at: DateTime.iso8601('2023-04-19T05:22:16.022Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.bomline.patch_plm_bomline(request: req)

unless res.plm_bomline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchPlmBomlineRequest](../../models/operations/patchplmbomlinerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchPlmBomlineResponse)](../../models/operations/patchplmbomlineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_plm_bomline

Deletes the PlmBomline identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePlmBomline" method="delete" path="/plm/{connection_id}/bomline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.bomline.remove_plm_bomline(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Bomline    |

### Response

**[T.nilable(Models::Operations::RemovePlmBomlineResponse)](../../models/operations/removeplmbomlineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_plm_bomline

Updates the PlmBomline identified by `id`. Provide the unified PlmBomline fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePlmBomline" method="put" path="/plm/{connection_id}/bomline/{id}" example="plm_bomline" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdatePlmBomlineRequest.new(
  plm_bomline: Models::Shared::PlmBomline.new(
    created_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
    effective_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
    id: '6707753c-f07f-4037-a000-693e611b61a4',
    quantity: 7.0,
    reference_designators: [],
    unit_of_measure: 'EA',
    updated_at: DateTime.iso8601('2023-04-19T05:22:16.022Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.bomline.update_plm_bomline(request: req)

unless res.plm_bomline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdatePlmBomlineRequest](../../models/operations/updateplmbomlinerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdatePlmBomlineResponse)](../../models/operations/updateplmbomlineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |