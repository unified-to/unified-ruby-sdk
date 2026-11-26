# Appointment

## Overview

### Available Operations

* [create_dms_appointment](#create_dms_appointment) - Create an appointment
* [create_healthcare_appointment](#create_healthcare_appointment) - Create an appointment
* [get_dms_appointment](#get_dms_appointment) - Retrieve an appointment
* [get_healthcare_appointment](#get_healthcare_appointment) - Retrieve an appointment
* [list_dms_appointments](#list_dms_appointments) - List all appointments
* [list_healthcare_appointments](#list_healthcare_appointments) - List all appointments
* [patch_dms_appointment](#patch_dms_appointment) - Update an appointment
* [patch_healthcare_appointment](#patch_healthcare_appointment) - Update an appointment
* [remove_dms_appointment](#remove_dms_appointment) - Remove an appointment
* [remove_healthcare_appointment](#remove_healthcare_appointment) - Remove an appointment
* [update_dms_appointment](#update_dms_appointment) - Update an appointment
* [update_healthcare_appointment](#update_healthcare_appointment) - Update an appointment

## create_dms_appointment

Creates a DmsAppointment. Provide the unified DmsAppointment fields in the request body; they are mapped to the provider's API. Returns the created DmsAppointment.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDmsAppointment" method="post" path="/dms/{connection_id}/appointment" example="dms_appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.appointment.create_dms_appointment(dms_appointment: Models::Shared::DmsAppointment.new(
  created_at: DateTime.iso8601('2023-10-16T02:56:45.127Z'),
  end_at: DateTime.iso8601('2026-05-07T05:42:25.865Z'),
  id: 'da9b7ddb-6ac6-4532-b16c-1391aedf3755',
  metadata: [],
  notes: 'Soluta conitor timidus confero.',
  number: 'A541909',
  services: [
    Models::Shared::DmsAppointmentService.new(
      id: '734dd613-f123-4344-a362-a99bdd9fefb0',
      name: 'Customer concern',
      pay_type: Models::Shared::PayType::WARRANTY,
      technician_user_ids: []
    ),
    Models::Shared::DmsAppointmentService.new(
      complaint: 'Check engine light on',
      id: '2e119126-0c0d-4708-b17b-cfe46b38bb80',
      name: 'Customer concern',
      pay_type: Models::Shared::PayType::CUSTOMER,
      technician_user_ids: []
    ),
    Models::Shared::DmsAppointmentService.new(
      complaint: 'Due for service',
      id: 'b9606887-f2d2-4e75-877a-f02abbd2043a',
      name: 'Customer concern',
      pay_type: Models::Shared::PayType::CUSTOMER,
      technician_user_ids: []
    ),
  ],
  start_at: DateTime.iso8601('2026-05-06T22:42:25.865Z'),
  status: Models::Shared::DmsAppointmentStatus::CANCELLED,
  transport_type: Models::Shared::TransportType::LOANER,
  updated_at: DateTime.iso8601('2025-04-06T04:25:49.300Z')
), connection_id: '<id>')

unless res.dms_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `dms_appointment`                                                                                                                                | [Models::Shared::DmsAppointment](../../models/shared/dmsappointment.md)                                                                          | :heavy_check_mark:                                                                                                                               | A service appointment (booking)                                                                                                                  |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDmsAppointmentQueryParamFields](../../models/operations/createdmsappointmentqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDmsAppointmentResponse)](../../models/operations/createdmsappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_healthcare_appointment

Creates a HealthcareAppointment. Provide the unified HealthcareAppointment fields in the request body; they are mapped to the provider's API. Returns the created HealthcareAppointment.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHealthcareAppointment" method="post" path="/healthcare/{connection_id}/appointment" example="healthcare_appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.appointment.create_healthcare_appointment(healthcare_appointment: Models::Shared::HealthcareAppointment.new(
  created_at: DateTime.iso8601('2023-04-11T08:16:20.874Z'),
  description: 'cubicularis caput viriliter',
  end_at: DateTime.iso8601('2023-12-12T13:04:41.451Z'),
  id: '18998882-9d55-4df5-accb-b886890257c6',
  is_virtual: true,
  meeting_url: 'https://cautious-cannon.com/',
  metadata: [],
  notes: 'Casus anser ver alo beatus.',
  practitioner_ids: [],
  service_types: [
    Models::Shared::HealthcareCode.new(
      code: '12762740',
      display: 'New patient visit',
      system: 'http://snomed.info/sct'
    ),
  ],
  slot_ids: [],
  start_at: DateTime.iso8601('2023-12-12T12:34:41.451Z'),
  status: Models::Shared::HealthcareAppointmentStatus::BOOKED,
  updated_at: DateTime.iso8601('2026-10-27T09:09:41.195Z')
), connection_id: '<id>')

unless res.healthcare_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                           | Type                                                                                                                                                | Required                                                                                                                                            | Description                                                                                                                                         |
| --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| `healthcare_appointment`                                                                                                                            | [Models::Shared::HealthcareAppointment](../../models/shared/healthcareappointment.md)                                                               | :heavy_check_mark:                                                                                                                                  | N/A                                                                                                                                                 |
| `connection_id`                                                                                                                                     | *::String*                                                                                                                                          | :heavy_check_mark:                                                                                                                                  | ID of the connection                                                                                                                                |
| `fields_`                                                                                                                                           | T::Array<[Models::Operations::CreateHealthcareAppointmentQueryParamFields](../../models/operations/createhealthcareappointmentqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                  | Fields to return                                                                                                                                    |
| `raw`                                                                                                                                               | *T.nilable(::String)*                                                                                                                               | :heavy_minus_sign:                                                                                                                                  | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar    |

### Response

**[T.nilable(Models::Operations::CreateHealthcareAppointmentResponse)](../../models/operations/createhealthcareappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_dms_appointment

Retrieves a single DmsAppointment by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDmsAppointment" method="get" path="/dms/{connection_id}/appointment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.appointment.get_dms_appointment(connection_id: '<id>', id: '<id>')

unless res.dms_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Appointment                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDmsAppointmentQueryParamFields](../../models/operations/getdmsappointmentqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDmsAppointmentResponse)](../../models/operations/getdmsappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_appointment

Retrieves a single HealthcareAppointment by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareAppointment" method="get" path="/healthcare/{connection_id}/appointment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.appointment.get_healthcare_appointment(connection_id: '<id>', id: '<id>')

unless res.healthcare_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Appointment                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareAppointmentQueryParamFields](../../models/operations/gethealthcareappointmentqueryparamfields.md)>    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareAppointmentResponse)](../../models/operations/gethealthcareappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_dms_appointments

Returns a list of DmsAppointments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDmsAppointments" method="get" path="/dms/{connection_id}/appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListDmsAppointmentsRequest.new(
  connection_id: '<id>'
)
res = s.appointment.list_dms_appointments(request: req)

unless res.dms_appointments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListDmsAppointmentsRequest](../../models/operations/listdmsappointmentsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListDmsAppointmentsResponse)](../../models/operations/listdmsappointmentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_appointments

Returns a list of HealthcareAppointments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareAppointments" method="get" path="/healthcare/{connection_id}/appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListHealthcareAppointmentsRequest.new(
  connection_id: '<id>'
)
res = s.appointment.list_healthcare_appointments(request: req)

unless res.healthcare_appointments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListHealthcareAppointmentsRequest](../../models/operations/listhealthcareappointmentsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListHealthcareAppointmentsResponse)](../../models/operations/listhealthcareappointmentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_dms_appointment

Updates the DmsAppointment identified by `id`. Provide the unified DmsAppointment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDmsAppointment" method="patch" path="/dms/{connection_id}/appointment/{id}" example="dms_appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchDmsAppointmentRequest.new(
  dms_appointment: Models::Shared::DmsAppointment.new(
    created_at: DateTime.iso8601('2023-10-16T02:56:45.127Z'),
    end_at: DateTime.iso8601('2026-05-07T05:42:25.879Z'),
    id: '2fd10c59-8bc7-444e-985e-d627d3a00ae9',
    metadata: [],
    notes: 'Soluta conitor timidus confero.',
    number: 'A541909',
    services: [
      Models::Shared::DmsAppointmentService.new(
        id: '6b97caa4-b781-45c5-9eae-699b4ddbe77f',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::WARRANTY,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Check engine light on',
        id: 'e6419ad6-5e14-4a43-b03d-1f8c597ed877',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Due for service',
        id: 'fd82da75-179b-497f-ba8c-5a788c096f80',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
    ],
    start_at: DateTime.iso8601('2026-05-06T22:42:25.879Z'),
    status: Models::Shared::DmsAppointmentStatus::CANCELLED,
    transport_type: Models::Shared::TransportType::LOANER,
    updated_at: DateTime.iso8601('2025-04-06T04:25:49.308Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.appointment.patch_dms_appointment(request: req)

unless res.dms_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchDmsAppointmentRequest](../../models/operations/patchdmsappointmentrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchDmsAppointmentResponse)](../../models/operations/patchdmsappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_healthcare_appointment

Updates the HealthcareAppointment identified by `id`. Provide the unified HealthcareAppointment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHealthcareAppointment" method="patch" path="/healthcare/{connection_id}/appointment/{id}" example="healthcare_appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchHealthcareAppointmentRequest.new(
  healthcare_appointment: Models::Shared::HealthcareAppointment.new(
    created_at: DateTime.iso8601('2023-04-11T08:16:20.874Z'),
    description: 'cubicularis caput viriliter',
    end_at: DateTime.iso8601('2023-12-12T13:04:41.451Z'),
    id: '25509311-9f8d-4337-9bb5-ba2ae7f3c684',
    is_virtual: true,
    meeting_url: 'https://cautious-cannon.com/',
    metadata: [],
    notes: 'Casus anser ver alo beatus.',
    practitioner_ids: [],
    service_types: [
      Models::Shared::HealthcareCode.new(
        code: '12762740',
        display: 'New patient visit',
        system: 'http://snomed.info/sct'
      ),
    ],
    slot_ids: [],
    start_at: DateTime.iso8601('2023-12-12T12:34:41.451Z'),
    status: Models::Shared::HealthcareAppointmentStatus::BOOKED,
    updated_at: DateTime.iso8601('2026-10-27T09:09:41.215Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.appointment.patch_healthcare_appointment(request: req)

unless res.healthcare_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::PatchHealthcareAppointmentRequest](../../models/operations/patchhealthcareappointmentrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::PatchHealthcareAppointmentResponse)](../../models/operations/patchhealthcareappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_dms_appointment

Deletes the DmsAppointment identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeDmsAppointment" method="delete" path="/dms/{connection_id}/appointment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.appointment.remove_dms_appointment(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Appointment |

### Response

**[T.nilable(Models::Operations::RemoveDmsAppointmentResponse)](../../models/operations/removedmsappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_healthcare_appointment

Deletes the HealthcareAppointment identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHealthcareAppointment" method="delete" path="/healthcare/{connection_id}/appointment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.appointment.remove_healthcare_appointment(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Appointment |

### Response

**[T.nilable(Models::Operations::RemoveHealthcareAppointmentResponse)](../../models/operations/removehealthcareappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_dms_appointment

Updates the DmsAppointment identified by `id`. Provide the unified DmsAppointment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDmsAppointment" method="put" path="/dms/{connection_id}/appointment/{id}" example="dms_appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateDmsAppointmentRequest.new(
  dms_appointment: Models::Shared::DmsAppointment.new(
    created_at: DateTime.iso8601('2023-10-16T02:56:45.127Z'),
    end_at: DateTime.iso8601('2026-05-07T05:42:25.879Z'),
    id: '2fd10c59-8bc7-444e-985e-d627d3a00ae9',
    metadata: [],
    notes: 'Soluta conitor timidus confero.',
    number: 'A541909',
    services: [
      Models::Shared::DmsAppointmentService.new(
        id: '6b97caa4-b781-45c5-9eae-699b4ddbe77f',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::WARRANTY,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Check engine light on',
        id: 'e6419ad6-5e14-4a43-b03d-1f8c597ed877',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Due for service',
        id: 'fd82da75-179b-497f-ba8c-5a788c096f80',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
    ],
    start_at: DateTime.iso8601('2026-05-06T22:42:25.879Z'),
    status: Models::Shared::DmsAppointmentStatus::CANCELLED,
    transport_type: Models::Shared::TransportType::LOANER,
    updated_at: DateTime.iso8601('2025-04-06T04:25:49.308Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.appointment.update_dms_appointment(request: req)

unless res.dms_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateDmsAppointmentRequest](../../models/operations/updatedmsappointmentrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateDmsAppointmentResponse)](../../models/operations/updatedmsappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_healthcare_appointment

Updates the HealthcareAppointment identified by `id`. Provide the unified HealthcareAppointment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHealthcareAppointment" method="put" path="/healthcare/{connection_id}/appointment/{id}" example="healthcare_appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateHealthcareAppointmentRequest.new(
  healthcare_appointment: Models::Shared::HealthcareAppointment.new(
    created_at: DateTime.iso8601('2023-04-11T08:16:20.874Z'),
    description: 'cubicularis caput viriliter',
    end_at: DateTime.iso8601('2023-12-12T13:04:41.451Z'),
    id: '25509311-9f8d-4337-9bb5-ba2ae7f3c684',
    is_virtual: true,
    meeting_url: 'https://cautious-cannon.com/',
    metadata: [],
    notes: 'Casus anser ver alo beatus.',
    practitioner_ids: [],
    service_types: [
      Models::Shared::HealthcareCode.new(
        code: '12762740',
        display: 'New patient visit',
        system: 'http://snomed.info/sct'
      ),
    ],
    slot_ids: [],
    start_at: DateTime.iso8601('2023-12-12T12:34:41.451Z'),
    status: Models::Shared::HealthcareAppointmentStatus::BOOKED,
    updated_at: DateTime.iso8601('2026-10-27T09:09:41.215Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.appointment.update_healthcare_appointment(request: req)

unless res.healthcare_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::UpdateHealthcareAppointmentRequest](../../models/operations/updatehealthcareappointmentrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::UpdateHealthcareAppointmentResponse)](../../models/operations/updatehealthcareappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |