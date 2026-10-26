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

Creates a HealthcarePatient. Provide the unified HealthcarePatient fields in the request body; they are mapped to the provider's API. Returns the created HealthcarePatient.

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
    address1: '162 Kirlin Mall',
    city: 'Dickinsonborough',
    country: 'US',
    postal_code: '54031',
    region: 'Nebraska',
  ),
  birthdate: '2025-02-16',
  contacts: [
    Models::Shared::HealthcarePatientContact.new(
      emails: [],
      name: 'Antonia Lebsack',
      relationship: 'Spouse',
      telephones: [
        Models::Shared::HealthcareTelephone.new(
          telephone: '(695) 328-7029 x4412',
          type: Models::Shared::HealthcareTelephoneType::MOBILE,
        ),
      ],
    ),
  ],
  created_at: DateTime.iso8601('2021-06-05T21:08:04.917Z'),
  emails: [
    Models::Shared::HealthcareEmail.new(
      email: 'alejandrin.parker@icloud.com',
      type: Models::Shared::HealthcareEmailType::HOME,
    ),
  ],
  first_name: 'Alejandrin',
  gender: Models::Shared::HealthcarePatientGender::FEMALE,
  id: '71881844-d2cc-4aee-b83b-db7cdd751a77',
  identifiers: [
    Models::Shared::HealthcareIdentifier.new(
      type: Models::Shared::HealthcareIdentifierType::MRN,
      value: '57992636',
    ),
  ],
  is_active: true,
  is_deceased: false,
  language: 'zh',
  last_name: 'Parker',
  metadata: [],
  name: 'Alejandrin Parker',
  practitioner_ids: [],
  telephones: [
    Models::Shared::HealthcareTelephone.new(
      telephone: '1-219-555-9023 x08295',
      type: Models::Shared::HealthcareTelephoneType::MOBILE,
    ),
  ],
  updated_at: DateTime.iso8601('2026-06-27T08:57:28.240Z'),
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

Retrieves a single HealthcarePatient by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Returns a list of HealthcarePatients. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Updates the HealthcarePatient identified by `id`. Provide the unified HealthcarePatient fields to change in the request body.

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
      address1: '162 Kirlin Mall',
      city: 'Dickinsonborough',
      country: 'US',
      postal_code: '54031',
      region: 'Nebraska',
    ),
    birthdate: '2025-02-16',
    contacts: [
      Models::Shared::HealthcarePatientContact.new(
        emails: [],
        name: 'Antonia Lebsack',
        relationship: 'Spouse',
        telephones: [
          Models::Shared::HealthcareTelephone.new(
            telephone: '(695) 328-7029 x4412',
            type: Models::Shared::HealthcareTelephoneType::MOBILE,
          ),
        ],
      ),
    ],
    created_at: DateTime.iso8601('2021-06-05T21:08:04.917Z'),
    emails: [
      Models::Shared::HealthcareEmail.new(
        email: 'alejandrin.parker@icloud.com',
        type: Models::Shared::HealthcareEmailType::HOME,
      ),
    ],
    first_name: 'Alejandrin',
    gender: Models::Shared::HealthcarePatientGender::FEMALE,
    id: 'c43de987-daf7-4221-bc95-4e2db67aae05',
    identifiers: [
      Models::Shared::HealthcareIdentifier.new(
        type: Models::Shared::HealthcareIdentifierType::MRN,
        value: '57992636',
      ),
    ],
    is_active: true,
    is_deceased: false,
    language: 'zh',
    last_name: 'Parker',
    metadata: [],
    name: 'Alejandrin Parker',
    practitioner_ids: [],
    telephones: [
      Models::Shared::HealthcareTelephone.new(
        telephone: '1-219-555-9023 x08295',
        type: Models::Shared::HealthcareTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2026-06-27T08:57:28.292Z'),
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

Updates the HealthcarePatient identified by `id`. Provide the unified HealthcarePatient fields to change in the request body.

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
      address1: '162 Kirlin Mall',
      city: 'Dickinsonborough',
      country: 'US',
      postal_code: '54031',
      region: 'Nebraska',
    ),
    birthdate: '2025-02-16',
    contacts: [
      Models::Shared::HealthcarePatientContact.new(
        emails: [],
        name: 'Antonia Lebsack',
        relationship: 'Spouse',
        telephones: [
          Models::Shared::HealthcareTelephone.new(
            telephone: '(695) 328-7029 x4412',
            type: Models::Shared::HealthcareTelephoneType::MOBILE,
          ),
        ],
      ),
    ],
    created_at: DateTime.iso8601('2021-06-05T21:08:04.917Z'),
    emails: [
      Models::Shared::HealthcareEmail.new(
        email: 'alejandrin.parker@icloud.com',
        type: Models::Shared::HealthcareEmailType::HOME,
      ),
    ],
    first_name: 'Alejandrin',
    gender: Models::Shared::HealthcarePatientGender::FEMALE,
    id: 'c43de987-daf7-4221-bc95-4e2db67aae05',
    identifiers: [
      Models::Shared::HealthcareIdentifier.new(
        type: Models::Shared::HealthcareIdentifierType::MRN,
        value: '57992636',
      ),
    ],
    is_active: true,
    is_deceased: false,
    language: 'zh',
    last_name: 'Parker',
    metadata: [],
    name: 'Alejandrin Parker',
    practitioner_ids: [],
    telephones: [
      Models::Shared::HealthcareTelephone.new(
        telephone: '1-219-555-9023 x08295',
        type: Models::Shared::HealthcareTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2026-06-27T08:57:28.292Z'),
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