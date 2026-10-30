# Timeoff
(*timeoff*)

## Overview

### Available Operations

* [create_hris_timeoff](#create_hris_timeoff) - Create a timeoff
* [get_hris_timeoff](#get_hris_timeoff) - Retrieve a timeoff
* [list_hris_timeoffs](#list_hris_timeoffs) - List all timeoffs
* [patch_hris_timeoff](#patch_hris_timeoff) - Update a timeoff
* [remove_hris_timeoff](#remove_hris_timeoff) - Remove a timeoff
* [update_hris_timeoff](#update_hris_timeoff) - Update a timeoff

## create_hris_timeoff

Creates a HrisTimeoff. Provide the unified HrisTimeoff fields in the request body; they are mapped to the provider's API. Returns the created HrisTimeoff.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisTimeoff" method="post" path="/hris/{connection_id}/timeoff" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.timeoff.create_hris_timeoff(hris_timeoff: Models::Shared::HrisTimeoff.new(
  approved_at: DateTime.iso8601('2022-02-24T01:12:23.927Z'),
  comments: 'Blandior ventus curiositas amplitudo.',
  created_at: DateTime.iso8601('2021-10-06T18:00:20.615Z'),
  duration: 4.0,
  duration_type: Models::Shared::DurationType::DAY,
  end_at: DateTime.iso8601('2025-01-03T08:55:43.813Z'),
  id: '70750483-d4dd-45ff-82a9-78c7ce982cfa',
  is_paid: true,
  metadata: [],
  original_type: 'acerbitas ut',
  reason: 'verto',
  start_at: DateTime.iso8601('2023-09-08T03:42:28.432Z'),
  status: Models::Shared::HrisTimeoffStatus::DENIED,
  type: Models::Shared::HrisTimeoffType::IN_LIEU,
  updated_at: DateTime.iso8601('2022-07-14T03:48:11.791Z'),
  user_id: '<id>',
), connection_id: '<id>')

unless res.hris_timeoff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_timeoff`                                                                                                                                   | [Models::Shared::HrisTimeoff](../../models/shared/hristimeoff.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisTimeoffQueryParamFields](../../models/operations/createhristimeoffqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisTimeoffResponse)](../../models/operations/createhristimeoffresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_timeoff

Retrieves a single HrisTimeoff by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisTimeoff" method="get" path="/hris/{connection_id}/timeoff/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.timeoff.get_hris_timeoff(connection_id: '<id>', id: '<id>')

unless res.hris_timeoff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Timeoff                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisTimeoffQueryParamFields](../../models/operations/gethristimeoffqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisTimeoffResponse)](../../models/operations/gethristimeoffresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_timeoffs

Returns a list of HrisTimeoffs. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisTimeoffs" method="get" path="/hris/{connection_id}/timeoff" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisTimeoffsRequest.new(
  connection_id: '<id>',
)

res = s.timeoff.list_hris_timeoffs(request: req)

unless res.hris_timeoffs.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListHrisTimeoffsRequest](../../models/operations/listhristimeoffsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListHrisTimeoffsResponse)](../../models/operations/listhristimeoffsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_timeoff

Updates the HrisTimeoff identified by `id`. Provide the unified HrisTimeoff fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisTimeoff" method="patch" path="/hris/{connection_id}/timeoff/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisTimeoffRequest.new(
  hris_timeoff: Models::Shared::HrisTimeoff.new(
    approved_at: DateTime.iso8601('2022-02-24T01:12:23.928Z'),
    comments: 'Blandior ventus curiositas amplitudo.',
    created_at: DateTime.iso8601('2021-10-06T18:00:20.615Z'),
    duration: 4.0,
    duration_type: Models::Shared::DurationType::DAY,
    end_at: DateTime.iso8601('2025-01-03T08:55:43.826Z'),
    id: 'd558201b-c7f4-4bd0-8f74-35bd7c58815b',
    is_paid: true,
    metadata: [],
    original_type: 'acerbitas ut',
    reason: 'verto',
    start_at: DateTime.iso8601('2023-09-08T03:42:28.439Z'),
    status: Models::Shared::HrisTimeoffStatus::DENIED,
    type: Models::Shared::HrisTimeoffType::IN_LIEU,
    updated_at: DateTime.iso8601('2022-07-14T03:48:11.794Z'),
    user_id: '<id>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.timeoff.patch_hris_timeoff(request: req)

unless res.hris_timeoff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchHrisTimeoffRequest](../../models/operations/patchhristimeoffrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchHrisTimeoffResponse)](../../models/operations/patchhristimeoffresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_timeoff

Deletes the HrisTimeoff identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisTimeoff" method="delete" path="/hris/{connection_id}/timeoff/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.timeoff.remove_hris_timeoff(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Timeoff    |

### Response

**[T.nilable(Models::Operations::RemoveHrisTimeoffResponse)](../../models/operations/removehristimeoffresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_timeoff

Updates the HrisTimeoff identified by `id`. Provide the unified HrisTimeoff fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisTimeoff" method="put" path="/hris/{connection_id}/timeoff/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisTimeoffRequest.new(
  hris_timeoff: Models::Shared::HrisTimeoff.new(
    approved_at: DateTime.iso8601('2022-02-24T01:12:23.928Z'),
    comments: 'Blandior ventus curiositas amplitudo.',
    created_at: DateTime.iso8601('2021-10-06T18:00:20.615Z'),
    duration: 4.0,
    duration_type: Models::Shared::DurationType::DAY,
    end_at: DateTime.iso8601('2025-01-03T08:55:43.826Z'),
    id: 'd558201b-c7f4-4bd0-8f74-35bd7c58815b',
    is_paid: true,
    metadata: [],
    original_type: 'acerbitas ut',
    reason: 'verto',
    start_at: DateTime.iso8601('2023-09-08T03:42:28.439Z'),
    status: Models::Shared::HrisTimeoffStatus::DENIED,
    type: Models::Shared::HrisTimeoffType::IN_LIEU,
    updated_at: DateTime.iso8601('2022-07-14T03:48:11.794Z'),
    user_id: '<id>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.timeoff.update_hris_timeoff(request: req)

unless res.hris_timeoff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateHrisTimeoffRequest](../../models/operations/updatehristimeoffrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateHrisTimeoffResponse)](../../models/operations/updatehristimeoffresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |