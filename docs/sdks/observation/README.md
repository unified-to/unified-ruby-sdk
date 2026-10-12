# Observation
(*observation*)

## Overview

### Available Operations

* [create_healthcare_observation](#create_healthcare_observation) - Create an observation
* [get_healthcare_observation](#get_healthcare_observation) - Retrieve an observation
* [list_healthcare_observations](#list_healthcare_observations) - List all observations

## create_healthcare_observation

Create an observation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHealthcareObservation" method="post" path="/healthcare/{connection_id}/observation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.observation.create_healthcare_observation(healthcare_observation: Models::Shared::HealthcareObservation.new(
  codes: [
    Models::Shared::HealthcareCode.new(
      code: '85354-9',
      display: 'Blood pressure panel',
      system: 'http://loinc.org',
    ),
  ],
  components: [
    Models::Shared::HealthcareObservationComponent.new(
      codes: [
        Models::Shared::HealthcareCode.new(
          code: '8480-6',
          system: 'http://loinc.org',
        ),
      ],
      name: 'Systolic blood pressure',
      value_number: 103.0,
      value_unit: 'mm[Hg]',
    ),
    Models::Shared::HealthcareObservationComponent.new(
      codes: [
        Models::Shared::HealthcareCode.new(
          code: '8462-4',
          system: 'http://loinc.org',
        ),
      ],
      name: 'Diastolic blood pressure',
      value_number: 60.0,
      value_unit: 'mm[Hg]',
    ),
  ],
  created_at: DateTime.iso8601('2022-12-06T21:34:04.293Z'),
  id: '8f5c7a47-59a0-4c2e-897b-c2a554e78b65',
  interpretation: Models::Shared::Interpretation::CRITICAL_HIGH,
  issued_at: DateTime.iso8601('2025-05-05T17:20:31.059Z'),
  metadata: [],
  name: 'Blood pressure panel',
  observed_at: DateTime.iso8601('2025-01-15T04:04:08.640Z'),
  status: Models::Shared::HealthcareObservationStatus::CORRECTED,
  type: Models::Shared::HealthcareObservationType::VITAL_SIGNS,
  updated_at: DateTime.iso8601('2026-03-16T12:14:49.257Z'),
), connection_id: '<id>')

unless res.healthcare_observation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                           | Type                                                                                                                                                | Required                                                                                                                                            | Description                                                                                                                                         |
| --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| `healthcare_observation`                                                                                                                            | [Models::Shared::HealthcareObservation](../../models/shared/healthcareobservation.md)                                                               | :heavy_check_mark:                                                                                                                                  | N/A                                                                                                                                                 |
| `connection_id`                                                                                                                                     | *::String*                                                                                                                                          | :heavy_check_mark:                                                                                                                                  | ID of the connection                                                                                                                                |
| `fields_`                                                                                                                                           | T::Array<[Models::Operations::CreateHealthcareObservationQueryParamFields](../../models/operations/createhealthcareobservationqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                  | Fields to return                                                                                                                                    |
| `raw`                                                                                                                                               | *T.nilable(::String)*                                                                                                                               | :heavy_minus_sign:                                                                                                                                  | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar    |

### Response

**[T.nilable(Models::Operations::CreateHealthcareObservationResponse)](../../models/operations/createhealthcareobservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_observation

Retrieve an observation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareObservation" method="get" path="/healthcare/{connection_id}/observation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.observation.get_healthcare_observation(connection_id: '<id>', id: '<id>')

unless res.healthcare_observation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Observation                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareObservationQueryParamFields](../../models/operations/gethealthcareobservationqueryparamfields.md)>    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareObservationResponse)](../../models/operations/gethealthcareobservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_observations

List all observations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareObservations" method="get" path="/healthcare/{connection_id}/observation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareObservationsRequest.new(
  connection_id: '<id>',
)

res = s.observation.list_healthcare_observations(request: req)

unless res.healthcare_observations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListHealthcareObservationsRequest](../../models/operations/listhealthcareobservationsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListHealthcareObservationsResponse)](../../models/operations/listhealthcareobservationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |