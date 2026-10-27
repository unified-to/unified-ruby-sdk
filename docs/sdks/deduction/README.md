# Deduction
(*deduction*)

## Overview

### Available Operations

* [create_hris_deduction](#create_hris_deduction) - Create a deduction
* [get_hris_deduction](#get_hris_deduction) - Retrieve a deduction
* [list_hris_deductions](#list_hris_deductions) - List all deductions
* [patch_hris_deduction](#patch_hris_deduction) - Update a deduction
* [remove_hris_deduction](#remove_hris_deduction) - Remove a deduction
* [update_hris_deduction](#update_hris_deduction) - Update a deduction

## create_hris_deduction

Creates a HrisDeduction. Provide the unified HrisDeduction fields in the request body; they are mapped to the provider's API. Returns the created HrisDeduction.

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

res = s.deduction.create_hris_deduction(hris_deduction: Models::Shared::HrisDeduction.new(
  amount: 564.0,
  coverage_level: Models::Shared::HrisDeductionCoverageLevel::EMPLOYEE_CHILD,
  created_at: DateTime.iso8601('2020-02-05T01:46:31.384Z'),
  employer_amount: 80_510.0,
  employer_type: Models::Shared::EmployerType::PERCENTAGE,
  frequency: Models::Shared::HrisDeductionFrequency::ONE_TIME,
  garnishment_type: Models::Shared::GarnishmentType::CHILD_SUPPORT,
  id: 'b8972c2b-e104-4e53-b595-7c3948f1bd67',
  is_active: true,
  max_amount: 21_794.0,
  metadata: [],
  notes: 'Carmen desidero.',
  start_at: DateTime.iso8601('2025-03-19T19:52:09.936Z'),
  type: Models::Shared::HrisDeductionType::FIXED,
  updated_at: DateTime.iso8601('2024-03-25T22:24:55.526Z'),
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

## get_hris_deduction

Retrieves a single HrisDeduction by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

res = s.deduction.get_hris_deduction(connection_id: '<id>', id: '<id>')

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

## list_hris_deductions

Returns a list of HrisDeductions. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

res = s.deduction.list_hris_deductions(request: req)

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

## patch_hris_deduction

Updates the HrisDeduction identified by `id`. Provide the unified HrisDeduction fields to change in the request body.

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
    amount: 564.0,
    coverage_level: Models::Shared::HrisDeductionCoverageLevel::EMPLOYEE_CHILD,
    created_at: DateTime.iso8601('2020-02-05T01:46:31.384Z'),
    employer_amount: 80_510.0,
    employer_type: Models::Shared::EmployerType::PERCENTAGE,
    frequency: Models::Shared::HrisDeductionFrequency::ONE_TIME,
    garnishment_type: Models::Shared::GarnishmentType::CHILD_SUPPORT,
    id: '447a1b2f-82c9-4973-a318-4292bc612879',
    is_active: true,
    max_amount: 21_794.0,
    metadata: [],
    notes: 'Carmen desidero.',
    start_at: DateTime.iso8601('2025-03-19T19:52:09.949Z'),
    type: Models::Shared::HrisDeductionType::FIXED,
    updated_at: DateTime.iso8601('2024-03-25T22:24:55.535Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.deduction.patch_hris_deduction(request: req)

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

## remove_hris_deduction

Deletes the HrisDeduction identified by `id`.

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

res = s.deduction.remove_hris_deduction(connection_id: '<id>', id: '<id>')

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

## update_hris_deduction

Updates the HrisDeduction identified by `id`. Provide the unified HrisDeduction fields to change in the request body.

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
    amount: 564.0,
    coverage_level: Models::Shared::HrisDeductionCoverageLevel::EMPLOYEE_CHILD,
    created_at: DateTime.iso8601('2020-02-05T01:46:31.384Z'),
    employer_amount: 80_510.0,
    employer_type: Models::Shared::EmployerType::PERCENTAGE,
    frequency: Models::Shared::HrisDeductionFrequency::ONE_TIME,
    garnishment_type: Models::Shared::GarnishmentType::CHILD_SUPPORT,
    id: '447a1b2f-82c9-4973-a318-4292bc612879',
    is_active: true,
    max_amount: 21_794.0,
    metadata: [],
    notes: 'Carmen desidero.',
    start_at: DateTime.iso8601('2025-03-19T19:52:09.949Z'),
    type: Models::Shared::HrisDeductionType::FIXED,
    updated_at: DateTime.iso8601('2024-03-25T22:24:55.535Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.deduction.update_hris_deduction(request: req)

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