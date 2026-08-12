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
  employee_user_id: '<id>',
  end_at: DateTime.iso8601('2026-07-01T14:10:09.942Z'),
  start_at: DateTime.iso8601('2026-03-31T03:51:43.280Z'),
), connection_id: '<id>')

unless res.hris_attendance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_attendance`                                                                                                                                | [Models::Shared::HrisAttendance](../../models/shared/hrisattendance.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
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
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2024-09-28T22:23:28.906Z'),
    start_at: DateTime.iso8601('2025-01-18T09:17:09.936Z'),
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
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2024-07-06T19:51:15.352Z'),
    start_at: DateTime.iso8601('2024-05-22T08:12:53.996Z'),
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