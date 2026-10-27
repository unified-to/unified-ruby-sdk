# Appointment
(*appointment*)

## Overview

### Available Operations

* [create_healthcare_appointment](#create_healthcare_appointment) - Create an appointment
* [get_healthcare_appointment](#get_healthcare_appointment) - Retrieve an appointment
* [list_healthcare_appointments](#list_healthcare_appointments) - List all appointments
* [patch_healthcare_appointment](#patch_healthcare_appointment) - Update an appointment
* [remove_healthcare_appointment](#remove_healthcare_appointment) - Remove an appointment
* [update_healthcare_appointment](#update_healthcare_appointment) - Update an appointment

## create_healthcare_appointment

Creates a HealthcareAppointment. Provide the unified HealthcareAppointment fields in the request body; they are mapped to the provider's API. Returns the created HealthcareAppointment.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHealthcareAppointment" method="post" path="/healthcare/{connection_id}/appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.appointment.create_healthcare_appointment(healthcare_appointment: Models::Shared::HealthcareAppointment.new(
  created_at: DateTime.iso8601('2023-04-11T08:16:20.874Z'),
  description: 'clarus aptus cetera',
  end_at: DateTime.iso8601('2023-12-12T13:04:41.451Z'),
  id: '5691f567-1c52-45b8-b343-41ca1bf13c11',
  is_virtual: true,
  meeting_url: 'https://expensive-slipper.name/',
  metadata: [],
  notes: 'Stabilis triduana colo casus anser ver alo beatus contabesco amiculum.',
  practitioner_ids: [],
  service_types: [
    Models::Shared::HealthcareCode.new(
      code: '12762740',
      display: 'New patient visit',
      system: 'http://snomed.info/sct',
    ),
  ],
  slot_ids: [],
  start_at: DateTime.iso8601('2023-12-12T12:34:41.451Z'),
  status: Models::Shared::HealthcareAppointmentStatus::BOOKED,
  updated_at: DateTime.iso8601('2026-09-28T00:27:20.773Z'),
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

## get_healthcare_appointment

Retrieves a single HealthcareAppointment by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareAppointment" method="get" path="/healthcare/{connection_id}/appointment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

## list_healthcare_appointments

Returns a list of HealthcareAppointments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareAppointments" method="get" path="/healthcare/{connection_id}/appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareAppointmentsRequest.new(
  connection_id: '<id>',
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

## patch_healthcare_appointment

Updates the HealthcareAppointment identified by `id`. Provide the unified HealthcareAppointment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHealthcareAppointment" method="patch" path="/healthcare/{connection_id}/appointment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHealthcareAppointmentRequest.new(
  healthcare_appointment: Models::Shared::HealthcareAppointment.new(
    created_at: DateTime.iso8601('2023-04-11T08:16:20.874Z'),
    description: 'clarus aptus cetera',
    end_at: DateTime.iso8601('2023-12-12T13:04:41.451Z'),
    id: 'c7a228b5-3e12-4f36-ab4a-4d7b53ed1146',
    is_virtual: true,
    meeting_url: 'https://expensive-slipper.name/',
    metadata: [],
    notes: 'Stabilis triduana colo casus anser ver alo beatus contabesco amiculum.',
    practitioner_ids: [],
    service_types: [
      Models::Shared::HealthcareCode.new(
        code: '12762740',
        display: 'New patient visit',
        system: 'http://snomed.info/sct',
      ),
    ],
    slot_ids: [],
    start_at: DateTime.iso8601('2023-12-12T12:34:41.451Z'),
    status: Models::Shared::HealthcareAppointmentStatus::BOOKED,
    updated_at: DateTime.iso8601('2026-09-28T00:27:20.803Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

## remove_healthcare_appointment

Deletes the HealthcareAppointment identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHealthcareAppointment" method="delete" path="/healthcare/{connection_id}/appointment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

## update_healthcare_appointment

Updates the HealthcareAppointment identified by `id`. Provide the unified HealthcareAppointment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHealthcareAppointment" method="put" path="/healthcare/{connection_id}/appointment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHealthcareAppointmentRequest.new(
  healthcare_appointment: Models::Shared::HealthcareAppointment.new(
    created_at: DateTime.iso8601('2023-04-11T08:16:20.874Z'),
    description: 'clarus aptus cetera',
    end_at: DateTime.iso8601('2023-12-12T13:04:41.451Z'),
    id: 'c7a228b5-3e12-4f36-ab4a-4d7b53ed1146',
    is_virtual: true,
    meeting_url: 'https://expensive-slipper.name/',
    metadata: [],
    notes: 'Stabilis triduana colo casus anser ver alo beatus contabesco amiculum.',
    practitioner_ids: [],
    service_types: [
      Models::Shared::HealthcareCode.new(
        code: '12762740',
        display: 'New patient visit',
        system: 'http://snomed.info/sct',
      ),
    ],
    slot_ids: [],
    start_at: DateTime.iso8601('2023-12-12T12:34:41.451Z'),
    status: Models::Shared::HealthcareAppointmentStatus::BOOKED,
    updated_at: DateTime.iso8601('2026-09-28T00:27:20.803Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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