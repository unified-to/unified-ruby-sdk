# Employee

## Overview

### Available Operations

* [create_hris_employee](#create_hris_employee) - Create an employee
* [get_hris_employee](#get_hris_employee) - Retrieve an employee
* [list_hris_employees](#list_hris_employees) - List all employees
* [patch_hris_employee](#patch_hris_employee) - Update an employee
* [remove_hris_employee](#remove_hris_employee) - Remove an employee
* [update_hris_employee](#update_hris_employee) - Update an employee

## create_hris_employee

Creates a HrisEmployee. Provide the unified HrisEmployee fields in the request body; they are mapped to the provider's API. Returns the created HrisEmployee.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisEmployee" method="post" path="/hris/{connection_id}/employee" example="hris_employee" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.employee.create_hris_employee(hris_employee: Models::Shared::HrisEmployee.new(
  address: Models::Shared::PropertyHrisEmployeeAddress.new(
    address1: '1636 Anissa Circle',
    address2: 'Suite 844',
    city: 'North Breanneberg',
    country_code: 'US',
    postal_code: '18978',
    region: 'South Dakota',
    region_code: 'MN'
  ),
  bio: 'sushi devotee, singer',
  compensation: [
    Models::Shared::HrisCompensation.new(
      amount: 95_000.0,
      currency: 'USD',
      frequency: Models::Shared::HrisCompensationFrequency::YEAR,
      notes: 'Soleo.',
      start_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
      type: Models::Shared::HrisCompensationType::OTHER
    ),
  ],
  created_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
  currency: 'USD',
  date_of_birth: DateTime.iso8601('2001-04-22'),
  emails: [
    Models::Shared::HrisEmail.new(
      email: 'milo.padberg@known-petal.com',
      type: Models::Shared::HrisEmailType::WORK
    ),
  ],
  employee_number: '3qaL1eiPnL',
  employment_status: Models::Shared::EmploymentStatus::ACTIVE,
  employment_type: Models::Shared::HrisEmployeeEmploymentType::PART_TIME,
  first_name: 'Milo',
  flsa_status: Models::Shared::FlsaStatus::EXEMPT,
  gender: Models::Shared::HrisEmployeeGender::MALE,
  has_mfa: true,
  hired_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
  id: 'c548226d-6e8d-40d7-af34-73be58427d81',
  image_url: 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/52.jpg',
  language_locale: 'in',
  last_name: 'Padberg',
  locations: [],
  marital_status: Models::Shared::HrisEmployeeMaritalStatus::MARRIED,
  metadata: [
    Models::Shared::HrisMetadata.new(
      extra_data: {
        'display_name' => 'Custom Property',
      },
      format: Models::Shared::HrisMetadataFormat::TEXT,
      id: 'ea554a47-29e3-48f4-b602-7de121930da2',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'teneo'
    ),
  ],
  name: 'Milo Padberg',
  pay_frequency: Models::Shared::PayFrequency::WEEK,
  pronouns: 'she/her',
  relationships: [
    Models::Shared::HrisEmployeerelationship.new(
      emails: [
        Models::Shared::HrisEmail.new(
          email: 'amanda.padberg@gmail.com'
        ),
      ],
      name: 'Amanda Padberg',
      type: Models::Shared::HrisEmployeerelationshipType::SIBLING
    ),
    Models::Shared::HrisEmployeerelationship.new(
      emails: [
        Models::Shared::HrisEmail.new(
          email: 'alex.padberg@icloud.com'
        ),
      ],
      name: 'Alex Padberg',
      type: Models::Shared::HrisEmployeerelationshipType::OTHER
    ),
  ],
  salutation: 'Miss',
  seniority_started_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
  service_started_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
  ssn_sin: '755-85-7843',
  storage_quota_allocated: 3_653_713.0,
  storage_quota_available: 3_017_275.0,
  storage_quota_used: 367_449.0,
  telephones: [
    Models::Shared::HrisTelephone.new(
      telephone: '(980) 337-0594',
      type: Models::Shared::HrisTelephoneType::HOME
    ),
    Models::Shared::HrisTelephone.new(
      telephone: '(840) 216-6463',
      type: Models::Shared::HrisTelephoneType::FAX
    ),
  ],
  timeoff_days_total: 17.0,
  timeoff_days_used: 9.0,
  timezone: 'America/Nome',
  title: 'Corporate Functionality Executive',
  updated_at: DateTime.iso8601('2020-07-23T10:17:16.461Z')
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

Retrieves a single HrisEmployee by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisEmployee" method="get" path="/hris/{connection_id}/employee/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Returns a list of HrisEmployees. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisEmployees" method="get" path="/hris/{connection_id}/employee" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListHrisEmployeesRequest.new(
  connection_id: '<id>'
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

Updates the HrisEmployee identified by `id`. Provide the unified HrisEmployee fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisEmployee" method="patch" path="/hris/{connection_id}/employee/{id}" example="hris_employee" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchHrisEmployeeRequest.new(
  hris_employee: Models::Shared::HrisEmployee.new(
    address: Models::Shared::PropertyHrisEmployeeAddress.new(
      address1: '1636 Anissa Circle',
      address2: 'Suite 844',
      city: 'North Breanneberg',
      country_code: 'US',
      postal_code: '18978',
      region: 'South Dakota',
      region_code: 'MN'
    ),
    bio: 'sushi devotee, singer',
    compensation: [
      Models::Shared::HrisCompensation.new(
        amount: 95_000.0,
        currency: 'USD',
        frequency: Models::Shared::HrisCompensationFrequency::YEAR,
        notes: 'Soleo.',
        start_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
        type: Models::Shared::HrisCompensationType::OTHER
      ),
    ],
    created_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    currency: 'USD',
    date_of_birth: DateTime.iso8601('2001-04-22'),
    emails: [
      Models::Shared::HrisEmail.new(
        email: 'milo.padberg@known-petal.com',
        type: Models::Shared::HrisEmailType::WORK
      ),
    ],
    employee_number: '3qaL1eiPnL',
    employment_status: Models::Shared::EmploymentStatus::ACTIVE,
    employment_type: Models::Shared::HrisEmployeeEmploymentType::PART_TIME,
    first_name: 'Milo',
    flsa_status: Models::Shared::FlsaStatus::EXEMPT,
    gender: Models::Shared::HrisEmployeeGender::MALE,
    has_mfa: true,
    hired_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    id: '16dd8a11-98c1-4db7-a9d6-8ccc253fa057',
    image_url: 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/52.jpg',
    language_locale: 'in',
    last_name: 'Padberg',
    locations: [],
    marital_status: Models::Shared::HrisEmployeeMaritalStatus::MARRIED,
    metadata: [
      Models::Shared::HrisMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::HrisMetadataFormat::TEXT,
        id: '3e6a83ef-965e-419e-a76e-d1747324c8cc',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'teneo'
      ),
    ],
    name: 'Milo Padberg',
    pay_frequency: Models::Shared::PayFrequency::WEEK,
    pronouns: 'she/her',
    relationships: [
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'amanda.padberg@gmail.com'
          ),
        ],
        name: 'Amanda Padberg',
        type: Models::Shared::HrisEmployeerelationshipType::SIBLING
      ),
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'alex.padberg@icloud.com'
          ),
        ],
        name: 'Alex Padberg',
        type: Models::Shared::HrisEmployeerelationshipType::OTHER
      ),
    ],
    salutation: 'Miss',
    seniority_started_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    service_started_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    ssn_sin: '755-85-7843',
    storage_quota_allocated: 3_653_713.0,
    storage_quota_available: 3_017_275.0,
    storage_quota_used: 367_449.0,
    telephones: [
      Models::Shared::HrisTelephone.new(
        telephone: '(980) 337-0594',
        type: Models::Shared::HrisTelephoneType::HOME
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(840) 216-6463',
        type: Models::Shared::HrisTelephoneType::FAX
      ),
    ],
    timeoff_days_total: 17.0,
    timeoff_days_used: 9.0,
    timezone: 'America/Nome',
    title: 'Corporate Functionality Executive',
    updated_at: DateTime.iso8601('2020-07-23T10:17:16.472Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Deletes the HrisEmployee identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisEmployee" method="delete" path="/hris/{connection_id}/employee/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Updates the HrisEmployee identified by `id`. Provide the unified HrisEmployee fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisEmployee" method="put" path="/hris/{connection_id}/employee/{id}" example="hris_employee" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateHrisEmployeeRequest.new(
  hris_employee: Models::Shared::HrisEmployee.new(
    address: Models::Shared::PropertyHrisEmployeeAddress.new(
      address1: '1636 Anissa Circle',
      address2: 'Suite 844',
      city: 'North Breanneberg',
      country_code: 'US',
      postal_code: '18978',
      region: 'South Dakota',
      region_code: 'MN'
    ),
    bio: 'sushi devotee, singer',
    compensation: [
      Models::Shared::HrisCompensation.new(
        amount: 95_000.0,
        currency: 'USD',
        frequency: Models::Shared::HrisCompensationFrequency::YEAR,
        notes: 'Soleo.',
        start_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
        type: Models::Shared::HrisCompensationType::OTHER
      ),
    ],
    created_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    currency: 'USD',
    date_of_birth: DateTime.iso8601('2001-04-22'),
    emails: [
      Models::Shared::HrisEmail.new(
        email: 'milo.padberg@known-petal.com',
        type: Models::Shared::HrisEmailType::WORK
      ),
    ],
    employee_number: '3qaL1eiPnL',
    employment_status: Models::Shared::EmploymentStatus::ACTIVE,
    employment_type: Models::Shared::HrisEmployeeEmploymentType::PART_TIME,
    first_name: 'Milo',
    flsa_status: Models::Shared::FlsaStatus::EXEMPT,
    gender: Models::Shared::HrisEmployeeGender::MALE,
    has_mfa: true,
    hired_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    id: '16dd8a11-98c1-4db7-a9d6-8ccc253fa057',
    image_url: 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/52.jpg',
    language_locale: 'in',
    last_name: 'Padberg',
    locations: [],
    marital_status: Models::Shared::HrisEmployeeMaritalStatus::MARRIED,
    metadata: [
      Models::Shared::HrisMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::HrisMetadataFormat::TEXT,
        id: '3e6a83ef-965e-419e-a76e-d1747324c8cc',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'teneo'
      ),
    ],
    name: 'Milo Padberg',
    pay_frequency: Models::Shared::PayFrequency::WEEK,
    pronouns: 'she/her',
    relationships: [
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'amanda.padberg@gmail.com'
          ),
        ],
        name: 'Amanda Padberg',
        type: Models::Shared::HrisEmployeerelationshipType::SIBLING
      ),
      Models::Shared::HrisEmployeerelationship.new(
        emails: [
          Models::Shared::HrisEmail.new(
            email: 'alex.padberg@icloud.com'
          ),
        ],
        name: 'Alex Padberg',
        type: Models::Shared::HrisEmployeerelationshipType::OTHER
      ),
    ],
    salutation: 'Miss',
    seniority_started_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    service_started_at: DateTime.iso8601('2019-09-16T15:08:53.262Z'),
    ssn_sin: '755-85-7843',
    storage_quota_allocated: 3_653_713.0,
    storage_quota_available: 3_017_275.0,
    storage_quota_used: 367_449.0,
    telephones: [
      Models::Shared::HrisTelephone.new(
        telephone: '(980) 337-0594',
        type: Models::Shared::HrisTelephoneType::HOME
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(840) 216-6463',
        type: Models::Shared::HrisTelephoneType::FAX
      ),
    ],
    timeoff_days_total: 17.0,
    timeoff_days_used: 9.0,
    timezone: 'America/Nome',
    title: 'Corporate Functionality Executive',
    updated_at: DateTime.iso8601('2020-07-23T10:17:16.472Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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