# Timeshift
(*timeshift*)

## Overview

### Available Operations

* [create_hris_timeshift](#create_hris_timeshift) - Create a timeshift
* [get_hris_timeshift](#get_hris_timeshift) - Retrieve a timeshift
* [list_hris_timeshifts](#list_hris_timeshifts) - List all timeshifts
* [patch_hris_timeshift](#patch_hris_timeshift) - Update a timeshift
* [remove_hris_timeshift](#remove_hris_timeshift) - Remove a timeshift
* [update_hris_timeshift](#update_hris_timeshift) - Update a timeshift

## create_hris_timeshift

Create a timeshift

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisTimeshift" method="post" path="/hris/{connection_id}/timeshift" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.timeshift.create_hris_timeshift(hris_timeshift: Models::Shared::HrisTimeshift.new(
  employee_user_id: '<id>',
  end_at: DateTime.iso8601('2025-10-18T00:03:45.822Z'),
  start_at: DateTime.iso8601('2024-06-03T05:33:48.715Z'),
), connection_id: '<id>')

unless res.hris_timeshift.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_timeshift`                                                                                                                                 | [Models::Shared::HrisTimeshift](../../models/shared/hristimeshift.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisTimeshiftResponse)](../../models/operations/createhristimeshiftresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_timeshift

Retrieve a timeshift

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisTimeshift" method="get" path="/hris/{connection_id}/timeshift/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.timeshift.get_hris_timeshift(connection_id: '<id>', id: '<id>')

unless res.hris_timeshift.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Timeshift                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisTimeshiftResponse)](../../models/operations/gethristimeshiftresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_timeshifts

List all timeshifts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisTimeshifts" method="get" path="/hris/{connection_id}/timeshift" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisTimeshiftsRequest.new(
  connection_id: '<id>',
)

res = s.timeshift.list_hris_timeshifts(request: req)

unless res.hris_timeshifts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListHrisTimeshiftsRequest](../../models/operations/listhristimeshiftsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListHrisTimeshiftsResponse)](../../models/operations/listhristimeshiftsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_timeshift

Update a timeshift

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisTimeshift" method="patch" path="/hris/{connection_id}/timeshift/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisTimeshiftRequest.new(
  hris_timeshift: Models::Shared::HrisTimeshift.new(
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2023-11-17T18:53:02.172Z'),
    start_at: DateTime.iso8601('2023-01-19T02:48:41.002Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.timeshift.patch_hris_timeshift(request: req)

unless res.hris_timeshift.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchHrisTimeshiftRequest](../../models/operations/patchhristimeshiftrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchHrisTimeshiftResponse)](../../models/operations/patchhristimeshiftresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_timeshift

Remove a timeshift

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisTimeshift" method="delete" path="/hris/{connection_id}/timeshift/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.timeshift.remove_hris_timeshift(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Timeshift  |

### Response

**[T.nilable(Models::Operations::RemoveHrisTimeshiftResponse)](../../models/operations/removehristimeshiftresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_timeshift

Update a timeshift

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisTimeshift" method="put" path="/hris/{connection_id}/timeshift/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisTimeshiftRequest.new(
  hris_timeshift: Models::Shared::HrisTimeshift.new(
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2025-03-03T22:04:09.340Z'),
    start_at: DateTime.iso8601('2024-05-30T21:19:58.772Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.timeshift.update_hris_timeshift(request: req)

unless res.hris_timeshift.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateHrisTimeshiftRequest](../../models/operations/updatehristimeshiftrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateHrisTimeshiftResponse)](../../models/operations/updatehristimeshiftresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |