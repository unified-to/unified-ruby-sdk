# Attendance
(*attendance*)

## Overview

### Available Operations

* [create_hris_attendance](#create_hris_attendance) - Create an attendance
* [get_hris_attendance](#get_hris_attendance) - Retrieve an attendance
* [list_hris_attendances](#list_hris_attendances) - List all attendances
* [patch_hris_attendance](#patch_hris_attendance) - Update an attendance
* [remove_hris_attendance](#remove_hris_attendance) - Remove an attendance
* [update_hris_attendance](#update_hris_attendance) - Update an attendance

## create_hris_attendance

Creates a HrisAttendance. Provide the unified HrisAttendance fields in the request body; they are mapped to the provider's API. Returns the created HrisAttendance.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisAttendance" method="post" path="/hris/{connection_id}/attendance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.attendance.create_hris_attendance(hris_attendance: Models::Shared::HrisAttendance.new(
  address: Models::Shared::PropertyHrisAttendanceAddress.new(
    address1: '14108 Allie Flats',
    city: 'Kearaborough',
    country_code: 'US',
    postal_code: '23844-2344',
    region: 'Tennessee',
    region_code: 'CA',
  ),
  approved_at: DateTime.iso8601('2021-09-19T15:06:28.110Z'),
  breaks: [
    Models::Shared::HrisAttendanceBreak.new(
      duration_minutes: 51.0,
      end_at: DateTime.iso8601('2024-02-15T12:19:44.117Z'),
      id: '885331bb-2d7c-4be6-ab50-f6c0a8246cac',
      is_paid: false,
      name: 'Lunch',
      start_at: DateTime.iso8601('2023-10-30T19:24:30.520Z'),
    ),
  ],
  created_at: DateTime.iso8601('2021-08-10T19:43:18.452Z'),
  currency: 'EUR',
  declared_tips_amount: 54.0,
  employee_user_id: '<id>',
  end_at: DateTime.iso8601('2024-04-24T08:35:36.994Z'),
  hourly_rate: 16.0,
  hours: 10.0,
  id: 'e245fc8a-5b24-4114-9a10-52987bb51214',
  job_name: 'Human Accountability Administrator',
  metadata: [],
  non_cash_tips_amount: 167.0,
  start_at: DateTime.iso8601('2021-11-11T03:15:04.365Z'),
  status: Models::Shared::HrisAttendanceStatus::OPEN,
  timezone: 'America/Atikokan',
  updated_at: DateTime.iso8601('2022-01-20T01:08:55.429Z'),
), connection_id: '<id>')

unless res.hris_attendance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_attendance`                                                                                                                                | [Models::Shared::HrisAttendance](../../models/shared/hrisattendance.md)                                                                          | :heavy_check_mark:                                                                                                                               | Also called timesheets                                                                                                                           |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisAttendanceQueryParamFields](../../models/operations/createhrisattendancequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisAttendanceResponse)](../../models/operations/createhrisattendanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_attendance

Retrieves a single HrisAttendance by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisAttendance" method="get" path="/hris/{connection_id}/attendance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.attendance.get_hris_attendance(connection_id: '<id>', id: '<id>')

unless res.hris_attendance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Attendance                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisAttendanceQueryParamFields](../../models/operations/gethrisattendancequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisAttendanceResponse)](../../models/operations/gethrisattendanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_attendances

Returns a list of HrisAttendances. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisAttendances" method="get" path="/hris/{connection_id}/attendance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisAttendancesRequest.new(
  connection_id: '<id>',
)

res = s.attendance.list_hris_attendances(request: req)

unless res.hris_attendances.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListHrisAttendancesRequest](../../models/operations/listhrisattendancesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListHrisAttendancesResponse)](../../models/operations/listhrisattendancesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_attendance

Updates the HrisAttendance identified by `id`. Provide the unified HrisAttendance fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisAttendance" method="patch" path="/hris/{connection_id}/attendance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisAttendanceRequest.new(
  hris_attendance: Models::Shared::HrisAttendance.new(
    address: Models::Shared::PropertyHrisAttendanceAddress.new(
      address1: '14108 Allie Flats',
      city: 'Kearaborough',
      country_code: 'US',
      postal_code: '23844-2344',
      region: 'Tennessee',
      region_code: 'CA',
    ),
    approved_at: DateTime.iso8601('2021-09-19T15:06:28.111Z'),
    breaks: [
      Models::Shared::HrisAttendanceBreak.new(
        duration_minutes: 51.0,
        end_at: DateTime.iso8601('2024-02-15T12:19:44.132Z'),
        id: '535ff72a-3602-4916-aabd-100b5c5bd600',
        is_paid: false,
        name: 'Lunch',
        start_at: DateTime.iso8601('2023-10-30T19:24:30.533Z'),
      ),
    ],
    created_at: DateTime.iso8601('2021-08-10T19:43:18.452Z'),
    currency: 'EUR',
    declared_tips_amount: 54.0,
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2024-04-24T08:35:37.010Z'),
    hourly_rate: 16.0,
    hours: 10.0,
    id: '3168ed24-e8aa-43a5-b61e-0f0cb5f8bb6f',
    job_name: 'Human Accountability Administrator',
    metadata: [],
    non_cash_tips_amount: 167.0,
    start_at: DateTime.iso8601('2021-11-11T03:15:04.367Z'),
    status: Models::Shared::HrisAttendanceStatus::OPEN,
    timezone: 'America/Atikokan',
    updated_at: DateTime.iso8601('2022-01-20T01:08:55.432Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.attendance.patch_hris_attendance(request: req)

unless res.hris_attendance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchHrisAttendanceRequest](../../models/operations/patchhrisattendancerequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchHrisAttendanceResponse)](../../models/operations/patchhrisattendanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_attendance

Deletes the HrisAttendance identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisAttendance" method="delete" path="/hris/{connection_id}/attendance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.attendance.remove_hris_attendance(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Attendance |

### Response

**[T.nilable(Models::Operations::RemoveHrisAttendanceResponse)](../../models/operations/removehrisattendanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_attendance

Updates the HrisAttendance identified by `id`. Provide the unified HrisAttendance fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisAttendance" method="put" path="/hris/{connection_id}/attendance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisAttendanceRequest.new(
  hris_attendance: Models::Shared::HrisAttendance.new(
    address: Models::Shared::PropertyHrisAttendanceAddress.new(
      address1: '14108 Allie Flats',
      city: 'Kearaborough',
      country_code: 'US',
      postal_code: '23844-2344',
      region: 'Tennessee',
      region_code: 'CA',
    ),
    approved_at: DateTime.iso8601('2021-09-19T15:06:28.111Z'),
    breaks: [
      Models::Shared::HrisAttendanceBreak.new(
        duration_minutes: 51.0,
        end_at: DateTime.iso8601('2024-02-15T12:19:44.132Z'),
        id: '535ff72a-3602-4916-aabd-100b5c5bd600',
        is_paid: false,
        name: 'Lunch',
        start_at: DateTime.iso8601('2023-10-30T19:24:30.533Z'),
      ),
    ],
    created_at: DateTime.iso8601('2021-08-10T19:43:18.452Z'),
    currency: 'EUR',
    declared_tips_amount: 54.0,
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2024-04-24T08:35:37.010Z'),
    hourly_rate: 16.0,
    hours: 10.0,
    id: '3168ed24-e8aa-43a5-b61e-0f0cb5f8bb6f',
    job_name: 'Human Accountability Administrator',
    metadata: [],
    non_cash_tips_amount: 167.0,
    start_at: DateTime.iso8601('2021-11-11T03:15:04.367Z'),
    status: Models::Shared::HrisAttendanceStatus::OPEN,
    timezone: 'America/Atikokan',
    updated_at: DateTime.iso8601('2022-01-20T01:08:55.432Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.attendance.update_hris_attendance(request: req)

unless res.hris_attendance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateHrisAttendanceRequest](../../models/operations/updatehrisattendancerequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateHrisAttendanceResponse)](../../models/operations/updatehrisattendanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |