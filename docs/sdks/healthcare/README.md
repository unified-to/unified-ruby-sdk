# Healthcare
(*healthcare*)

## Overview

### Available Operations

* [create_healthcare_appointment](#create_healthcare_appointment) - Create an appointment
* [create_healthcare_observation](#create_healthcare_observation) - Create an observation
* [create_healthcare_patient](#create_healthcare_patient) - Create a patient
* [get_healthcare_allergy](#get_healthcare_allergy) - Retrieve an allergy
* [get_healthcare_appointment](#get_healthcare_appointment) - Retrieve an appointment
* [get_healthcare_condition](#get_healthcare_condition) - Retrieve a condition
* [get_healthcare_encounter](#get_healthcare_encounter) - Retrieve an encounter
* [get_healthcare_immunization](#get_healthcare_immunization) - Retrieve an immunization
* [get_healthcare_location](#get_healthcare_location) - Retrieve a location
* [get_healthcare_medication](#get_healthcare_medication) - Retrieve a medication
* [get_healthcare_observation](#get_healthcare_observation) - Retrieve an observation
* [get_healthcare_patient](#get_healthcare_patient) - Retrieve a patient
* [get_healthcare_practitioner](#get_healthcare_practitioner) - Retrieve a practitioner
* [get_healthcare_slot](#get_healthcare_slot) - Retrieve a slot
* [list_healthcare_allergies](#list_healthcare_allergies) - List all allergies
* [list_healthcare_appointments](#list_healthcare_appointments) - List all appointments
* [list_healthcare_conditions](#list_healthcare_conditions) - List all conditions
* [list_healthcare_encounters](#list_healthcare_encounters) - List all encounters
* [list_healthcare_immunizations](#list_healthcare_immunizations) - List all immunizations
* [list_healthcare_locations](#list_healthcare_locations) - List all locations
* [list_healthcare_medications](#list_healthcare_medications) - List all medications
* [list_healthcare_observations](#list_healthcare_observations) - List all observations
* [list_healthcare_patients](#list_healthcare_patients) - List all patients
* [list_healthcare_practitioners](#list_healthcare_practitioners) - List all practitioners
* [list_healthcare_slots](#list_healthcare_slots) - List all slots
* [patch_healthcare_appointment](#patch_healthcare_appointment) - Update an appointment
* [patch_healthcare_patient](#patch_healthcare_patient) - Update a patient
* [remove_healthcare_appointment](#remove_healthcare_appointment) - Remove an appointment
* [update_healthcare_appointment](#update_healthcare_appointment) - Update an appointment
* [update_healthcare_patient](#update_healthcare_patient) - Update a patient

## create_healthcare_appointment

Create an appointment

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

res = s.healthcare.create_healthcare_appointment(healthcare_appointment: Models::Shared::HealthcareAppointment.new(
  created_at: DateTime.iso8601('2023-04-11T08:16:20.874Z'),
  description: 'clarus aptus cetera',
  end_at: DateTime.iso8601('2023-12-12T13:04:41.451Z'),
  id: '80af28db-0447-46e2-b142-5768bf892921',
  metadata: [],
  practitioner_ids: [],
  reasons: [
    Models::Shared::HealthcareCode.new(
      code: '12762740',
      display: 'cubicularis caput',
      system: 'http://snomed.info/sct',
    ),
  ],
  service_types: [
    Models::Shared::HealthcareCode.new(
      code: '61128108',
      display: 'Annual physical',
      system: 'http://snomed.info/sct',
    ),
  ],
  slot_ids: [],
  start_at: DateTime.iso8601('2023-12-12T12:34:41.451Z'),
  status: Models::Shared::HealthcareAppointmentStatus::BOOKED,
  updated_at: DateTime.iso8601('2025-11-17T04:25:54.948Z'),
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

res = s.healthcare.create_healthcare_observation(healthcare_observation: Models::Shared::HealthcareObservation.new(
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
  id: '9a713953-1a54-490d-a70f-bff11be36538',
  interpretation: Models::Shared::Interpretation::CRITICAL_HIGH,
  issued_at: DateTime.iso8601('2025-05-09T12:30:05.716Z'),
  metadata: [],
  name: 'Blood pressure panel',
  observed_at: DateTime.iso8601('2025-01-18T11:47:13.788Z'),
  status: Models::Shared::HealthcareObservationStatus::CORRECTED,
  type: Models::Shared::HealthcareObservationType::VITAL_SIGNS,
  updated_at: DateTime.iso8601('2026-03-21T15:59:06.549Z'),
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

## create_healthcare_patient

Create a patient

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHealthcarePatient" method="post" path="/healthcare/{connection_id}/patient" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.healthcare.create_healthcare_patient(healthcare_patient: Models::Shared::HealthcarePatient.new(
  address: Models::Shared::PropertyHealthcarePatientAddress.new(
    address1: '3645 Zoila Isle',
    address2: 'Suite 613',
    city: 'Jacintostead',
    country: 'US',
    postal_code: '31579',
    region: 'Minnesota',
  ),
  birthdate: '2025-02-09',
  created_at: DateTime.iso8601('2021-06-05T21:08:04.917Z'),
  emails: [
    Models::Shared::HealthcareEmail.new(
      email: 'alejandrin.parker@yahoo.com',
      type: Models::Shared::HealthcareEmailType::HOME,
    ),
  ],
  first_name: 'Alejandrin',
  gender: Models::Shared::HealthcarePatientGender::FEMALE,
  id: 'eca3858f-c799-4f09-9a26-8cd996b91528',
  identifiers: [
    Models::Shared::HealthcareIdentifier.new(
      type: Models::Shared::HealthcareIdentifierType::MRN,
      value: '92636004',
    ),
  ],
  is_active: true,
  is_deceased: false,
  language: 'en',
  last_name: 'Parker',
  metadata: [],
  name: 'Alejandrin Parker',
  practitioner_ids: [],
  telephones: [
    Models::Shared::HealthcareTelephone.new(
      telephone: '659.223.0829 x590',
      type: Models::Shared::HealthcareTelephoneType::MOBILE,
    ),
  ],
  updated_at: DateTime.iso8601('2026-06-19T23:26:26.323Z'),
), connection_id: '<id>')

unless res.healthcare_patient.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `healthcare_patient`                                                                                                                             | [Models::Shared::HealthcarePatient](../../models/shared/healthcarepatient.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHealthcarePatientQueryParamFields](../../models/operations/createhealthcarepatientqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHealthcarePatientResponse)](../../models/operations/createhealthcarepatientresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_allergy

Retrieve an allergy

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareAllergy" method="get" path="/healthcare/{connection_id}/allergy/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.healthcare.get_healthcare_allergy(connection_id: '<id>', id: '<id>')

unless res.healthcare_allergy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Allergy                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareAllergyQueryParamFields](../../models/operations/gethealthcareallergyqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareAllergyResponse)](../../models/operations/gethealthcareallergyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_appointment

Retrieve an appointment

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

res = s.healthcare.get_healthcare_appointment(connection_id: '<id>', id: '<id>')

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

## get_healthcare_condition

Retrieve a condition

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareCondition" method="get" path="/healthcare/{connection_id}/condition/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.healthcare.get_healthcare_condition(connection_id: '<id>', id: '<id>')

unless res.healthcare_condition.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Condition                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareConditionQueryParamFields](../../models/operations/gethealthcareconditionqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareConditionResponse)](../../models/operations/gethealthcareconditionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_encounter

Retrieve an encounter

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareEncounter" method="get" path="/healthcare/{connection_id}/encounter/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.healthcare.get_healthcare_encounter(connection_id: '<id>', id: '<id>')

unless res.healthcare_encounter.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Encounter                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareEncounterQueryParamFields](../../models/operations/gethealthcareencounterqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareEncounterResponse)](../../models/operations/gethealthcareencounterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_immunization

Retrieve an immunization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareImmunization" method="get" path="/healthcare/{connection_id}/immunization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.healthcare.get_healthcare_immunization(connection_id: '<id>', id: '<id>')

unless res.healthcare_immunization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Immunization                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareImmunizationQueryParamFields](../../models/operations/gethealthcareimmunizationqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareImmunizationResponse)](../../models/operations/gethealthcareimmunizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_location

Retrieve a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareLocation" method="get" path="/healthcare/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.healthcare.get_healthcare_location(connection_id: '<id>', id: '<id>')

unless res.healthcare_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Location                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareLocationQueryParamFields](../../models/operations/gethealthcarelocationqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareLocationResponse)](../../models/operations/gethealthcarelocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_medication

Retrieve a medication

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareMedication" method="get" path="/healthcare/{connection_id}/medication/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.healthcare.get_healthcare_medication(connection_id: '<id>', id: '<id>')

unless res.healthcare_medication.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Medication                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareMedicationQueryParamFields](../../models/operations/gethealthcaremedicationqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareMedicationResponse)](../../models/operations/gethealthcaremedicationresponse.md)**

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

res = s.healthcare.get_healthcare_observation(connection_id: '<id>', id: '<id>')

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

## get_healthcare_patient

Retrieve a patient

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcarePatient" method="get" path="/healthcare/{connection_id}/patient/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.healthcare.get_healthcare_patient(connection_id: '<id>', id: '<id>')

unless res.healthcare_patient.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Patient                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcarePatientQueryParamFields](../../models/operations/gethealthcarepatientqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcarePatientResponse)](../../models/operations/gethealthcarepatientresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_practitioner

Retrieve a practitioner

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcarePractitioner" method="get" path="/healthcare/{connection_id}/practitioner/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.healthcare.get_healthcare_practitioner(connection_id: '<id>', id: '<id>')

unless res.healthcare_practitioner.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Practitioner                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcarePractitionerQueryParamFields](../../models/operations/gethealthcarepractitionerqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcarePractitionerResponse)](../../models/operations/gethealthcarepractitionerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_slot

Retrieve a slot

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareSlot" method="get" path="/healthcare/{connection_id}/slot/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.healthcare.get_healthcare_slot(connection_id: '<id>', id: '<id>')

unless res.healthcare_slot.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Slot                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareSlotQueryParamFields](../../models/operations/gethealthcareslotqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareSlotResponse)](../../models/operations/gethealthcareslotresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_allergies

List all allergies

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareAllergies" method="get" path="/healthcare/{connection_id}/allergy" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareAllergiesRequest.new(
  connection_id: '<id>',
)

res = s.healthcare.list_healthcare_allergies(request: req)

unless res.healthcare_allergies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListHealthcareAllergiesRequest](../../models/operations/listhealthcareallergiesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListHealthcareAllergiesResponse)](../../models/operations/listhealthcareallergiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_appointments

List all appointments

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

res = s.healthcare.list_healthcare_appointments(request: req)

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

## list_healthcare_conditions

List all conditions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareConditions" method="get" path="/healthcare/{connection_id}/condition" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareConditionsRequest.new(
  connection_id: '<id>',
)

res = s.healthcare.list_healthcare_conditions(request: req)

unless res.healthcare_conditions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListHealthcareConditionsRequest](../../models/operations/listhealthcareconditionsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListHealthcareConditionsResponse)](../../models/operations/listhealthcareconditionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_encounters

List all encounters

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareEncounters" method="get" path="/healthcare/{connection_id}/encounter" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareEncountersRequest.new(
  connection_id: '<id>',
)

res = s.healthcare.list_healthcare_encounters(request: req)

unless res.healthcare_encounters.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListHealthcareEncountersRequest](../../models/operations/listhealthcareencountersrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListHealthcareEncountersResponse)](../../models/operations/listhealthcareencountersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_immunizations

List all immunizations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareImmunizations" method="get" path="/healthcare/{connection_id}/immunization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareImmunizationsRequest.new(
  connection_id: '<id>',
)

res = s.healthcare.list_healthcare_immunizations(request: req)

unless res.healthcare_immunizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListHealthcareImmunizationsRequest](../../models/operations/listhealthcareimmunizationsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListHealthcareImmunizationsResponse)](../../models/operations/listhealthcareimmunizationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_locations

List all locations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareLocations" method="get" path="/healthcare/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareLocationsRequest.new(
  connection_id: '<id>',
)

res = s.healthcare.list_healthcare_locations(request: req)

unless res.healthcare_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListHealthcareLocationsRequest](../../models/operations/listhealthcarelocationsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListHealthcareLocationsResponse)](../../models/operations/listhealthcarelocationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_medications

List all medications

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareMedications" method="get" path="/healthcare/{connection_id}/medication" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareMedicationsRequest.new(
  connection_id: '<id>',
)

res = s.healthcare.list_healthcare_medications(request: req)

unless res.healthcare_medications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::ListHealthcareMedicationsRequest](../../models/operations/listhealthcaremedicationsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::ListHealthcareMedicationsResponse)](../../models/operations/listhealthcaremedicationsresponse.md)**

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

res = s.healthcare.list_healthcare_observations(request: req)

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

## list_healthcare_patients

List all patients

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcarePatients" method="get" path="/healthcare/{connection_id}/patient" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcarePatientsRequest.new(
  connection_id: '<id>',
)

res = s.healthcare.list_healthcare_patients(request: req)

unless res.healthcare_patients.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListHealthcarePatientsRequest](../../models/operations/listhealthcarepatientsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListHealthcarePatientsResponse)](../../models/operations/listhealthcarepatientsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_practitioners

List all practitioners

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcarePractitioners" method="get" path="/healthcare/{connection_id}/practitioner" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcarePractitionersRequest.new(
  connection_id: '<id>',
)

res = s.healthcare.list_healthcare_practitioners(request: req)

unless res.healthcare_practitioners.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListHealthcarePractitionersRequest](../../models/operations/listhealthcarepractitionersrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListHealthcarePractitionersResponse)](../../models/operations/listhealthcarepractitionersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_slots

List all slots

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareSlots" method="get" path="/healthcare/{connection_id}/slot" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareSlotsRequest.new(
  connection_id: '<id>',
)

res = s.healthcare.list_healthcare_slots(request: req)

unless res.healthcare_slots.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListHealthcareSlotsRequest](../../models/operations/listhealthcareslotsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListHealthcareSlotsResponse)](../../models/operations/listhealthcareslotsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_healthcare_appointment

Update an appointment

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
    id: 'd528882e-e169-4021-afe0-7e7885bf9c8e',
    metadata: [],
    practitioner_ids: [],
    reasons: [
      Models::Shared::HealthcareCode.new(
        code: '12762740',
        display: 'cubicularis caput',
        system: 'http://snomed.info/sct',
      ),
    ],
    service_types: [
      Models::Shared::HealthcareCode.new(
        code: '61128108',
        display: 'Annual physical',
        system: 'http://snomed.info/sct',
      ),
    ],
    slot_ids: [],
    start_at: DateTime.iso8601('2023-12-12T12:34:41.451Z'),
    status: Models::Shared::HealthcareAppointmentStatus::BOOKED,
    updated_at: DateTime.iso8601('2025-11-17T04:25:54.964Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.healthcare.patch_healthcare_appointment(request: req)

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

## patch_healthcare_patient

Update a patient

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHealthcarePatient" method="patch" path="/healthcare/{connection_id}/patient/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHealthcarePatientRequest.new(
  healthcare_patient: Models::Shared::HealthcarePatient.new(
    address: Models::Shared::PropertyHealthcarePatientAddress.new(
      address1: '3645 Zoila Isle',
      address2: 'Suite 613',
      city: 'Jacintostead',
      country: 'US',
      postal_code: '31579',
      region: 'Minnesota',
    ),
    birthdate: '2025-02-09',
    created_at: DateTime.iso8601('2021-06-05T21:08:04.917Z'),
    emails: [
      Models::Shared::HealthcareEmail.new(
        email: 'alejandrin.parker@yahoo.com',
        type: Models::Shared::HealthcareEmailType::HOME,
      ),
    ],
    first_name: 'Alejandrin',
    gender: Models::Shared::HealthcarePatientGender::FEMALE,
    id: 'ff03defe-888a-412b-a562-feac195a7a8b',
    identifiers: [
      Models::Shared::HealthcareIdentifier.new(
        type: Models::Shared::HealthcareIdentifierType::MRN,
        value: '92636004',
      ),
    ],
    is_active: true,
    is_deceased: false,
    language: 'en',
    last_name: 'Parker',
    metadata: [],
    name: 'Alejandrin Parker',
    practitioner_ids: [],
    telephones: [
      Models::Shared::HealthcareTelephone.new(
        telephone: '659.223.0829 x590',
        type: Models::Shared::HealthcareTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2026-06-19T23:26:26.344Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.healthcare.patch_healthcare_patient(request: req)

unless res.healthcare_patient.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchHealthcarePatientRequest](../../models/operations/patchhealthcarepatientrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchHealthcarePatientResponse)](../../models/operations/patchhealthcarepatientresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_healthcare_appointment

Remove an appointment

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

res = s.healthcare.remove_healthcare_appointment(connection_id: '<id>', id: '<id>')

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

Update an appointment

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
    id: 'd528882e-e169-4021-afe0-7e7885bf9c8e',
    metadata: [],
    practitioner_ids: [],
    reasons: [
      Models::Shared::HealthcareCode.new(
        code: '12762740',
        display: 'cubicularis caput',
        system: 'http://snomed.info/sct',
      ),
    ],
    service_types: [
      Models::Shared::HealthcareCode.new(
        code: '61128108',
        display: 'Annual physical',
        system: 'http://snomed.info/sct',
      ),
    ],
    slot_ids: [],
    start_at: DateTime.iso8601('2023-12-12T12:34:41.451Z'),
    status: Models::Shared::HealthcareAppointmentStatus::BOOKED,
    updated_at: DateTime.iso8601('2025-11-17T04:25:54.964Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.healthcare.update_healthcare_appointment(request: req)

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

## update_healthcare_patient

Update a patient

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHealthcarePatient" method="put" path="/healthcare/{connection_id}/patient/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHealthcarePatientRequest.new(
  healthcare_patient: Models::Shared::HealthcarePatient.new(
    address: Models::Shared::PropertyHealthcarePatientAddress.new(
      address1: '3645 Zoila Isle',
      address2: 'Suite 613',
      city: 'Jacintostead',
      country: 'US',
      postal_code: '31579',
      region: 'Minnesota',
    ),
    birthdate: '2025-02-09',
    created_at: DateTime.iso8601('2021-06-05T21:08:04.917Z'),
    emails: [
      Models::Shared::HealthcareEmail.new(
        email: 'alejandrin.parker@yahoo.com',
        type: Models::Shared::HealthcareEmailType::HOME,
      ),
    ],
    first_name: 'Alejandrin',
    gender: Models::Shared::HealthcarePatientGender::FEMALE,
    id: 'ff03defe-888a-412b-a562-feac195a7a8b',
    identifiers: [
      Models::Shared::HealthcareIdentifier.new(
        type: Models::Shared::HealthcareIdentifierType::MRN,
        value: '92636004',
      ),
    ],
    is_active: true,
    is_deceased: false,
    language: 'en',
    last_name: 'Parker',
    metadata: [],
    name: 'Alejandrin Parker',
    practitioner_ids: [],
    telephones: [
      Models::Shared::HealthcareTelephone.new(
        telephone: '659.223.0829 x590',
        type: Models::Shared::HealthcareTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2026-06-19T23:26:26.344Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.healthcare.update_healthcare_patient(request: req)

unless res.healthcare_patient.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateHealthcarePatientRequest](../../models/operations/updatehealthcarepatientrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateHealthcarePatientResponse)](../../models/operations/updatehealthcarepatientresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |