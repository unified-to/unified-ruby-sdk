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

Create a timeoff

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
  start_at: DateTime.iso8601('2024-09-03T22:31:51.863Z'),
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

Retrieve a timeoff

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

List all timeoffs

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

Update a timeoff

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
    start_at: DateTime.iso8601('2024-01-26T05:49:44.056Z'),
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

Remove a timeoff

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

Update a timeoff

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
    start_at: DateTime.iso8601('2026-02-26T01:59:20.061Z'),
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