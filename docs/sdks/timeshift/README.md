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
  approved_at: DateTime.iso8601('2023-06-06T04:02:18.652Z'),
  compensation: [
    Models::Shared::HrisCompensation.new(
      amount: 76_761.0,
      currency: 'JPY',
      frequency: Models::Shared::HrisCompensationFrequency::HOUR,
      notes: 'Annus adficio suasoria architecto aggero.',
      type: Models::Shared::HrisCompensationType::OTHER,
    ),
  ],
  created_at: DateTime.iso8601('2019-07-01T23:53:15.738Z'),
  employee_user_id: '<id>',
  end_at: DateTime.iso8601('2026-08-26T09:03:49.473Z'),
  hours: 8.0,
  id: '57e99df2-1de2-466c-8266-cffa4ca73897',
  is_approved: true,
  start_at: DateTime.iso8601('2023-06-25T09:11:00.080Z'),
  updated_at: DateTime.iso8601('2021-06-23T03:41:09.341Z'),
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
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisTimeshiftQueryParamFields](../../models/operations/createhristimeshiftqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
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
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisTimeshiftQueryParamFields](../../models/operations/gethristimeshiftqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
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
    approved_at: DateTime.iso8601('2023-06-06T04:02:18.657Z'),
    compensation: [
      Models::Shared::HrisCompensation.new(
        amount: 76_761.0,
        currency: 'JPY',
        frequency: Models::Shared::HrisCompensationFrequency::HOUR,
        notes: 'Annus adficio suasoria architecto aggero.',
        type: Models::Shared::HrisCompensationType::OTHER,
      ),
    ],
    created_at: DateTime.iso8601('2019-07-01T23:53:15.738Z'),
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2026-08-26T09:03:49.482Z'),
    hours: 8.0,
    id: '15ff1c02-cfc5-49f0-b0f3-54f4edb294ad',
    is_approved: true,
    start_at: DateTime.iso8601('2023-06-25T09:11:00.085Z'),
    updated_at: DateTime.iso8601('2021-06-23T03:41:09.343Z'),
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
    approved_at: DateTime.iso8601('2023-06-06T04:02:18.657Z'),
    compensation: [
      Models::Shared::HrisCompensation.new(
        amount: 76_761.0,
        currency: 'JPY',
        frequency: Models::Shared::HrisCompensationFrequency::HOUR,
        notes: 'Annus adficio suasoria architecto aggero.',
        type: Models::Shared::HrisCompensationType::OTHER,
      ),
    ],
    created_at: DateTime.iso8601('2019-07-01T23:53:15.738Z'),
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2026-08-26T09:03:49.482Z'),
    hours: 8.0,
    id: '15ff1c02-cfc5-49f0-b0f3-54f4edb294ad',
    is_approved: true,
    start_at: DateTime.iso8601('2023-06-25T09:11:00.085Z'),
    updated_at: DateTime.iso8601('2021-06-23T03:41:09.343Z'),
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