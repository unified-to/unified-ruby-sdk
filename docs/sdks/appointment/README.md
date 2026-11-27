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
  end_at: DateTime.iso8601('2026-05-08T02:41:53.672Z'),
  id: 'd6c8819f-7706-4575-8f69-fbf6c7f367a1',
  metadata: [],
  notes: 'Soluta conitor timidus confero.',
  number: 'A541909',
  services: [
    Models::Shared::DmsAppointmentService.new(
      id: '2eca6ee0-3d95-414d-83d1-5a5cdb27360b',
      name: 'Customer concern',
      pay_type: Models::Shared::PayType::WARRANTY,
      technician_user_ids: []
    ),
    Models::Shared::DmsAppointmentService.new(
      complaint: 'Check engine light on',
      id: 'b432d998-e455-4472-973b-7e860f3677e5',
      name: 'Customer concern',
      pay_type: Models::Shared::PayType::CUSTOMER,
      technician_user_ids: []
    ),
    Models::Shared::DmsAppointmentService.new(
      complaint: 'Due for service',
      id: 'a02296da-58c1-494d-b5bc-caddc43906f2',
      name: 'Customer concern',
      pay_type: Models::Shared::PayType::CUSTOMER,
      technician_user_ids: []
    ),
  ],
  start_at: DateTime.iso8601('2026-05-07T19:41:53.672Z'),
  status: Models::Shared::DmsAppointmentStatus::CANCELLED,
  transport_type: Models::Shared::TransportType::LOANER,
  updated_at: DateTime.iso8601('2025-04-06T16:31:30.890Z')
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
  id: '8810f7ef-4b63-4324-a05b-785bd379a3f2',
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
  updated_at: DateTime.iso8601('2026-10-28T10:08:42.936Z')
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
    end_at: DateTime.iso8601('2026-05-08T02:41:53.686Z'),
    id: '5a47c683-e8a4-4933-9119-d7ad05bcf24b',
    metadata: [],
    notes: 'Soluta conitor timidus confero.',
    number: 'A541909',
    services: [
      Models::Shared::DmsAppointmentService.new(
        id: 'bcc95f56-1ce6-486f-a905-540527e4e254',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::WARRANTY,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Check engine light on',
        id: '2d1d40f9-a6c0-40ae-b104-7717687702fa',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Due for service',
        id: 'aa78fbfc-88be-4cd3-9cfb-4ec090bd3711',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
    ],
    start_at: DateTime.iso8601('2026-05-07T19:41:53.686Z'),
    status: Models::Shared::DmsAppointmentStatus::CANCELLED,
    transport_type: Models::Shared::TransportType::LOANER,
    updated_at: DateTime.iso8601('2025-04-06T16:31:30.897Z')
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
    id: 'b376e48d-428f-4466-845b-769dea92b342',
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
    updated_at: DateTime.iso8601('2026-10-28T10:08:42.959Z')
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
    end_at: DateTime.iso8601('2026-05-08T02:41:53.686Z'),
    id: '5a47c683-e8a4-4933-9119-d7ad05bcf24b',
    metadata: [],
    notes: 'Soluta conitor timidus confero.',
    number: 'A541909',
    services: [
      Models::Shared::DmsAppointmentService.new(
        id: 'bcc95f56-1ce6-486f-a905-540527e4e254',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::WARRANTY,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Check engine light on',
        id: '2d1d40f9-a6c0-40ae-b104-7717687702fa',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Due for service',
        id: 'aa78fbfc-88be-4cd3-9cfb-4ec090bd3711',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
    ],
    start_at: DateTime.iso8601('2026-05-07T19:41:53.686Z'),
    status: Models::Shared::DmsAppointmentStatus::CANCELLED,
    transport_type: Models::Shared::TransportType::LOANER,
    updated_at: DateTime.iso8601('2025-04-06T16:31:30.897Z')
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
    id: 'b376e48d-428f-4466-845b-769dea92b342',
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
    updated_at: DateTime.iso8601('2026-10-28T10:08:42.959Z')
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