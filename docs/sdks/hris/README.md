# Hris
(*hris*)

## Overview

### Available Operations

* [create_hris_attendance](#create_hris_attendance) - Create an attendance
* [create_hris_bankaccount](#create_hris_bankaccount) - Create a bankaccount
* [create_hris_benefit](#create_hris_benefit) - Create a benefit
* [create_hris_company](#create_hris_company) - Create a company
* [create_hris_deduction](#create_hris_deduction) - Create a deduction
* [create_hris_device](#create_hris_device) - Create a device
* [create_hris_document](#create_hris_document) - Create a document
* [create_hris_employee](#create_hris_employee) - Create an employee
* [create_hris_group](#create_hris_group) - Create a group
* [create_hris_location](#create_hris_location) - Create a location
* [create_hris_taxonomy](#create_hris_taxonomy) - Create a taxonomy
* [create_hris_timeoff](#create_hris_timeoff) - Create a timeoff
* [create_hris_timeshift](#create_hris_timeshift) - Create a timeshift
* [get_hris_attendance](#get_hris_attendance) - Retrieve an attendance
* [get_hris_bankaccount](#get_hris_bankaccount) - Retrieve a bankaccount
* [get_hris_benefit](#get_hris_benefit) - Retrieve a benefit
* [get_hris_company](#get_hris_company) - Retrieve a company
* [get_hris_deduction](#get_hris_deduction) - Retrieve a deduction
* [get_hris_device](#get_hris_device) - Retrieve a device
* [get_hris_document](#get_hris_document) - Retrieve a document
* [get_hris_employee](#get_hris_employee) - Retrieve an employee
* [get_hris_group](#get_hris_group) - Retrieve a group
* [get_hris_location](#get_hris_location) - Retrieve a location
* [get_hris_payslip](#get_hris_payslip) - Retrieve a payslip
* [get_hris_taxonomy](#get_hris_taxonomy) - Retrieve a taxonomy
* [get_hris_timeoff](#get_hris_timeoff) - Retrieve a timeoff
* [get_hris_timeshift](#get_hris_timeshift) - Retrieve a timeshift
* [list_hris_attendances](#list_hris_attendances) - List all attendances
* [list_hris_bankaccounts](#list_hris_bankaccounts) - List all bankaccounts
* [list_hris_benefits](#list_hris_benefits) - List all benefits
* [list_hris_companies](#list_hris_companies) - List all companies
* [list_hris_deductions](#list_hris_deductions) - List all deductions
* [list_hris_devices](#list_hris_devices) - List all devices
* [list_hris_documents](#list_hris_documents) - List all documents
* [list_hris_employees](#list_hris_employees) - List all employees
* [list_hris_groups](#list_hris_groups) - List all groups
* [list_hris_locations](#list_hris_locations) - List all locations
* [list_hris_payslips](#list_hris_payslips) - List all payslips
* [list_hris_taxonomies](#list_hris_taxonomies) - List all taxonomies
* [list_hris_timeoffs](#list_hris_timeoffs) - List all timeoffs
* [list_hris_timeshifts](#list_hris_timeshifts) - List all timeshifts
* [patch_hris_attendance](#patch_hris_attendance) - Update an attendance
* [patch_hris_bankaccount](#patch_hris_bankaccount) - Update a bankaccount
* [patch_hris_benefit](#patch_hris_benefit) - Update a benefit
* [patch_hris_company](#patch_hris_company) - Update a company
* [patch_hris_deduction](#patch_hris_deduction) - Update a deduction
* [patch_hris_device](#patch_hris_device) - Update a device
* [patch_hris_document](#patch_hris_document) - Update a document
* [patch_hris_employee](#patch_hris_employee) - Update an employee
* [patch_hris_group](#patch_hris_group) - Update a group
* [patch_hris_location](#patch_hris_location) - Update a location
* [patch_hris_timeoff](#patch_hris_timeoff) - Update a timeoff
* [patch_hris_timeshift](#patch_hris_timeshift) - Update a timeshift
* [remove_hris_attendance](#remove_hris_attendance) - Remove an attendance
* [remove_hris_bankaccount](#remove_hris_bankaccount) - Remove a bankaccount
* [remove_hris_benefit](#remove_hris_benefit) - Remove a benefit
* [remove_hris_company](#remove_hris_company) - Remove a company
* [remove_hris_deduction](#remove_hris_deduction) - Remove a deduction
* [remove_hris_device](#remove_hris_device) - Remove a device
* [remove_hris_document](#remove_hris_document) - Remove a document
* [remove_hris_employee](#remove_hris_employee) - Remove an employee
* [remove_hris_group](#remove_hris_group) - Remove a group
* [remove_hris_location](#remove_hris_location) - Remove a location
* [remove_hris_timeoff](#remove_hris_timeoff) - Remove a timeoff
* [remove_hris_timeshift](#remove_hris_timeshift) - Remove a timeshift
* [update_hris_attendance](#update_hris_attendance) - Update an attendance
* [update_hris_bankaccount](#update_hris_bankaccount) - Update a bankaccount
* [update_hris_benefit](#update_hris_benefit) - Update a benefit
* [update_hris_company](#update_hris_company) - Update a company
* [update_hris_deduction](#update_hris_deduction) - Update a deduction
* [update_hris_device](#update_hris_device) - Update a device
* [update_hris_document](#update_hris_document) - Update a document
* [update_hris_employee](#update_hris_employee) - Update an employee
* [update_hris_group](#update_hris_group) - Update a group
* [update_hris_location](#update_hris_location) - Update a location
* [update_hris_timeoff](#update_hris_timeoff) - Update a timeoff
* [update_hris_timeshift](#update_hris_timeshift) - Update a timeshift

## create_hris_attendance

Create an attendance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisAttendance" method="post" path="/hris/{connection_id}/attendance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_attendance(hris_attendance: Models::Shared::HrisAttendance.new(
  address: Models::Shared::PropertyHrisAttendanceAddress.new(
    address1: '14108 Allie Flats',
    city: 'Kearaborough',
    country_code: 'US',
    postal_code: '23844-2344',
    region: 'Tennessee',
    region_code: 'CA',
  ),
  approved_at: DateTime.iso8601('2021-08-13T10:42:10.868Z'),
  breaks: [
    Models::Shared::HrisAttendanceBreak.new(
      duration_minutes: 12.0,
      end_at: DateTime.iso8601('2023-10-23T23:43:18.991Z'),
      id: 'd60a1001-5a8a-4991-8c21-f4da6036cc87',
      is_paid: true,
      name: 'Lunch',
      start_at: DateTime.iso8601('2023-10-17T03:53:40.572Z'),
    ),
  ],
  created_at: DateTime.iso8601('2021-08-10T19:43:18.452Z'),
  currency: 'UGX',
  declared_tips_amount: 161.0,
  employee_user_id: '<id>',
  end_at: DateTime.iso8601('2024-04-07T17:46:51.474Z'),
  hourly_rate: 53.0,
  hours: 10.0,
  id: '0dfdb179-687d-4983-9d57-e442cb84eb0d',
  job_name: 'Global Creative Supervisor',
  non_cash_tips_amount: 54.0,
  start_at: DateTime.iso8601('2021-11-09T13:58:14.444Z'),
  status: Models::Shared::HrisAttendanceStatus::CLOSED,
  timezone: 'America/Atikokan',
  updated_at: DateTime.iso8601('2022-01-17T07:38:03.665Z'),
), connection_id: '<id>')

unless res.hris_attendance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_attendance`                                                                                                                                | [Models::Shared::HrisAttendance](../../models/shared/hrisattendance.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisAttendanceQueryParamFields](../../models/operations/createhrisattendancequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisAttendanceResponse)](../../models/operations/createhrisattendanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_bankaccount

Create a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisBankaccount" method="post" path="/hris/{connection_id}/bankaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_bankaccount(hris_bankaccount: Models::Shared::HrisBankaccount.new(
  account_number: '****3777',
  account_number_last4: '3777',
  account_type: Models::Shared::HrisBankaccountAccountType::CHECKING,
  bank_name: 'Huel Group',
  created_at: DateTime.iso8601('2019-11-16T16:43:45.976Z'),
  id: '8861a5c0-e091-4718-8479-aec3dd76bf39',
  is_primary: false,
  name: 'Checking Account',
  routing_number: '448650724',
  updated_at: DateTime.iso8601('2025-06-06T22:35:03.395Z'),
), connection_id: '<id>')

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_bankaccount`                                                                                                                               | [Models::Shared::HrisBankaccount](../../models/shared/hrisbankaccount.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisBankaccountQueryParamFields](../../models/operations/createhrisbankaccountqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisBankaccountResponse)](../../models/operations/createhrisbankaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_benefit

Create a benefit

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisBenefit" method="post" path="/hris/{connection_id}/benefit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_benefit(hris_benefit: Models::Shared::HrisBenefit.new(
  coverage_level: Models::Shared::CoverageLevel::EMPLOYEE_SPOUSE,
  created_at: DateTime.iso8601('2020-06-11T01:24:05.654Z'),
  currency: 'JOD',
  description: 'Vomito voluptas dolor sed.',
  employer_contribution_amount: 185_006.0,
  employer_contribution_max_amount: 179_093.0,
  employer_contribution_type: Models::Shared::EmployerContributionType::PERCENTAGE,
  frequency: Models::Shared::HrisBenefitFrequency::HOUR,
  id: '2bc73132-a231-4f6b-b0f2-73d8f42a7bb3',
  is_active: false,
  name: 'Frozen Wooden Ball',
  tax: Models::Shared::Tax::PRE_TAX,
  type: Models::Shared::HrisBenefitType::GARNISHMENT,
  updated_at: DateTime.iso8601('2023-03-07T18:44:31.792Z'),
), connection_id: '<id>')

unless res.hris_benefit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_benefit`                                                                                                                                   | [Models::Shared::HrisBenefit](../../models/shared/hrisbenefit.md)                                                                                | :heavy_check_mark:                                                                                                                               | Company-wide benefit plans available to employees.                                                                                               |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisBenefitQueryParamFields](../../models/operations/createhrisbenefitqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisBenefitResponse)](../../models/operations/createhrisbenefitresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_company

Create a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisCompany" method="post" path="/hris/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_company(hris_company: Models::Shared::HrisCompany.new(
  address: Models::Shared::PropertyHrisCompanyAddress.new(
    address1: '2549 Church Walk',
    city: 'Lake Nettiebury',
    country_code: 'US',
    postal_code: '32877-4898',
    region: 'Idaho',
    region_code: 'PA',
  ),
  created_at: DateTime.iso8601('2021-05-02T22:27:38.970Z'),
  id: 'a11f97c3-0d79-4eae-aaf7-d7987e9817aa',
  legal_name: 'Schultz LLC',
  name: 'Gottlieb Group',
  updated_at: DateTime.iso8601('2026-09-08T21:31:26.668Z'),
), connection_id: '<id>')

unless res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_company`                                                                                                                                   | [Models::Shared::HrisCompany](../../models/shared/hriscompany.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisCompanyQueryParamFields](../../models/operations/createhriscompanyqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisCompanyResponse)](../../models/operations/createhriscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_deduction

Create a deduction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisDeduction" method="post" path="/hris/{connection_id}/deduction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_deduction(hris_deduction: Models::Shared::HrisDeduction.new(
  amount: 139_655.0,
  coverage_level: Models::Shared::HrisDeductionCoverageLevel::EMPLOYEE_ONLY,
  created_at: DateTime.iso8601('2020-02-05T01:46:31.384Z'),
  end_at: DateTime.iso8601('2026-05-25T20:05:49.194Z'),
  frequency: Models::Shared::HrisDeductionFrequency::MONTH,
  id: '84f3e0b9-8ec8-4eb5-b808-e26cc8f4468a',
  is_active: false,
  notes: 'Carmen desidero.',
  start_at: DateTime.iso8601('2025-02-20T12:02:49.110Z'),
  type: Models::Shared::HrisDeductionType::FIXED,
  updated_at: DateTime.iso8601('2024-03-03T20:28:34.377Z'),
), connection_id: '<id>')

unless res.hris_deduction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_deduction`                                                                                                                                 | [Models::Shared::HrisDeduction](../../models/shared/hrisdeduction.md)                                                                            | :heavy_check_mark:                                                                                                                               | Employee-specific deduction/benefit enrolment.                                                                                                   |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisDeductionQueryParamFields](../../models/operations/createhrisdeductionqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisDeductionResponse)](../../models/operations/createhrisdeductionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_device

Create a device

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisDevice" method="post" path="/hris/{connection_id}/device" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_device(hris_device: Models::Shared::HrisDevice.new(
  admin_user_ids: [],
  asset_tag: 'dpho9OuFNG',
  created_at: DateTime.iso8601('2019-04-04T17:11:40.322Z'),
  has_antivirus: false,
  has_firewall: true,
  has_hd_encrypted: true,
  has_password_manager: true,
  has_screenlock: true,
  id: 'ff6f7d28-8a09-4c0d-8233-996f14d17b4f',
  is_missing: false,
  manufacturer: 'Sanford - Hamill',
  model: 'Refined',
  name: 'cross_contamination_if.rar',
  os: 'monitor',
  os_version: '1.12.16',
  updated_at: DateTime.iso8601('2023-05-22T17:13:26.123Z'),
  version: '2.20.17',
), connection_id: '<id>')

unless res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_device`                                                                                                                                    | [Models::Shared::HrisDevice](../../models/shared/hrisdevice.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisDeviceQueryParamFields](../../models/operations/createhrisdevicequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisDeviceResponse)](../../models/operations/createhrisdeviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_document

Create a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisDocument" method="post" path="/hris/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_document(hris_document: Models::Shared::HrisDocument.new(
  created_at: DateTime.iso8601('2022-10-27T11:47:26.086Z'),
  document_url: 'https://sore-decision.biz/',
  filename: 'ridge_forager.xsl',
  id: '9b700086-451a-4120-8d57-fed917f0d7fe',
  type: Models::Shared::HrisDocumentType::POLICY,
  updated_at: DateTime.iso8601('2025-09-19T07:57:45.601Z'),
), connection_id: '<id>')

unless res.hris_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_document`                                                                                                                                  | [Models::Shared::HrisDocument](../../models/shared/hrisdocument.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisDocumentQueryParamFields](../../models/operations/createhrisdocumentqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisDocumentResponse)](../../models/operations/createhrisdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.hris.create_hris_employee(hris_employee: Models::Shared::HrisEmployee.new(
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
  hired_at: DateTime.iso8601('2023-05-12T06:08:21.583Z'),
  id: '484040b5-6330-41f5-9b49-4d3045c77f39',
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
      id: 'f3fc17c5-b836-407b-a353-5d1f99341389',
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
  updated_at: DateTime.iso8601('2022-02-20T08:15:24.501Z'),
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

## create_hris_group

Create a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisGroup" method="post" path="/hris/{connection_id}/group" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_group(hris_group: Models::Shared::HrisGroup.new(
  created_at: DateTime.iso8601('2023-11-01T13:13:40.714Z'),
  description: 'Absorbeo casso.',
  id: '5c8815da-b7ad-4fcf-9182-6e52f3c7d156',
  is_active: false,
  name: 'Games',
  type: Models::Shared::HrisGroupType::BUSINESS_UNIT,
  updated_at: DateTime.iso8601('2026-04-26T04:59:49.322Z'),
), connection_id: '<id>')

unless res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_group`                                                                                                                                     | [Models::Shared::HrisGroup](../../models/shared/hrisgroup.md)                                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisGroupQueryParamFields](../../models/operations/createhrisgroupqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisGroupResponse)](../../models/operations/createhrisgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_location

Create a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisLocation" method="post" path="/hris/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_location(hris_location: Models::Shared::HrisLocation.new(
  address: Models::Shared::PropertyHrisLocationAddress.new(
    address1: '2743 Connelly Summit',
    address2: 'Apt. 350',
    city: 'Titusville',
    country_code: 'US',
    postal_code: '16154-1095',
    region: 'Oregon',
    region_code: 'AL',
  ),
  created_at: DateTime.iso8601('2021-07-18T10:32:01.414Z'),
  currency: 'MUR',
  description: 'Acervus caries.',
  external_identifier: '96a41c8d-a0fd-4317-9a93-9adbec79d837',
  id: '735bb4e6-f12f-4c14-a185-655cdcecdb5e',
  is_active: true,
  is_hq: false,
  language_locale: 'fr',
  name: 'adhuc',
  telephones: [
    Models::Shared::HrisTelephone.new(
      telephone: '(710) 550-6997',
      type: Models::Shared::HrisTelephoneType::FAX,
    ),
    Models::Shared::HrisTelephone.new(
      telephone: '(208) 555-8542',
      type: Models::Shared::HrisTelephoneType::HOME,
    ),
    Models::Shared::HrisTelephone.new(
      telephone: '(712) 473-5482',
      type: Models::Shared::HrisTelephoneType::FAX,
    ),
  ],
  timezone: 'America/Guyana',
  updated_at: DateTime.iso8601('2023-06-10T03:17:45.017Z'),
), connection_id: '<id>')

unless res.hris_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_location`                                                                                                                                  | [Models::Shared::HrisLocation](../../models/shared/hrislocation.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisLocationQueryParamFields](../../models/operations/createhrislocationqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisLocationResponse)](../../models/operations/createhrislocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_taxonomy

Create a taxonomy

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisTaxonomy" method="post" path="/hris/{connection_id}/taxonomy" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_taxonomy(hris_taxonomy: Models::Shared::HrisTaxonomy.new(
  created_at: DateTime.iso8601('2022-06-23T02:10:00.789Z'),
  description: 'Apto demonstro audacia adstringo cursim tristis solio careo.',
  domain: 'Electronics',
  id: 'ede085db-5709-4d53-a490-746f3de5be17',
  is_active: false,
  name: 'International Functionality Architect',
  parent_id: '6524b2a7-6520-4e15-8c4e-1aa6793db837',
  role_ids: [
    '2b1ef757-eb4c-4207-8af1-929afe49cd65',
  ],
  subcategory: 'Bamboo',
  type: Models::Shared::HrisTaxonomyType::KNOWLEDGE,
  updated_at: DateTime.iso8601('2023-05-22T20:37:18.964Z'),
  url: 'https://our-polarisation.name',
), connection_id: '<id>')

unless res.hris_taxonomy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_taxonomy`                                                                                                                                  | [Models::Shared::HrisTaxonomy](../../models/shared/hristaxonomy.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisTaxonomyQueryParamFields](../../models/operations/createhristaxonomyqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisTaxonomyResponse)](../../models/operations/createhristaxonomyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_timeoff

Create a timeoff

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisTimeoff" method="post" path="/hris/{connection_id}/timeoff" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_timeoff(hris_timeoff: Models::Shared::HrisTimeoff.new(
  approved_at: DateTime.iso8601('2022-02-21T02:34:00.707Z'),
  comments: 'Blandior ventus curiositas amplitudo.',
  created_at: DateTime.iso8601('2021-10-06T18:00:20.615Z'),
  duration: 4.0,
  duration_type: Models::Shared::DurationType::DAY,
  end_at: DateTime.iso8601('2024-12-09T12:28:57.437Z'),
  id: '2d890fd1-cb8d-4af9-8e18-587564259ad2',
  is_paid: true,
  original_type: 'acerbitas ut',
  reason: 'verto',
  start_at: DateTime.iso8601('2023-08-24T10:33:26.221Z'),
  status: Models::Shared::HrisTimeoffStatus::DENIED,
  type: Models::Shared::HrisTimeoffType::IN_LIEU,
  updated_at: DateTime.iso8601('2022-07-08T06:37:13.084Z'),
  user_id: '<id>',
), connection_id: '<id>')

unless res.hris_timeoff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_timeoff`                                                                                                                                   | [Models::Shared::HrisTimeoff](../../models/shared/hristimeoff.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisTimeoffQueryParamFields](../../models/operations/createhristimeoffqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisTimeoffResponse)](../../models/operations/createhristimeoffresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_timeshift

Create a timeshift

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisTimeshift" method="post" path="/hris/{connection_id}/timeshift" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.create_hris_timeshift(hris_timeshift: Models::Shared::HrisTimeshift.new(
  approved_at: DateTime.iso8601('2023-06-07T06:09:27.537Z'),
  compensation: [
    Models::Shared::HrisCompensation.new(
      amount: 76_761.0,
      currency: 'JPY',
      frequency: Models::Shared::HrisCompensationFrequency::HOUR,
      notes: 'Annus adficio suasoria architecto aggero.',
      type: Models::Shared::HrisCompensationType::OTHER,
    ),
  ],
  created_at: DateTime.iso8601('2019-07-01T23:53:15.738Z'),
  employee_user_id: '<id>',
  end_at: DateTime.iso8601('2026-08-28T08:36:26.125Z'),
  hours: 8.0,
  id: '66e56b79-777c-4816-93c2-56aab6d4a323',
  is_approved: true,
  start_at: DateTime.iso8601('2023-06-26T11:39:07.841Z'),
  updated_at: DateTime.iso8601('2021-06-23T16:49:43.315Z'),
), connection_id: '<id>')

unless res.hris_timeshift.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_timeshift`                                                                                                                                 | [Models::Shared::HrisTimeshift](../../models/shared/hristimeshift.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisTimeshiftQueryParamFields](../../models/operations/createhristimeshiftqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisTimeshiftResponse)](../../models/operations/createhristimeshiftresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_attendance

Retrieve an attendance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisAttendance" method="get" path="/hris/{connection_id}/attendance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_attendance(connection_id: '<id>', id: '<id>')

unless res.hris_attendance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Attendance                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisAttendanceQueryParamFields](../../models/operations/gethrisattendancequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisAttendanceResponse)](../../models/operations/gethrisattendanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_bankaccount

Retrieve a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisBankaccount" method="get" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_bankaccount(connection_id: '<id>', id: '<id>')

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Bankaccount                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisBankaccountQueryParamFields](../../models/operations/gethrisbankaccountqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisBankaccountResponse)](../../models/operations/gethrisbankaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_benefit

Retrieve a benefit

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisBenefit" method="get" path="/hris/{connection_id}/benefit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_benefit(connection_id: '<id>', id: '<id>')

unless res.hris_benefit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Benefit                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisBenefitQueryParamFields](../../models/operations/gethrisbenefitqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisBenefitResponse)](../../models/operations/gethrisbenefitresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_company

Retrieve a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisCompany" method="get" path="/hris/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_company(connection_id: '<id>', id: '<id>')

unless res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Company                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisCompanyQueryParamFields](../../models/operations/gethriscompanyqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisCompanyResponse)](../../models/operations/gethriscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_deduction

Retrieve a deduction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisDeduction" method="get" path="/hris/{connection_id}/deduction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_deduction(connection_id: '<id>', id: '<id>')

unless res.hris_deduction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Deduction                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisDeductionQueryParamFields](../../models/operations/gethrisdeductionqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisDeductionResponse)](../../models/operations/gethrisdeductionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_device

Retrieve a device

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisDevice" method="get" path="/hris/{connection_id}/device/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_device(connection_id: '<id>', id: '<id>')

unless res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Device                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisDeviceQueryParamFields](../../models/operations/gethrisdevicequeryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisDeviceResponse)](../../models/operations/gethrisdeviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_document

Retrieve a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisDocument" method="get" path="/hris/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_document(connection_id: '<id>', id: '<id>')

unless res.hris_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Document                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisDocumentQueryParamFields](../../models/operations/gethrisdocumentqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisDocumentResponse)](../../models/operations/gethrisdocumentresponse.md)**

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

res = s.hris.get_hris_employee(connection_id: '<id>', id: '<id>')

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

## get_hris_group

Retrieve a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisGroup" method="get" path="/hris/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_group(connection_id: '<id>', id: '<id>')

unless res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Group                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisGroupQueryParamFields](../../models/operations/gethrisgroupqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisGroupResponse)](../../models/operations/gethrisgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_location

Retrieve a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisLocation" method="get" path="/hris/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_location(connection_id: '<id>', id: '<id>')

unless res.hris_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Location                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisLocationQueryParamFields](../../models/operations/gethrislocationqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisLocationResponse)](../../models/operations/gethrislocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_payslip

Retrieve a payslip

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisPayslip" method="get" path="/hris/{connection_id}/payslip/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_payslip(connection_id: '<id>', id: '<id>')

unless res.hris_payslip.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Payslip                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisPayslipQueryParamFields](../../models/operations/gethrispayslipqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisPayslipResponse)](../../models/operations/gethrispayslipresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_taxonomy

Retrieve a taxonomy

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisTaxonomy" method="get" path="/hris/{connection_id}/taxonomy/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_taxonomy(connection_id: '<id>', id: '<id>')

unless res.hris_taxonomy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Taxonomy                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisTaxonomyQueryParamFields](../../models/operations/gethristaxonomyqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisTaxonomyResponse)](../../models/operations/gethristaxonomyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_timeoff

Retrieve a timeoff

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisTimeoff" method="get" path="/hris/{connection_id}/timeoff/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_timeoff(connection_id: '<id>', id: '<id>')

unless res.hris_timeoff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Timeoff                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisTimeoffQueryParamFields](../../models/operations/gethristimeoffqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisTimeoffResponse)](../../models/operations/gethristimeoffresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_timeshift

Retrieve a timeshift

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisTimeshift" method="get" path="/hris/{connection_id}/timeshift/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.get_hris_timeshift(connection_id: '<id>', id: '<id>')

unless res.hris_timeshift.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Timeshift                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisTimeshiftQueryParamFields](../../models/operations/gethristimeshiftqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisTimeshiftResponse)](../../models/operations/gethristimeshiftresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_attendances

List all attendances

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisAttendances" method="get" path="/hris/{connection_id}/attendance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisAttendancesRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_attendances(request: req)

unless res.hris_attendances.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListHrisAttendancesRequest](../../models/operations/listhrisattendancesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListHrisAttendancesResponse)](../../models/operations/listhrisattendancesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_bankaccounts

List all bankaccounts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisBankaccounts" method="get" path="/hris/{connection_id}/bankaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisBankaccountsRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_bankaccounts(request: req)

unless res.hris_bankaccounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListHrisBankaccountsRequest](../../models/operations/listhrisbankaccountsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListHrisBankaccountsResponse)](../../models/operations/listhrisbankaccountsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_benefits

List all benefits

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisBenefits" method="get" path="/hris/{connection_id}/benefit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisBenefitsRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_benefits(request: req)

unless res.hris_benefits.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListHrisBenefitsRequest](../../models/operations/listhrisbenefitsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListHrisBenefitsResponse)](../../models/operations/listhrisbenefitsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_companies

List all companies

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisCompanies" method="get" path="/hris/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisCompaniesRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_companies(request: req)

unless res.hris_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListHrisCompaniesRequest](../../models/operations/listhriscompaniesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListHrisCompaniesResponse)](../../models/operations/listhriscompaniesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_deductions

List all deductions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisDeductions" method="get" path="/hris/{connection_id}/deduction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisDeductionsRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_deductions(request: req)

unless res.hris_deductions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListHrisDeductionsRequest](../../models/operations/listhrisdeductionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListHrisDeductionsResponse)](../../models/operations/listhrisdeductionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_devices

List all devices

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisDevices" method="get" path="/hris/{connection_id}/device" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisDevicesRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_devices(request: req)

unless res.hris_devices.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListHrisDevicesRequest](../../models/operations/listhrisdevicesrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListHrisDevicesResponse)](../../models/operations/listhrisdevicesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_documents

List all documents

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisDocuments" method="get" path="/hris/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisDocumentsRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_documents(request: req)

unless res.hris_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListHrisDocumentsRequest](../../models/operations/listhrisdocumentsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListHrisDocumentsResponse)](../../models/operations/listhrisdocumentsresponse.md)**

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

res = s.hris.list_hris_employees(request: req)

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

## list_hris_groups

List all groups

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisGroups" method="get" path="/hris/{connection_id}/group" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisGroupsRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_groups(request: req)

unless res.hris_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListHrisGroupsRequest](../../models/operations/listhrisgroupsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListHrisGroupsResponse)](../../models/operations/listhrisgroupsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_locations

List all locations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisLocations" method="get" path="/hris/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisLocationsRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_locations(request: req)

unless res.hris_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListHrisLocationsRequest](../../models/operations/listhrislocationsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListHrisLocationsResponse)](../../models/operations/listhrislocationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_payslips

List all payslips

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisPayslips" method="get" path="/hris/{connection_id}/payslip" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisPayslipsRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_payslips(request: req)

unless res.hris_payslips.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListHrisPayslipsRequest](../../models/operations/listhrispayslipsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListHrisPayslipsResponse)](../../models/operations/listhrispayslipsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_taxonomies

List all taxonomies

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisTaxonomies" method="get" path="/hris/{connection_id}/taxonomy" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisTaxonomiesRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_taxonomies(request: req)

unless res.hris_taxonomies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListHrisTaxonomiesRequest](../../models/operations/listhristaxonomiesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListHrisTaxonomiesResponse)](../../models/operations/listhristaxonomiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_timeoffs

List all timeoffs

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisTimeoffs" method="get" path="/hris/{connection_id}/timeoff" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisTimeoffsRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_timeoffs(request: req)

unless res.hris_timeoffs.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListHrisTimeoffsRequest](../../models/operations/listhristimeoffsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListHrisTimeoffsResponse)](../../models/operations/listhristimeoffsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_timeshifts

List all timeshifts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisTimeshifts" method="get" path="/hris/{connection_id}/timeshift" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisTimeshiftsRequest.new(
  connection_id: '<id>',
)

res = s.hris.list_hris_timeshifts(request: req)

unless res.hris_timeshifts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListHrisTimeshiftsRequest](../../models/operations/listhristimeshiftsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListHrisTimeshiftsResponse)](../../models/operations/listhristimeshiftsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_attendance

Update an attendance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisAttendance" method="patch" path="/hris/{connection_id}/attendance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisAttendanceRequest.new(
  hris_attendance: Models::Shared::HrisAttendance.new(
    address: Models::Shared::PropertyHrisAttendanceAddress.new(
      address1: '14108 Allie Flats',
      city: 'Kearaborough',
      country_code: 'US',
      postal_code: '23844-2344',
      region: 'Tennessee',
      region_code: 'CA',
    ),
    approved_at: DateTime.iso8601('2021-08-13T10:42:10.868Z'),
    breaks: [
      Models::Shared::HrisAttendanceBreak.new(
        duration_minutes: 12.0,
        end_at: DateTime.iso8601('2023-10-23T23:43:19.003Z'),
        id: 'd60a1001-5a8a-4991-8c21-f4da6036cc87',
        is_paid: true,
        name: 'Lunch',
        start_at: DateTime.iso8601('2023-10-17T03:53:40.584Z'),
      ),
    ],
    created_at: DateTime.iso8601('2021-08-10T19:43:18.452Z'),
    currency: 'UGX',
    declared_tips_amount: 161.0,
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2024-04-07T17:46:51.489Z'),
    hourly_rate: 53.0,
    hours: 10.0,
    id: 'c47a366e-1c08-45fa-9d0c-38d1d738a641',
    job_name: 'Global Creative Supervisor',
    non_cash_tips_amount: 54.0,
    start_at: DateTime.iso8601('2021-11-09T13:58:14.446Z'),
    status: Models::Shared::HrisAttendanceStatus::CLOSED,
    timezone: 'America/Atikokan',
    updated_at: DateTime.iso8601('2022-01-17T07:38:03.668Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_attendance(request: req)

unless res.hris_attendance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchHrisAttendanceRequest](../../models/operations/patchhrisattendancerequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchHrisAttendanceResponse)](../../models/operations/patchhrisattendanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_bankaccount

Update a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisBankaccount" method="patch" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisBankaccountRequest.new(
  hris_bankaccount: Models::Shared::HrisBankaccount.new(
    account_number: '****3777',
    account_number_last4: '3777',
    account_type: Models::Shared::HrisBankaccountAccountType::CHECKING,
    bank_name: 'Huel Group',
    created_at: DateTime.iso8601('2019-11-16T16:43:45.976Z'),
    id: 'a59c46a7-5d4b-45df-98f1-c5935aac4d1f',
    is_primary: false,
    name: 'Checking Account',
    routing_number: '448650724',
    updated_at: DateTime.iso8601('2025-06-06T22:35:03.403Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_bankaccount(request: req)

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchHrisBankaccountRequest](../../models/operations/patchhrisbankaccountrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchHrisBankaccountResponse)](../../models/operations/patchhrisbankaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_benefit

Update a benefit

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisBenefit" method="patch" path="/hris/{connection_id}/benefit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisBenefitRequest.new(
  hris_benefit: Models::Shared::HrisBenefit.new(
    coverage_level: Models::Shared::CoverageLevel::EMPLOYEE_SPOUSE,
    created_at: DateTime.iso8601('2020-06-11T01:24:05.654Z'),
    currency: 'JOD',
    description: 'Vomito voluptas dolor sed.',
    employer_contribution_amount: 185_006.0,
    employer_contribution_max_amount: 179_093.0,
    employer_contribution_type: Models::Shared::EmployerContributionType::PERCENTAGE,
    frequency: Models::Shared::HrisBenefitFrequency::HOUR,
    id: '8afb2ac2-392c-4be4-aa88-39cea81b92ae',
    is_active: false,
    name: 'Frozen Wooden Ball',
    tax: Models::Shared::Tax::PRE_TAX,
    type: Models::Shared::HrisBenefitType::GARNISHMENT,
    updated_at: DateTime.iso8601('2023-03-07T18:44:31.799Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_benefit(request: req)

unless res.hris_benefit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchHrisBenefitRequest](../../models/operations/patchhrisbenefitrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchHrisBenefitResponse)](../../models/operations/patchhrisbenefitresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_company

Update a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisCompany" method="patch" path="/hris/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisCompanyRequest.new(
  hris_company: Models::Shared::HrisCompany.new(
    address: Models::Shared::PropertyHrisCompanyAddress.new(
      address1: '2549 Church Walk',
      city: 'Lake Nettiebury',
      country_code: 'US',
      postal_code: '32877-4898',
      region: 'Idaho',
      region_code: 'PA',
    ),
    created_at: DateTime.iso8601('2021-05-02T22:27:38.970Z'),
    id: '50bdb37f-e21e-4d15-b7dd-677113a9b1d3',
    legal_name: 'Schultz LLC',
    name: 'Gottlieb Group',
    updated_at: DateTime.iso8601('2026-09-08T21:31:26.681Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_company(request: req)

unless res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchHrisCompanyRequest](../../models/operations/patchhriscompanyrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchHrisCompanyResponse)](../../models/operations/patchhriscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_deduction

Update a deduction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisDeduction" method="patch" path="/hris/{connection_id}/deduction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisDeductionRequest.new(
  hris_deduction: Models::Shared::HrisDeduction.new(
    amount: 139_655.0,
    coverage_level: Models::Shared::HrisDeductionCoverageLevel::EMPLOYEE_ONLY,
    created_at: DateTime.iso8601('2020-02-05T01:46:31.384Z'),
    end_at: DateTime.iso8601('2026-05-25T20:05:49.207Z'),
    frequency: Models::Shared::HrisDeductionFrequency::MONTH,
    id: '271b0d0e-936f-4af8-9bed-1b4a1174fd65',
    is_active: false,
    notes: 'Carmen desidero.',
    start_at: DateTime.iso8601('2025-02-20T12:02:49.120Z'),
    type: Models::Shared::HrisDeductionType::FIXED,
    updated_at: DateTime.iso8601('2024-03-03T20:28:34.384Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_deduction(request: req)

unless res.hris_deduction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchHrisDeductionRequest](../../models/operations/patchhrisdeductionrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchHrisDeductionResponse)](../../models/operations/patchhrisdeductionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_device

Update a device

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisDevice" method="patch" path="/hris/{connection_id}/device/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisDeviceRequest.new(
  hris_device: Models::Shared::HrisDevice.new(
    admin_user_ids: [],
    asset_tag: 'dpho9OuFNG',
    created_at: DateTime.iso8601('2019-04-04T17:11:40.322Z'),
    has_antivirus: false,
    has_firewall: true,
    has_hd_encrypted: true,
    has_password_manager: true,
    has_screenlock: true,
    id: '1e939b25-a7cf-4ff0-a182-104bfe9156ca',
    is_missing: false,
    manufacturer: 'Sanford - Hamill',
    model: 'Refined',
    name: 'cross_contamination_if.rar',
    os: 'monitor',
    os_version: '1.12.16',
    updated_at: DateTime.iso8601('2023-05-22T17:13:26.130Z'),
    version: '2.20.17',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_device(request: req)

unless res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchHrisDeviceRequest](../../models/operations/patchhrisdevicerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchHrisDeviceResponse)](../../models/operations/patchhrisdeviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_document

Update a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisDocument" method="patch" path="/hris/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisDocumentRequest.new(
  hris_document: Models::Shared::HrisDocument.new(
    created_at: DateTime.iso8601('2022-10-27T11:47:26.086Z'),
    document_url: 'https://sore-decision.biz/',
    filename: 'ridge_forager.xsl',
    id: '85c0eb48-5170-4b2a-9af4-354cdbccee45',
    type: Models::Shared::HrisDocumentType::POLICY,
    updated_at: DateTime.iso8601('2025-09-19T07:57:45.609Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_document(request: req)

unless res.hris_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchHrisDocumentRequest](../../models/operations/patchhrisdocumentrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchHrisDocumentResponse)](../../models/operations/patchhrisdocumentresponse.md)**

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
    hired_at: DateTime.iso8601('2023-05-12T06:08:21.617Z'),
    id: '9b80cc3c-35a4-4eb2-b269-399711785e39',
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
        id: 'cd351d1b-4490-4933-92ab-fea7c8e86868',
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
    updated_at: DateTime.iso8601('2022-02-20T08:15:24.523Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_employee(request: req)

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

## patch_hris_group

Update a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisGroup" method="patch" path="/hris/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisGroupRequest.new(
  hris_group: Models::Shared::HrisGroup.new(
    created_at: DateTime.iso8601('2023-11-01T13:13:40.714Z'),
    description: 'Absorbeo casso.',
    id: '2dc0a185-c73f-4f72-8405-cfd966941363',
    is_active: false,
    name: 'Games',
    type: Models::Shared::HrisGroupType::BUSINESS_UNIT,
    updated_at: DateTime.iso8601('2026-04-26T04:59:49.331Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_group(request: req)

unless res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchHrisGroupRequest](../../models/operations/patchhrisgrouprequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchHrisGroupResponse)](../../models/operations/patchhrisgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_location

Update a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisLocation" method="patch" path="/hris/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisLocationRequest.new(
  hris_location: Models::Shared::HrisLocation.new(
    address: Models::Shared::PropertyHrisLocationAddress.new(
      address1: '2743 Connelly Summit',
      address2: 'Apt. 350',
      city: 'Titusville',
      country_code: 'US',
      postal_code: '16154-1095',
      region: 'Oregon',
      region_code: 'AL',
    ),
    created_at: DateTime.iso8601('2021-07-18T10:32:01.414Z'),
    currency: 'MUR',
    description: 'Acervus caries.',
    external_identifier: 'fd01f7ca-7b21-4d32-a619-3b75e64df32b',
    id: 'f28f28b3-6633-431a-8161-7ef046d9d815',
    is_active: true,
    is_hq: false,
    language_locale: 'fr',
    name: 'adhuc',
    telephones: [
      Models::Shared::HrisTelephone.new(
        telephone: '(710) 550-6997',
        type: Models::Shared::HrisTelephoneType::FAX,
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(208) 555-8542',
        type: Models::Shared::HrisTelephoneType::HOME,
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(712) 473-5482',
        type: Models::Shared::HrisTelephoneType::FAX,
      ),
    ],
    timezone: 'America/Guyana',
    updated_at: DateTime.iso8601('2023-06-10T03:17:45.026Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_location(request: req)

unless res.hris_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchHrisLocationRequest](../../models/operations/patchhrislocationrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchHrisLocationResponse)](../../models/operations/patchhrislocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_timeoff

Update a timeoff

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisTimeoff" method="patch" path="/hris/{connection_id}/timeoff/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisTimeoffRequest.new(
  hris_timeoff: Models::Shared::HrisTimeoff.new(
    approved_at: DateTime.iso8601('2022-02-21T02:34:00.708Z'),
    comments: 'Blandior ventus curiositas amplitudo.',
    created_at: DateTime.iso8601('2021-10-06T18:00:20.615Z'),
    duration: 4.0,
    duration_type: Models::Shared::DurationType::DAY,
    end_at: DateTime.iso8601('2024-12-09T12:28:57.445Z'),
    id: '0827ff67-76de-4e75-a057-caf46aa2bff1',
    is_paid: true,
    original_type: 'acerbitas ut',
    reason: 'verto',
    start_at: DateTime.iso8601('2023-08-24T10:33:26.226Z'),
    status: Models::Shared::HrisTimeoffStatus::DENIED,
    type: Models::Shared::HrisTimeoffType::IN_LIEU,
    updated_at: DateTime.iso8601('2022-07-08T06:37:13.086Z'),
    user_id: '<id>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_timeoff(request: req)

unless res.hris_timeoff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchHrisTimeoffRequest](../../models/operations/patchhristimeoffrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchHrisTimeoffResponse)](../../models/operations/patchhristimeoffresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_timeshift

Update a timeshift

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisTimeshift" method="patch" path="/hris/{connection_id}/timeshift/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisTimeshiftRequest.new(
  hris_timeshift: Models::Shared::HrisTimeshift.new(
    approved_at: DateTime.iso8601('2023-06-07T06:09:27.547Z'),
    compensation: [
      Models::Shared::HrisCompensation.new(
        amount: 76_761.0,
        currency: 'JPY',
        frequency: Models::Shared::HrisCompensationFrequency::HOUR,
        notes: 'Annus adficio suasoria architecto aggero.',
        type: Models::Shared::HrisCompensationType::OTHER,
      ),
    ],
    created_at: DateTime.iso8601('2019-07-01T23:53:15.738Z'),
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2026-08-28T08:36:26.141Z'),
    hours: 8.0,
    id: 'f4e9abcd-0967-4162-a883-8936d4157af5',
    is_approved: true,
    start_at: DateTime.iso8601('2023-06-26T11:39:07.851Z'),
    updated_at: DateTime.iso8601('2021-06-23T16:49:43.319Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.patch_hris_timeshift(request: req)

unless res.hris_timeshift.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchHrisTimeshiftRequest](../../models/operations/patchhristimeshiftrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchHrisTimeshiftResponse)](../../models/operations/patchhristimeshiftresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_attendance

Remove an attendance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisAttendance" method="delete" path="/hris/{connection_id}/attendance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_attendance(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Attendance |

### Response

**[T.nilable(Models::Operations::RemoveHrisAttendanceResponse)](../../models/operations/removehrisattendanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_bankaccount

Remove a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisBankaccount" method="delete" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_bankaccount(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Bankaccount |

### Response

**[T.nilable(Models::Operations::RemoveHrisBankaccountResponse)](../../models/operations/removehrisbankaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_benefit

Remove a benefit

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisBenefit" method="delete" path="/hris/{connection_id}/benefit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_benefit(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Benefit    |

### Response

**[T.nilable(Models::Operations::RemoveHrisBenefitResponse)](../../models/operations/removehrisbenefitresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_company

Remove a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisCompany" method="delete" path="/hris/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_company(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Company    |

### Response

**[T.nilable(Models::Operations::RemoveHrisCompanyResponse)](../../models/operations/removehriscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_deduction

Remove a deduction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisDeduction" method="delete" path="/hris/{connection_id}/deduction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_deduction(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Deduction  |

### Response

**[T.nilable(Models::Operations::RemoveHrisDeductionResponse)](../../models/operations/removehrisdeductionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_device

Remove a device

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisDevice" method="delete" path="/hris/{connection_id}/device/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_device(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Device     |

### Response

**[T.nilable(Models::Operations::RemoveHrisDeviceResponse)](../../models/operations/removehrisdeviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_document

Remove a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisDocument" method="delete" path="/hris/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_document(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Document   |

### Response

**[T.nilable(Models::Operations::RemoveHrisDocumentResponse)](../../models/operations/removehrisdocumentresponse.md)**

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

res = s.hris.remove_hris_employee(connection_id: '<id>', id: '<id>')

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

## remove_hris_group

Remove a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisGroup" method="delete" path="/hris/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_group(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Group      |

### Response

**[T.nilable(Models::Operations::RemoveHrisGroupResponse)](../../models/operations/removehrisgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_location

Remove a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisLocation" method="delete" path="/hris/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_location(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Location   |

### Response

**[T.nilable(Models::Operations::RemoveHrisLocationResponse)](../../models/operations/removehrislocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_timeoff

Remove a timeoff

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisTimeoff" method="delete" path="/hris/{connection_id}/timeoff/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_timeoff(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Timeoff    |

### Response

**[T.nilable(Models::Operations::RemoveHrisTimeoffResponse)](../../models/operations/removehristimeoffresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_timeshift

Remove a timeshift

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisTimeshift" method="delete" path="/hris/{connection_id}/timeshift/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.hris.remove_hris_timeshift(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Timeshift  |

### Response

**[T.nilable(Models::Operations::RemoveHrisTimeshiftResponse)](../../models/operations/removehristimeshiftresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_attendance

Update an attendance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisAttendance" method="put" path="/hris/{connection_id}/attendance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisAttendanceRequest.new(
  hris_attendance: Models::Shared::HrisAttendance.new(
    address: Models::Shared::PropertyHrisAttendanceAddress.new(
      address1: '14108 Allie Flats',
      city: 'Kearaborough',
      country_code: 'US',
      postal_code: '23844-2344',
      region: 'Tennessee',
      region_code: 'CA',
    ),
    approved_at: DateTime.iso8601('2021-08-13T10:42:10.868Z'),
    breaks: [
      Models::Shared::HrisAttendanceBreak.new(
        duration_minutes: 12.0,
        end_at: DateTime.iso8601('2023-10-23T23:43:19.003Z'),
        id: 'd60a1001-5a8a-4991-8c21-f4da6036cc87',
        is_paid: true,
        name: 'Lunch',
        start_at: DateTime.iso8601('2023-10-17T03:53:40.584Z'),
      ),
    ],
    created_at: DateTime.iso8601('2021-08-10T19:43:18.452Z'),
    currency: 'UGX',
    declared_tips_amount: 161.0,
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2024-04-07T17:46:51.489Z'),
    hourly_rate: 53.0,
    hours: 10.0,
    id: 'c47a366e-1c08-45fa-9d0c-38d1d738a641',
    job_name: 'Global Creative Supervisor',
    non_cash_tips_amount: 54.0,
    start_at: DateTime.iso8601('2021-11-09T13:58:14.446Z'),
    status: Models::Shared::HrisAttendanceStatus::CLOSED,
    timezone: 'America/Atikokan',
    updated_at: DateTime.iso8601('2022-01-17T07:38:03.668Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_attendance(request: req)

unless res.hris_attendance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateHrisAttendanceRequest](../../models/operations/updatehrisattendancerequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateHrisAttendanceResponse)](../../models/operations/updatehrisattendanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_bankaccount

Update a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisBankaccount" method="put" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisBankaccountRequest.new(
  hris_bankaccount: Models::Shared::HrisBankaccount.new(
    account_number: '****3777',
    account_number_last4: '3777',
    account_type: Models::Shared::HrisBankaccountAccountType::CHECKING,
    bank_name: 'Huel Group',
    created_at: DateTime.iso8601('2019-11-16T16:43:45.976Z'),
    id: 'a59c46a7-5d4b-45df-98f1-c5935aac4d1f',
    is_primary: false,
    name: 'Checking Account',
    routing_number: '448650724',
    updated_at: DateTime.iso8601('2025-06-06T22:35:03.403Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_bankaccount(request: req)

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateHrisBankaccountRequest](../../models/operations/updatehrisbankaccountrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateHrisBankaccountResponse)](../../models/operations/updatehrisbankaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_benefit

Update a benefit

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisBenefit" method="put" path="/hris/{connection_id}/benefit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisBenefitRequest.new(
  hris_benefit: Models::Shared::HrisBenefit.new(
    coverage_level: Models::Shared::CoverageLevel::EMPLOYEE_SPOUSE,
    created_at: DateTime.iso8601('2020-06-11T01:24:05.654Z'),
    currency: 'JOD',
    description: 'Vomito voluptas dolor sed.',
    employer_contribution_amount: 185_006.0,
    employer_contribution_max_amount: 179_093.0,
    employer_contribution_type: Models::Shared::EmployerContributionType::PERCENTAGE,
    frequency: Models::Shared::HrisBenefitFrequency::HOUR,
    id: '8afb2ac2-392c-4be4-aa88-39cea81b92ae',
    is_active: false,
    name: 'Frozen Wooden Ball',
    tax: Models::Shared::Tax::PRE_TAX,
    type: Models::Shared::HrisBenefitType::GARNISHMENT,
    updated_at: DateTime.iso8601('2023-03-07T18:44:31.799Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_benefit(request: req)

unless res.hris_benefit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateHrisBenefitRequest](../../models/operations/updatehrisbenefitrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateHrisBenefitResponse)](../../models/operations/updatehrisbenefitresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_company

Update a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisCompany" method="put" path="/hris/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisCompanyRequest.new(
  hris_company: Models::Shared::HrisCompany.new(
    address: Models::Shared::PropertyHrisCompanyAddress.new(
      address1: '2549 Church Walk',
      city: 'Lake Nettiebury',
      country_code: 'US',
      postal_code: '32877-4898',
      region: 'Idaho',
      region_code: 'PA',
    ),
    created_at: DateTime.iso8601('2021-05-02T22:27:38.970Z'),
    id: '50bdb37f-e21e-4d15-b7dd-677113a9b1d3',
    legal_name: 'Schultz LLC',
    name: 'Gottlieb Group',
    updated_at: DateTime.iso8601('2026-09-08T21:31:26.681Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_company(request: req)

unless res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateHrisCompanyRequest](../../models/operations/updatehriscompanyrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateHrisCompanyResponse)](../../models/operations/updatehriscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_deduction

Update a deduction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisDeduction" method="put" path="/hris/{connection_id}/deduction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisDeductionRequest.new(
  hris_deduction: Models::Shared::HrisDeduction.new(
    amount: 139_655.0,
    coverage_level: Models::Shared::HrisDeductionCoverageLevel::EMPLOYEE_ONLY,
    created_at: DateTime.iso8601('2020-02-05T01:46:31.384Z'),
    end_at: DateTime.iso8601('2026-05-25T20:05:49.207Z'),
    frequency: Models::Shared::HrisDeductionFrequency::MONTH,
    id: '271b0d0e-936f-4af8-9bed-1b4a1174fd65',
    is_active: false,
    notes: 'Carmen desidero.',
    start_at: DateTime.iso8601('2025-02-20T12:02:49.120Z'),
    type: Models::Shared::HrisDeductionType::FIXED,
    updated_at: DateTime.iso8601('2024-03-03T20:28:34.384Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_deduction(request: req)

unless res.hris_deduction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateHrisDeductionRequest](../../models/operations/updatehrisdeductionrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateHrisDeductionResponse)](../../models/operations/updatehrisdeductionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_device

Update a device

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisDevice" method="put" path="/hris/{connection_id}/device/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisDeviceRequest.new(
  hris_device: Models::Shared::HrisDevice.new(
    admin_user_ids: [],
    asset_tag: 'dpho9OuFNG',
    created_at: DateTime.iso8601('2019-04-04T17:11:40.322Z'),
    has_antivirus: false,
    has_firewall: true,
    has_hd_encrypted: true,
    has_password_manager: true,
    has_screenlock: true,
    id: '1e939b25-a7cf-4ff0-a182-104bfe9156ca',
    is_missing: false,
    manufacturer: 'Sanford - Hamill',
    model: 'Refined',
    name: 'cross_contamination_if.rar',
    os: 'monitor',
    os_version: '1.12.16',
    updated_at: DateTime.iso8601('2023-05-22T17:13:26.130Z'),
    version: '2.20.17',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_device(request: req)

unless res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateHrisDeviceRequest](../../models/operations/updatehrisdevicerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateHrisDeviceResponse)](../../models/operations/updatehrisdeviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_document

Update a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisDocument" method="put" path="/hris/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisDocumentRequest.new(
  hris_document: Models::Shared::HrisDocument.new(
    created_at: DateTime.iso8601('2022-10-27T11:47:26.086Z'),
    document_url: 'https://sore-decision.biz/',
    filename: 'ridge_forager.xsl',
    id: '85c0eb48-5170-4b2a-9af4-354cdbccee45',
    type: Models::Shared::HrisDocumentType::POLICY,
    updated_at: DateTime.iso8601('2025-09-19T07:57:45.609Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_document(request: req)

unless res.hris_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateHrisDocumentRequest](../../models/operations/updatehrisdocumentrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateHrisDocumentResponse)](../../models/operations/updatehrisdocumentresponse.md)**

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
    hired_at: DateTime.iso8601('2023-05-12T06:08:21.617Z'),
    id: '9b80cc3c-35a4-4eb2-b269-399711785e39',
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
        id: 'cd351d1b-4490-4933-92ab-fea7c8e86868',
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
    updated_at: DateTime.iso8601('2022-02-20T08:15:24.523Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_employee(request: req)

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

## update_hris_group

Update a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisGroup" method="put" path="/hris/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisGroupRequest.new(
  hris_group: Models::Shared::HrisGroup.new(
    created_at: DateTime.iso8601('2023-11-01T13:13:40.714Z'),
    description: 'Absorbeo casso.',
    id: '2dc0a185-c73f-4f72-8405-cfd966941363',
    is_active: false,
    name: 'Games',
    type: Models::Shared::HrisGroupType::BUSINESS_UNIT,
    updated_at: DateTime.iso8601('2026-04-26T04:59:49.331Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_group(request: req)

unless res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateHrisGroupRequest](../../models/operations/updatehrisgrouprequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateHrisGroupResponse)](../../models/operations/updatehrisgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_location

Update a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisLocation" method="put" path="/hris/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisLocationRequest.new(
  hris_location: Models::Shared::HrisLocation.new(
    address: Models::Shared::PropertyHrisLocationAddress.new(
      address1: '2743 Connelly Summit',
      address2: 'Apt. 350',
      city: 'Titusville',
      country_code: 'US',
      postal_code: '16154-1095',
      region: 'Oregon',
      region_code: 'AL',
    ),
    created_at: DateTime.iso8601('2021-07-18T10:32:01.414Z'),
    currency: 'MUR',
    description: 'Acervus caries.',
    external_identifier: 'fd01f7ca-7b21-4d32-a619-3b75e64df32b',
    id: 'f28f28b3-6633-431a-8161-7ef046d9d815',
    is_active: true,
    is_hq: false,
    language_locale: 'fr',
    name: 'adhuc',
    telephones: [
      Models::Shared::HrisTelephone.new(
        telephone: '(710) 550-6997',
        type: Models::Shared::HrisTelephoneType::FAX,
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(208) 555-8542',
        type: Models::Shared::HrisTelephoneType::HOME,
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(712) 473-5482',
        type: Models::Shared::HrisTelephoneType::FAX,
      ),
    ],
    timezone: 'America/Guyana',
    updated_at: DateTime.iso8601('2023-06-10T03:17:45.026Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_location(request: req)

unless res.hris_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateHrisLocationRequest](../../models/operations/updatehrislocationrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateHrisLocationResponse)](../../models/operations/updatehrislocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_timeoff

Update a timeoff

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisTimeoff" method="put" path="/hris/{connection_id}/timeoff/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisTimeoffRequest.new(
  hris_timeoff: Models::Shared::HrisTimeoff.new(
    approved_at: DateTime.iso8601('2022-02-21T02:34:00.708Z'),
    comments: 'Blandior ventus curiositas amplitudo.',
    created_at: DateTime.iso8601('2021-10-06T18:00:20.615Z'),
    duration: 4.0,
    duration_type: Models::Shared::DurationType::DAY,
    end_at: DateTime.iso8601('2024-12-09T12:28:57.445Z'),
    id: '0827ff67-76de-4e75-a057-caf46aa2bff1',
    is_paid: true,
    original_type: 'acerbitas ut',
    reason: 'verto',
    start_at: DateTime.iso8601('2023-08-24T10:33:26.226Z'),
    status: Models::Shared::HrisTimeoffStatus::DENIED,
    type: Models::Shared::HrisTimeoffType::IN_LIEU,
    updated_at: DateTime.iso8601('2022-07-08T06:37:13.086Z'),
    user_id: '<id>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_timeoff(request: req)

unless res.hris_timeoff.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateHrisTimeoffRequest](../../models/operations/updatehristimeoffrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateHrisTimeoffResponse)](../../models/operations/updatehristimeoffresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_timeshift

Update a timeshift

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisTimeshift" method="put" path="/hris/{connection_id}/timeshift/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisTimeshiftRequest.new(
  hris_timeshift: Models::Shared::HrisTimeshift.new(
    approved_at: DateTime.iso8601('2023-06-07T06:09:27.547Z'),
    compensation: [
      Models::Shared::HrisCompensation.new(
        amount: 76_761.0,
        currency: 'JPY',
        frequency: Models::Shared::HrisCompensationFrequency::HOUR,
        notes: 'Annus adficio suasoria architecto aggero.',
        type: Models::Shared::HrisCompensationType::OTHER,
      ),
    ],
    created_at: DateTime.iso8601('2019-07-01T23:53:15.738Z'),
    employee_user_id: '<id>',
    end_at: DateTime.iso8601('2026-08-28T08:36:26.141Z'),
    hours: 8.0,
    id: 'f4e9abcd-0967-4162-a883-8936d4157af5',
    is_approved: true,
    start_at: DateTime.iso8601('2023-06-26T11:39:07.851Z'),
    updated_at: DateTime.iso8601('2021-06-23T16:49:43.319Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.hris.update_hris_timeshift(request: req)

unless res.hris_timeshift.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateHrisTimeshiftRequest](../../models/operations/updatehristimeshiftrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateHrisTimeshiftResponse)](../../models/operations/updatehristimeshiftresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |