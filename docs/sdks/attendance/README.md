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

Create an attendance

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
  approved_at: DateTime.iso8601('2021-08-13T11:26:43.079Z'),
  breaks: [
    Models::Shared::HrisAttendanceBreak.new(
      duration_minutes: 12.0,
      end_at: DateTime.iso8601('2023-11-02T11:11:12.863Z'),
      id: 'd60a1001-5a8a-4991-8c21-f4da6036cc87',
      is_paid: true,
      name: 'Lunch',
      start_at: DateTime.iso8601('2023-10-26T13:25:43.463Z'),
    ),
  ],
  created_at: DateTime.iso8601('2021-08-10T19:43:18.452Z'),
  currency: 'UGX',
  declared_tips_amount: 161.0,
  employee_user_id: '<id>',
  end_at: DateTime.iso8601('2024-04-19T04:24:47.498Z'),
  hourly_rate: 53.0,
  hours: 10.0,
  id: 'd7666b87-5cbe-4c84-86d6-a08dfbdbf38d',
  job_name: 'Global Creative Supervisor',
  non_cash_tips_amount: 54.0,
  start_at: DateTime.iso8601('2021-11-10T15:38:34.708Z'),
  status: Models::Shared::HrisAttendanceStatus::CLOSED,
  timezone: 'America/Atikokan',
  updated_at: DateTime.iso8601('2022-01-19T04:44:57.010Z'),
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

Retrieve an attendance

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

List all attendances

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

Update an attendance

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
    approved_at: DateTime.iso8601('2021-08-13T11:26:43.079Z'),
    breaks: [
      Models::Shared::HrisAttendanceBreak.new(
        duration_minutes: 12.0,
        end_at: DateTime.iso8601('2023-11-02T11:11:12.868Z'),
        id: 'd60a1001-5a8a-4991-8c21-f4da6036cc87',
        is_paid: true,
        name: 'Lunch',
        start_at: DateTime.iso8601('2023-10-26T13:25:43.468Z'),
      ),
    ],
    created_at: DateTime.iso8601('2021-08-10T19:43:18.452Z'),
    currency: 'UGX',
    declared_tips_amount: 161.0,
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2024-04-19T04:24:47.505Z'),
    hourly_rate: 53.0,
    hours: 10.0,
    id: '804441e2-34e8-47ed-b611-b65fd0110c55',
    job_name: 'Global Creative Supervisor',
    non_cash_tips_amount: 54.0,
    start_at: DateTime.iso8601('2021-11-10T15:38:34.709Z'),
    status: Models::Shared::HrisAttendanceStatus::CLOSED,
    timezone: 'America/Atikokan',
    updated_at: DateTime.iso8601('2022-01-19T04:44:57.011Z'),
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

Remove an attendance

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

Update an attendance

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
    approved_at: DateTime.iso8601('2021-08-13T11:26:43.079Z'),
    breaks: [
      Models::Shared::HrisAttendanceBreak.new(
        duration_minutes: 12.0,
        end_at: DateTime.iso8601('2023-11-02T11:11:12.868Z'),
        id: 'd60a1001-5a8a-4991-8c21-f4da6036cc87',
        is_paid: true,
        name: 'Lunch',
        start_at: DateTime.iso8601('2023-10-26T13:25:43.468Z'),
      ),
    ],
    created_at: DateTime.iso8601('2021-08-10T19:43:18.452Z'),
    currency: 'UGX',
    declared_tips_amount: 161.0,
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2024-04-19T04:24:47.505Z'),
    hourly_rate: 53.0,
    hours: 10.0,
    id: '804441e2-34e8-47ed-b611-b65fd0110c55',
    job_name: 'Global Creative Supervisor',
    non_cash_tips_amount: 54.0,
    start_at: DateTime.iso8601('2021-11-10T15:38:34.709Z'),
    status: Models::Shared::HrisAttendanceStatus::CLOSED,
    timezone: 'America/Atikokan',
    updated_at: DateTime.iso8601('2022-01-19T04:44:57.011Z'),
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