# Patient
(*patient*)

## Overview

### Available Operations

* [create_healthcare_patient](#create_healthcare_patient) - Create a patient
* [get_healthcare_patient](#get_healthcare_patient) - Retrieve a patient
* [list_healthcare_patients](#list_healthcare_patients) - List all patients
* [patch_healthcare_patient](#patch_healthcare_patient) - Update a patient
* [update_healthcare_patient](#update_healthcare_patient) - Update a patient

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

res = s.patient.create_healthcare_patient(healthcare_patient: Models::Shared::HealthcarePatient.new(
  address: Models::Shared::PropertyHealthcarePatientAddress.new(
    address1: '3645 Zoila Isle',
    address2: 'Suite 613',
    city: 'Jacintostead',
    country: 'US',
    postal_code: '31579',
    region: 'Minnesota',
  ),
  birthdate: '2025-02-06',
  created_at: DateTime.iso8601('2021-06-05T21:08:04.917Z'),
  emails: [
    Models::Shared::HealthcareEmail.new(
      email: 'alejandrin.parker@yahoo.com',
      type: Models::Shared::HealthcareEmailType::HOME,
    ),
  ],
  first_name: 'Alejandrin',
  gender: Models::Shared::HealthcarePatientGender::FEMALE,
  id: '305765c9-e908-472c-95f5-8583c533c8e2',
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
  updated_at: DateTime.iso8601('2026-06-18T00:44:16.161Z'),
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

res = s.patient.get_healthcare_patient(connection_id: '<id>', id: '<id>')

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

res = s.patient.list_healthcare_patients(request: req)

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
    birthdate: '2025-02-06',
    created_at: DateTime.iso8601('2021-06-05T21:08:04.917Z'),
    emails: [
      Models::Shared::HealthcareEmail.new(
        email: 'alejandrin.parker@yahoo.com',
        type: Models::Shared::HealthcareEmailType::HOME,
      ),
    ],
    first_name: 'Alejandrin',
    gender: Models::Shared::HealthcarePatientGender::FEMALE,
    id: '1d202cfd-4e6c-49e5-9609-0a7822cffea4',
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
    updated_at: DateTime.iso8601('2026-06-18T00:44:16.184Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.patient.patch_healthcare_patient(request: req)

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
    birthdate: '2025-02-06',
    created_at: DateTime.iso8601('2021-06-05T21:08:04.917Z'),
    emails: [
      Models::Shared::HealthcareEmail.new(
        email: 'alejandrin.parker@yahoo.com',
        type: Models::Shared::HealthcareEmailType::HOME,
      ),
    ],
    first_name: 'Alejandrin',
    gender: Models::Shared::HealthcarePatientGender::FEMALE,
    id: '1d202cfd-4e6c-49e5-9609-0a7822cffea4',
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
    updated_at: DateTime.iso8601('2026-06-18T00:44:16.184Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.patient.update_healthcare_patient(request: req)

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