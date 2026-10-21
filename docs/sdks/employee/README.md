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
    address1: '7431 Hintz Parkway',
    address2: 'Apt. 520',
    city: 'Port Rogerview',
    country_code: 'US',
    postal_code: '01711',
    region: 'Missouri',
    region_code: 'TN',
  ),
  bio: 'fun advocate  🇱🇻',
  compensation: [
    Models::Shared::HrisCompensation.new(
      amount: 95_000.0,
      currency: 'USD',
      frequency: Models::Shared::HrisCompensationFrequency::YEAR,
      notes: 'Eius.',
      type: Models::Shared::HrisCompensationType::OTHER,
    ),
  ],
  created_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
  currency: 'USD',
  date_of_birth: DateTime.iso8601('2001-04-22'),
  emails: [
    Models::Shared::HrisEmail.new(
      email: 'zetta.prohaska@insidious-stump.net',
      type: Models::Shared::HrisEmailType::WORK,
    ),
  ],
  employee_number: 'uCk3qaL1ei',
  employment_status: Models::Shared::EmploymentStatus::ACTIVE,
  employment_type: Models::Shared::HrisEmployeeEmploymentType::PART_TIME,
  first_name: 'Zetta',
  flsa_status: Models::Shared::FlsaStatus::EXEMPT,
  gender: Models::Shared::HrisEmployeeGender::MALE,
  has_mfa: true,
  hired_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
  id: '5ece6f77-35df-48e1-9496-7d1879563189',
  image_url: 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/85.jpg',
  language_locale: 'in',
  last_name: 'Prohaska',
  locations: [],
  marital_status: Models::Shared::MaritalStatus::MARRIED,
  metadata: [
    Models::Shared::HrisMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::HrisMetadataFormat::TEXT,
      id: 'db8a06c6-9b85-4baa-8142-748cdc88efd4',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'tutis',
    ),
  ],
  name: 'Zetta Prohaska',
  pay_frequency: Models::Shared::PayFrequency::WEEK,
  pronouns: 'she/her',
  relationships: [
    Models::Shared::HrisEmployeerelationship.new(
      emails: [
        Models::Shared::HrisEmail.new(
          email: 'keith.prohaska@gmail.com',
        ),
      ],
      name: 'Keith Prohaska',
      type: Models::Shared::HrisEmployeerelationshipType::SIBLING,
    ),
    Models::Shared::HrisEmployeerelationship.new(
      emails: [
        Models::Shared::HrisEmail.new(
          email: 'keely.prohaska@icloud.com',
        ),
      ],
      name: 'Keely Prohaska',
      type: Models::Shared::HrisEmployeerelationshipType::OTHER,
    ),
  ],
  salutation: 'Ms.',
  ssn_sin: '284-82-8167',
  storage_quota_allocated: 3_653_713.0,
  storage_quota_available: 3_017_275.0,
  storage_quota_used: 367_449.0,
  telephones: [
    Models::Shared::HrisTelephone.new(
      telephone: '(320) 980-1370',
      type: Models::Shared::HrisTelephoneType::HOME,
    ),
    Models::Shared::HrisTelephone.new(
      telephone: '(694) 840-0166',
      type: Models::Shared::HrisTelephoneType::FAX,
    ),
  ],
  timeoff_days_total: 17.0,
  timeoff_days_used: 9.0,
  timezone: 'Europe/Ljubljana',
  title: 'District Branding Specialist',
  updated_at: DateTime.iso8601('2020-07-19T04:12:43.588Z'),
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
      address1: '7431 Hintz Parkway',
      address2: 'Apt. 520',
      city: 'Port Rogerview',
      country_code: 'US',
      postal_code: '01711',
      region: 'Missouri',
      region_code: 'TN',
    ),
    bio: 'fun advocate  🇱🇻',
    compensation: [
      Models::Shared::HrisCompensation.new(
        amount: 95_000.0,
        currency: 'USD',
        frequency: Models::Shared::HrisCompensationFrequency::YEAR,
        notes: 'Eius.',
        type: Models::Shared::HrisCompensationType::OTHER,
      ),
    ],
    created_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    currency: 'USD',
    date_of_birth: DateTime.iso8601('2001-04-22'),
    emails: [
      Models::Shared::HrisEmail.new(
        email: 'zetta.prohaska@insidious-stump.net',
        type: Models::Shared::HrisEmailType::WORK,
      ),
    ],
    employee_number: 'uCk3qaL1ei',
    employment_status: Models::Shared::EmploymentStatus::ACTIVE,
    employment_type: Models::Shared::HrisEmployeeEmploymentType::PART_TIME,
    first_name: 'Zetta',
    flsa_status: Models::Shared::FlsaStatus::EXEMPT,
    gender: Models::Shared::HrisEmployeeGender::MALE,
    has_mfa: true,
    hired_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    id: '9609249d-8821-468a-b0ee-7d78f4b1ae6a',
    image_url: 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/85.jpg',
    language_locale: 'in',
    last_name: 'Prohaska',
    locations: [],
    marital_status: Models::Shared::MaritalStatus::MARRIED,
    metadata: [
      Models::Shared::HrisMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::HrisMetadataFormat::TEXT,
        id: '20b100c1-0a48-47af-920c-3385a2834306',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'tutis',
      ),
    ],
    name: 'Zetta Prohaska',
    pay_frequency: Models::Shared::PayFrequency::WEEK,
    pronouns: 'she/her',
    relationships: [
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'keith.prohaska@gmail.com',
          ),
        ],
        name: 'Keith Prohaska',
        type: Models::Shared::HrisEmployeerelationshipType::SIBLING,
      ),
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'keely.prohaska@icloud.com',
          ),
        ],
        name: 'Keely Prohaska',
        type: Models::Shared::HrisEmployeerelationshipType::OTHER,
      ),
    ],
    salutation: 'Ms.',
    ssn_sin: '284-82-8167',
    storage_quota_allocated: 3_653_713.0,
    storage_quota_available: 3_017_275.0,
    storage_quota_used: 367_449.0,
    telephones: [
      Models::Shared::HrisTelephone.new(
        telephone: '(320) 980-1370',
        type: Models::Shared::HrisTelephoneType::HOME,
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(694) 840-0166',
        type: Models::Shared::HrisTelephoneType::FAX,
      ),
    ],
    timeoff_days_total: 17.0,
    timeoff_days_used: 9.0,
    timezone: 'Europe/Ljubljana',
    title: 'District Branding Specialist',
    updated_at: DateTime.iso8601('2020-07-19T04:12:43.602Z'),
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
      address1: '7431 Hintz Parkway',
      address2: 'Apt. 520',
      city: 'Port Rogerview',
      country_code: 'US',
      postal_code: '01711',
      region: 'Missouri',
      region_code: 'TN',
    ),
    bio: 'fun advocate  🇱🇻',
    compensation: [
      Models::Shared::HrisCompensation.new(
        amount: 95_000.0,
        currency: 'USD',
        frequency: Models::Shared::HrisCompensationFrequency::YEAR,
        notes: 'Eius.',
        type: Models::Shared::HrisCompensationType::OTHER,
      ),
    ],
    created_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    currency: 'USD',
    date_of_birth: DateTime.iso8601('2001-04-22'),
    emails: [
      Models::Shared::HrisEmail.new(
        email: 'zetta.prohaska@insidious-stump.net',
        type: Models::Shared::HrisEmailType::WORK,
      ),
    ],
    employee_number: 'uCk3qaL1ei',
    employment_status: Models::Shared::EmploymentStatus::ACTIVE,
    employment_type: Models::Shared::HrisEmployeeEmploymentType::PART_TIME,
    first_name: 'Zetta',
    flsa_status: Models::Shared::FlsaStatus::EXEMPT,
    gender: Models::Shared::HrisEmployeeGender::MALE,
    has_mfa: true,
    hired_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    id: '9609249d-8821-468a-b0ee-7d78f4b1ae6a',
    image_url: 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/female/512/85.jpg',
    language_locale: 'in',
    last_name: 'Prohaska',
    locations: [],
    marital_status: Models::Shared::MaritalStatus::MARRIED,
    metadata: [
      Models::Shared::HrisMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::HrisMetadataFormat::TEXT,
        id: '20b100c1-0a48-47af-920c-3385a2834306',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'tutis',
      ),
    ],
    name: 'Zetta Prohaska',
    pay_frequency: Models::Shared::PayFrequency::WEEK,
    pronouns: 'she/her',
    relationships: [
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'keith.prohaska@gmail.com',
          ),
        ],
        name: 'Keith Prohaska',
        type: Models::Shared::HrisEmployeerelationshipType::SIBLING,
      ),
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'keely.prohaska@icloud.com',
          ),
        ],
        name: 'Keely Prohaska',
        type: Models::Shared::HrisEmployeerelationshipType::OTHER,
      ),
    ],
    salutation: 'Ms.',
    ssn_sin: '284-82-8167',
    storage_quota_allocated: 3_653_713.0,
    storage_quota_available: 3_017_275.0,
    storage_quota_used: 367_449.0,
    telephones: [
      Models::Shared::HrisTelephone.new(
        telephone: '(320) 980-1370',
        type: Models::Shared::HrisTelephoneType::HOME,
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(694) 840-0166',
        type: Models::Shared::HrisTelephoneType::FAX,
      ),
    ],
    timeoff_days_total: 17.0,
    timeoff_days_used: 9.0,
    timezone: 'Europe/Ljubljana',
    title: 'District Branding Specialist',
    updated_at: DateTime.iso8601('2020-07-19T04:12:43.602Z'),
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