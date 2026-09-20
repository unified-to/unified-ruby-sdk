# Employee
(*employee*)

## Overview

### Available Operations

* [create_hris_employee](#create_hris_employee) - Create an employee
* [get_hris_employee](#get_hris_employee) - Retrieve an employee
* [list_hris_employees](#list_hris_employees) - List all employees
* [patch_hris_employee](#patch_hris_employee) - Update an employee
* [remove_hris_employee](#remove_hris_employee) - Remove an employee
* [update_hris_employee](#update_hris_employee) - Update an employee

## create_hris_employee

Create an employee

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisEmployee" method="post" path="/hris/{connection_id}/employee" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.employee.create_hris_employee(hris_employee: Models::Shared::HrisEmployee.new(
  address: Models::Shared::PropertyHrisEmployeeAddress.new(
    address1: '52008 Lansdowne Road',
    address2: 'Apt. 101',
    city: 'Connellyberg',
    country_code: 'US',
    postal_code: '18978',
    region: 'South Dakota',
    region_code: 'NM',
  ),
  bio: 'sushi devotee, singer',
  compensation: [
    Models::Shared::HrisCompensation.new(
      amount: 69_148.0,
      currency: 'CRC',
      frequency: Models::Shared::HrisCompensationFrequency::QUARTER,
      notes: 'Tergeo laborum laboriosam tutis.',
      type: Models::Shared::HrisCompensationType::EQUITY,
    ),
  ],
  created_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
  currency: 'IDR',
  date_of_birth: DateTime.iso8601('2001-04-22'),
  emails: [
    Models::Shared::HrisEmail.new(
      email: 'Zetta_Prohaska67@hotmail.com',
      type: Models::Shared::HrisEmailType::HOME,
    ),
  ],
  employee_number: 'YuOt169CGu',
  employment_status: Models::Shared::EmploymentStatus::ACTIVE,
  employment_type: Models::Shared::HrisEmployeeEmploymentType::VOLUNTEER,
  first_name: 'Zetta',
  gender: Models::Shared::HrisEmployeeGender::INTERSEX,
  has_mfa: true,
  hired_at: DateTime.iso8601('2023-05-11T17:04:46.643Z'),
  id: 'b1f83044-d9e4-44f1-a37c-cd9d1c08d03c',
  image_url: 'https://loremflickr.com/3684/2116?lock=4686991638584456',
  language_locale: 'es',
  last_name: 'Prohaska',
  locations: [],
  marital_status: Models::Shared::MaritalStatus::MARRIED,
  metadata: [
    Models::Shared::HrisMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::HrisMetadataFormat::TEXT,
      id: 'e7a3b044-e62a-4eba-89e0-dc76b4360ae4',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'tenetur',
    ),
  ],
  name: 'Zetta Prohaska',
  pronouns: 'she/her',
  relationships: [
    Models::Shared::HrisEmployeerelationship.new(
      emails: [
        Models::Shared::HrisEmail.new(
          email: 'Deshaun.Sanford24@yahoo.com',
        ),
        Models::Shared::HrisEmail.new(
          email: 'Rebeca.Dibbert11@hotmail.com',
        ),
        Models::Shared::HrisEmail.new(
          email: 'Hester80@gmail.com',
        ),
      ],
      name: 'Automotive',
      type: Models::Shared::HrisEmployeerelationshipType::EMERGENCY,
    ),
    Models::Shared::HrisEmployeerelationship.new(
      emails: [
        Models::Shared::HrisEmail.new(
          email: 'Benedict_Wisozk83@hotmail.com',
        ),
        Models::Shared::HrisEmail.new(
          email: 'Princess_Rath43@gmail.com',
        ),
        Models::Shared::HrisEmail.new(
          email: 'Elmira92@yahoo.com',
        ),
      ],
      name: 'Music',
      type: Models::Shared::HrisEmployeerelationshipType::FRIEND,
    ),
    Models::Shared::HrisEmployeerelationship.new(
      emails: [
        Models::Shared::HrisEmail.new(
          email: 'Jane30@gmail.com',
        ),
      ],
      name: 'Jewelry',
      type: Models::Shared::HrisEmployeerelationshipType::SIBLING,
    ),
  ],
  salutation: 'Miss',
  ssn_sin: 'yMRtj0Q3xO',
  storage_quota_allocated: 3_674_489.0,
  storage_quota_available: 7_748_057.0,
  storage_quota_used: 301_727.0,
  telephones: [
    Models::Shared::HrisTelephone.new(
      telephone: '(409) 801-3705',
      type: Models::Shared::HrisTelephoneType::FAX,
    ),
  ],
  termination_reason: 'Communis adnuo damnatio atavus terebro acies canis cogito triumphus creber temptatio defendo cubo amissio paulatim corroboro.',
  timeoff_days_total: 12.0,
  timeoff_days_used: 6.0,
  timezone: 'Africa/Harare',
  title: 'Investor Paradigm Liaison',
  updated_at: DateTime.iso8601('2022-02-19T23:33:49.513Z'),
), connection_id: '<id>')

unless res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_employee`                                                                                                                                  | [Models::Shared::HrisEmployee](../../models/shared/hrisemployee.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisEmployeeQueryParamFields](../../models/operations/createhrisemployeequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisEmployeeResponse)](../../models/operations/createhrisemployeeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_employee

Retrieve an employee

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisEmployee" method="get" path="/hris/{connection_id}/employee/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.employee.get_hris_employee(connection_id: '<id>', id: '<id>')

unless res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Employee                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisEmployeeQueryParamFields](../../models/operations/gethrisemployeequeryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisEmployeeResponse)](../../models/operations/gethrisemployeeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_employees

List all employees

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisEmployees" method="get" path="/hris/{connection_id}/employee" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisEmployeesRequest.new(
  connection_id: '<id>',
)

res = s.employee.list_hris_employees(request: req)

unless res.hris_employees.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListHrisEmployeesRequest](../../models/operations/listhrisemployeesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListHrisEmployeesResponse)](../../models/operations/listhrisemployeesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_employee

Update an employee

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisEmployee" method="patch" path="/hris/{connection_id}/employee/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisEmployeeRequest.new(
  hris_employee: Models::Shared::HrisEmployee.new(
    address: Models::Shared::PropertyHrisEmployeeAddress.new(
      address1: '52008 Lansdowne Road',
      address2: 'Apt. 101',
      city: 'Connellyberg',
      country_code: 'US',
      postal_code: '18978',
      region: 'South Dakota',
      region_code: 'NM',
    ),
    bio: 'sushi devotee, singer',
    compensation: [
      Models::Shared::HrisCompensation.new(
        amount: 69_148.0,
        currency: 'CRC',
        frequency: Models::Shared::HrisCompensationFrequency::QUARTER,
        notes: 'Tergeo laborum laboriosam tutis.',
        type: Models::Shared::HrisCompensationType::EQUITY,
      ),
    ],
    created_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    currency: 'IDR',
    date_of_birth: DateTime.iso8601('2001-04-22'),
    emails: [
      Models::Shared::HrisEmail.new(
        email: 'Zetta_Prohaska67@hotmail.com',
        type: Models::Shared::HrisEmailType::HOME,
      ),
    ],
    employee_number: 'YuOt169CGu',
    employment_status: Models::Shared::EmploymentStatus::ACTIVE,
    employment_type: Models::Shared::HrisEmployeeEmploymentType::VOLUNTEER,
    first_name: 'Zetta',
    gender: Models::Shared::HrisEmployeeGender::INTERSEX,
    has_mfa: true,
    hired_at: DateTime.iso8601('2023-05-11T17:04:46.693Z'),
    id: '9daf4178-ed2f-422c-b019-6eebb1e21adb',
    image_url: 'https://loremflickr.com/3684/2116?lock=4686991638584456',
    language_locale: 'es',
    last_name: 'Prohaska',
    locations: [],
    marital_status: Models::Shared::MaritalStatus::MARRIED,
    metadata: [
      Models::Shared::HrisMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::HrisMetadataFormat::TEXT,
        id: '0b31b975-454a-43b3-a4b0-e3409aba618e',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'tenetur',
      ),
    ],
    name: 'Zetta Prohaska',
    pronouns: 'she/her',
    relationships: [
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'Deshaun.Sanford24@yahoo.com',
          ),
          Models::Shared::HrisEmail.new(
            email: 'Rebeca.Dibbert11@hotmail.com',
          ),
          Models::Shared::HrisEmail.new(
            email: 'Hester80@gmail.com',
          ),
        ],
        name: 'Automotive',
        type: Models::Shared::HrisEmployeerelationshipType::EMERGENCY,
      ),
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'Benedict_Wisozk83@hotmail.com',
          ),
          Models::Shared::HrisEmail.new(
            email: 'Princess_Rath43@gmail.com',
          ),
          Models::Shared::HrisEmail.new(
            email: 'Elmira92@yahoo.com',
          ),
        ],
        name: 'Music',
        type: Models::Shared::HrisEmployeerelationshipType::FRIEND,
      ),
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'Jane30@gmail.com',
          ),
        ],
        name: 'Jewelry',
        type: Models::Shared::HrisEmployeerelationshipType::SIBLING,
      ),
    ],
    salutation: 'Miss',
    ssn_sin: 'yMRtj0Q3xO',
    storage_quota_allocated: 3_674_489.0,
    storage_quota_available: 7_748_057.0,
    storage_quota_used: 301_727.0,
    telephones: [
      Models::Shared::HrisTelephone.new(
        telephone: '(409) 801-3705',
        type: Models::Shared::HrisTelephoneType::FAX,
      ),
    ],
    termination_reason: 'Communis adnuo damnatio atavus terebro acies canis cogito triumphus creber temptatio defendo cubo amissio paulatim corroboro.',
    timeoff_days_total: 12.0,
    timeoff_days_used: 6.0,
    timezone: 'Africa/Harare',
    title: 'Investor Paradigm Liaison',
    updated_at: DateTime.iso8601('2022-02-19T23:33:49.546Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.employee.patch_hris_employee(request: req)

unless res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchHrisEmployeeRequest](../../models/operations/patchhrisemployeerequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchHrisEmployeeResponse)](../../models/operations/patchhrisemployeeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_employee

Remove an employee

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisEmployee" method="delete" path="/hris/{connection_id}/employee/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.employee.remove_hris_employee(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Employee   |

### Response

**[T.nilable(Models::Operations::RemoveHrisEmployeeResponse)](../../models/operations/removehrisemployeeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_employee

Update an employee

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisEmployee" method="put" path="/hris/{connection_id}/employee/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisEmployeeRequest.new(
  hris_employee: Models::Shared::HrisEmployee.new(
    address: Models::Shared::PropertyHrisEmployeeAddress.new(
      address1: '52008 Lansdowne Road',
      address2: 'Apt. 101',
      city: 'Connellyberg',
      country_code: 'US',
      postal_code: '18978',
      region: 'South Dakota',
      region_code: 'NM',
    ),
    bio: 'sushi devotee, singer',
    compensation: [
      Models::Shared::HrisCompensation.new(
        amount: 69_148.0,
        currency: 'CRC',
        frequency: Models::Shared::HrisCompensationFrequency::QUARTER,
        notes: 'Tergeo laborum laboriosam tutis.',
        type: Models::Shared::HrisCompensationType::EQUITY,
      ),
    ],
    created_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    currency: 'IDR',
    date_of_birth: DateTime.iso8601('2001-04-22'),
    emails: [
      Models::Shared::HrisEmail.new(
        email: 'Zetta_Prohaska67@hotmail.com',
        type: Models::Shared::HrisEmailType::HOME,
      ),
    ],
    employee_number: 'YuOt169CGu',
    employment_status: Models::Shared::EmploymentStatus::ACTIVE,
    employment_type: Models::Shared::HrisEmployeeEmploymentType::VOLUNTEER,
    first_name: 'Zetta',
    gender: Models::Shared::HrisEmployeeGender::INTERSEX,
    has_mfa: true,
    hired_at: DateTime.iso8601('2023-05-11T17:04:46.693Z'),
    id: '9daf4178-ed2f-422c-b019-6eebb1e21adb',
    image_url: 'https://loremflickr.com/3684/2116?lock=4686991638584456',
    language_locale: 'es',
    last_name: 'Prohaska',
    locations: [],
    marital_status: Models::Shared::MaritalStatus::MARRIED,
    metadata: [
      Models::Shared::HrisMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::HrisMetadataFormat::TEXT,
        id: '0b31b975-454a-43b3-a4b0-e3409aba618e',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'tenetur',
      ),
    ],
    name: 'Zetta Prohaska',
    pronouns: 'she/her',
    relationships: [
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'Deshaun.Sanford24@yahoo.com',
          ),
          Models::Shared::HrisEmail.new(
            email: 'Rebeca.Dibbert11@hotmail.com',
          ),
          Models::Shared::HrisEmail.new(
            email: 'Hester80@gmail.com',
          ),
        ],
        name: 'Automotive',
        type: Models::Shared::HrisEmployeerelationshipType::EMERGENCY,
      ),
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'Benedict_Wisozk83@hotmail.com',
          ),
          Models::Shared::HrisEmail.new(
            email: 'Princess_Rath43@gmail.com',
          ),
          Models::Shared::HrisEmail.new(
            email: 'Elmira92@yahoo.com',
          ),
        ],
        name: 'Music',
        type: Models::Shared::HrisEmployeerelationshipType::FRIEND,
      ),
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'Jane30@gmail.com',
          ),
        ],
        name: 'Jewelry',
        type: Models::Shared::HrisEmployeerelationshipType::SIBLING,
      ),
    ],
    salutation: 'Miss',
    ssn_sin: 'yMRtj0Q3xO',
    storage_quota_allocated: 3_674_489.0,
    storage_quota_available: 7_748_057.0,
    storage_quota_used: 301_727.0,
    telephones: [
      Models::Shared::HrisTelephone.new(
        telephone: '(409) 801-3705',
        type: Models::Shared::HrisTelephoneType::FAX,
      ),
    ],
    termination_reason: 'Communis adnuo damnatio atavus terebro acies canis cogito triumphus creber temptatio defendo cubo amissio paulatim corroboro.',
    timeoff_days_total: 12.0,
    timeoff_days_used: 6.0,
    timezone: 'Africa/Harare',
    title: 'Investor Paradigm Liaison',
    updated_at: DateTime.iso8601('2022-02-19T23:33:49.546Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.employee.update_hris_employee(request: req)

unless res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateHrisEmployeeRequest](../../models/operations/updatehrisemployeerequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateHrisEmployeeResponse)](../../models/operations/updatehrisemployeeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |