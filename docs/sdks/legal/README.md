# Legal
(*legal*)

## Overview

### Available Operations

* [create_legal_expense](#create_legal_expense) - Create an expense
* [create_legal_matter](#create_legal_matter) - Create a matter
* [create_legal_practicearea](#create_legal_practicearea) - Create a practicearea
* [create_legal_timeentry](#create_legal_timeentry) - Create a timeentry
* [get_legal_expense](#get_legal_expense) - Retrieve an expense
* [get_legal_matter](#get_legal_matter) - Retrieve a matter
* [get_legal_practicearea](#get_legal_practicearea) - Retrieve a practicearea
* [get_legal_timeentry](#get_legal_timeentry) - Retrieve a timeentry
* [list_legal_expenses](#list_legal_expenses) - List all expenses
* [list_legal_matters](#list_legal_matters) - List all matters
* [list_legal_practiceareas](#list_legal_practiceareas) - List all practiceareas
* [list_legal_timeentries](#list_legal_timeentries) - List all timeentries
* [patch_legal_expense](#patch_legal_expense) - Update an expense
* [patch_legal_matter](#patch_legal_matter) - Update a matter
* [patch_legal_practicearea](#patch_legal_practicearea) - Update a practicearea
* [patch_legal_timeentry](#patch_legal_timeentry) - Update a timeentry
* [remove_legal_expense](#remove_legal_expense) - Remove an expense
* [remove_legal_matter](#remove_legal_matter) - Remove a matter
* [remove_legal_practicearea](#remove_legal_practicearea) - Remove a practicearea
* [remove_legal_timeentry](#remove_legal_timeentry) - Remove a timeentry
* [update_legal_expense](#update_legal_expense) - Update an expense
* [update_legal_matter](#update_legal_matter) - Update a matter
* [update_legal_practicearea](#update_legal_practicearea) - Update a practicearea
* [update_legal_timeentry](#update_legal_timeentry) - Update a timeentry

## create_legal_expense

Creates a LegalExpense. Provide the unified LegalExpense fields in the request body; they are mapped to the provider's API. Returns the created LegalExpense.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLegalExpense" method="post" path="/legal/{connection_id}/expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.create_legal_expense(legal_expense: Models::Shared::LegalExpense.new(
  category: 'Kids',
  created_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
  currency: 'MVR',
  description: 'Temporibus agnitio sui.',
  id: '2148c2d7-6e2a-4ca1-a9ee-14e9745c4013',
  incurred_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
  is_billed: false,
  metadata: [],
  price_amount: 100.0,
  quantity: 3.0,
  total_amount: 300.0,
  type: Models::Shared::LegalExpenseType::OTHER,
  updated_at: DateTime.iso8601('2024-04-02T17:20:21.925Z'),
), connection_id: '<id>')

unless res.legal_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `legal_expense`                                                                                                                                  | [Models::Shared::LegalExpense](../../models/shared/legalexpense.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLegalExpenseQueryParamFields](../../models/operations/createlegalexpensequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLegalExpenseResponse)](../../models/operations/createlegalexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_legal_matter

Creates a LegalMatter. Provide the unified LegalMatter fields in the request body; they are mapped to the provider's API. Returns the created LegalMatter.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLegalMatter" method="post" path="/legal/{connection_id}/matter" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.create_legal_matter(legal_matter: Models::Shared::LegalMatter.new(
  billing_method: Models::Shared::BillingMethod::OTHER,
  client_reference: 'qSrjIBAD',
  company_ids: [],
  contact_ids: [],
  created_at: DateTime.iso8601('2023-05-28T04:10:42.375Z'),
  currency: 'BOB',
  description: 'Speciosus cresco aut cotidie temeritas arma.',
  id: '7718923e-24bf-40c6-9f18-ce51ec38a06e',
  metadata: [],
  name: 'Walter v. Franecki - Spinka',
  number: '2023-3062',
  opened_at: DateTime.iso8601('2023-07-05T09:51:42.562Z'),
  parties: [
    Models::Shared::LegalParty.new(
      description: 'Urban Walter',
      role: Models::Shared::LegalPartyRole::EXPERT,
    ),
  ],
  stage: 'currus',
  status: Models::Shared::LegalMatterStatus::OPEN,
  statute_of_limitations_at: DateTime.iso8601('2027-07-03T16:55:58.157Z'),
  updated_at: DateTime.iso8601('2023-07-17T14:46:22.077Z'),
), connection_id: '<id>')

unless res.legal_matter.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `legal_matter`                                                                                                                                   | [Models::Shared::LegalMatter](../../models/shared/legalmatter.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLegalMatterQueryParamFields](../../models/operations/createlegalmatterqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLegalMatterResponse)](../../models/operations/createlegalmatterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_legal_practicearea

Creates a LegalPracticearea. Provide the unified LegalPracticearea fields in the request body; they are mapped to the provider's API. Returns the created LegalPracticearea.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLegalPracticearea" method="post" path="/legal/{connection_id}/practicearea" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.create_legal_practicearea(legal_practicearea: Models::Shared::LegalPracticearea.new(
  code: 'QCA',
  created_at: DateTime.iso8601('2023-01-28T21:00:26.264Z'),
  id: '72e763ef-e9f8-4402-9925-77f4052a8b46',
  metadata: [],
  name: 'witty Law',
  type: Models::Shared::LegalPracticeareaType::EDUCATION,
  updated_at: DateTime.iso8601('2025-08-31T01:13:37.586Z'),
), connection_id: '<id>')

unless res.legal_practicearea.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `legal_practicearea`                                                                                                                             | [Models::Shared::LegalPracticearea](../../models/shared/legalpracticearea.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLegalPracticeareaQueryParamFields](../../models/operations/createlegalpracticeareaqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLegalPracticeareaResponse)](../../models/operations/createlegalpracticearearesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_legal_timeentry

Creates a LegalTimeentry. Provide the unified LegalTimeentry fields in the request body; they are mapped to the provider's API. Returns the created LegalTimeentry.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLegalTimeentry" method="post" path="/legal/{connection_id}/timeentry" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.create_legal_timeentry(legal_timeentry: Models::Shared::LegalTimeentry.new(
  billable_minutes: 390.0,
  created_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
  currency: 'ZAR',
  description: 'Ea derideo adulatio torrens.',
  id: '5a178f7e-c7c6-4dba-b30a-74cccfa791a9',
  is_billable: true,
  metadata: [],
  minutes: 390.0,
  rate_amount: 637.0,
  total_amount: 4_140.5,
  updated_at: DateTime.iso8601('2022-06-30T05:43:37.530Z'),
  worked_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
), connection_id: '<id>')

unless res.legal_timeentry.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `legal_timeentry`                                                                                                                                | [Models::Shared::LegalTimeentry](../../models/shared/legaltimeentry.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLegalTimeentryQueryParamFields](../../models/operations/createlegaltimeentryqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLegalTimeentryResponse)](../../models/operations/createlegaltimeentryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_legal_expense

Retrieves a single LegalExpense by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLegalExpense" method="get" path="/legal/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.get_legal_expense(connection_id: '<id>', id: '<id>')

unless res.legal_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Expense                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLegalExpenseQueryParamFields](../../models/operations/getlegalexpensequeryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLegalExpenseResponse)](../../models/operations/getlegalexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_legal_matter

Retrieves a single LegalMatter by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLegalMatter" method="get" path="/legal/{connection_id}/matter/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.get_legal_matter(connection_id: '<id>', id: '<id>')

unless res.legal_matter.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Matter                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLegalMatterQueryParamFields](../../models/operations/getlegalmatterqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLegalMatterResponse)](../../models/operations/getlegalmatterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_legal_practicearea

Retrieves a single LegalPracticearea by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLegalPracticearea" method="get" path="/legal/{connection_id}/practicearea/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.get_legal_practicearea(connection_id: '<id>', id: '<id>')

unless res.legal_practicearea.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Practicearea                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLegalPracticeareaQueryParamFields](../../models/operations/getlegalpracticeareaqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLegalPracticeareaResponse)](../../models/operations/getlegalpracticearearesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_legal_timeentry

Retrieves a single LegalTimeentry by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLegalTimeentry" method="get" path="/legal/{connection_id}/timeentry/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.get_legal_timeentry(connection_id: '<id>', id: '<id>')

unless res.legal_timeentry.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Timeentry                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLegalTimeentryQueryParamFields](../../models/operations/getlegaltimeentryqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLegalTimeentryResponse)](../../models/operations/getlegaltimeentryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_legal_expenses

Returns a list of LegalExpenses. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLegalExpenses" method="get" path="/legal/{connection_id}/expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLegalExpensesRequest.new(
  connection_id: '<id>',
)

res = s.legal.list_legal_expenses(request: req)

unless res.legal_expenses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListLegalExpensesRequest](../../models/operations/listlegalexpensesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListLegalExpensesResponse)](../../models/operations/listlegalexpensesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_legal_matters

Returns a list of LegalMatters. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLegalMatters" method="get" path="/legal/{connection_id}/matter" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLegalMattersRequest.new(
  connection_id: '<id>',
)

res = s.legal.list_legal_matters(request: req)

unless res.legal_matters.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListLegalMattersRequest](../../models/operations/listlegalmattersrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListLegalMattersResponse)](../../models/operations/listlegalmattersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_legal_practiceareas

Returns a list of LegalPracticeareas. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLegalPracticeareas" method="get" path="/legal/{connection_id}/practicearea" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLegalPracticeareasRequest.new(
  connection_id: '<id>',
)

res = s.legal.list_legal_practiceareas(request: req)

unless res.legal_practiceareas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListLegalPracticeareasRequest](../../models/operations/listlegalpracticeareasrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListLegalPracticeareasResponse)](../../models/operations/listlegalpracticeareasresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_legal_timeentries

Returns a list of LegalTimeentries. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLegalTimeentries" method="get" path="/legal/{connection_id}/timeentry" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLegalTimeentriesRequest.new(
  connection_id: '<id>',
)

res = s.legal.list_legal_timeentries(request: req)

unless res.legal_timeentries.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListLegalTimeentriesRequest](../../models/operations/listlegaltimeentriesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListLegalTimeentriesResponse)](../../models/operations/listlegaltimeentriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_legal_expense

Updates the LegalExpense identified by `id`. Provide the unified LegalExpense fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLegalExpense" method="patch" path="/legal/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLegalExpenseRequest.new(
  legal_expense: Models::Shared::LegalExpense.new(
    category: 'Kids',
    created_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
    currency: 'MVR',
    description: 'Temporibus agnitio sui.',
    id: '7a10a75b-343e-4ef6-8a9b-056cd4207156',
    incurred_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
    is_billed: false,
    metadata: [],
    price_amount: 100.0,
    quantity: 3.0,
    total_amount: 300.0,
    type: Models::Shared::LegalExpenseType::OTHER,
    updated_at: DateTime.iso8601('2024-04-02T17:20:21.933Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.legal.patch_legal_expense(request: req)

unless res.legal_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchLegalExpenseRequest](../../models/operations/patchlegalexpenserequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchLegalExpenseResponse)](../../models/operations/patchlegalexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_legal_matter

Updates the LegalMatter identified by `id`. Provide the unified LegalMatter fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLegalMatter" method="patch" path="/legal/{connection_id}/matter/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLegalMatterRequest.new(
  legal_matter: Models::Shared::LegalMatter.new(
    billing_method: Models::Shared::BillingMethod::OTHER,
    client_reference: 'qSrjIBAD',
    company_ids: [],
    contact_ids: [],
    created_at: DateTime.iso8601('2023-05-28T04:10:42.375Z'),
    currency: 'BOB',
    description: 'Speciosus cresco aut cotidie temeritas arma.',
    id: '7b7586b4-97fa-489f-9cab-203f858e2da6',
    metadata: [],
    name: 'Walter v. Franecki - Spinka',
    number: '2023-3062',
    opened_at: DateTime.iso8601('2023-07-05T09:51:42.563Z'),
    parties: [
      Models::Shared::LegalParty.new(
        description: 'Urban Walter',
        role: Models::Shared::LegalPartyRole::EXPERT,
      ),
    ],
    stage: 'currus',
    status: Models::Shared::LegalMatterStatus::OPEN,
    statute_of_limitations_at: DateTime.iso8601('2027-07-03T16:55:58.177Z'),
    updated_at: DateTime.iso8601('2023-07-17T14:46:22.079Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.legal.patch_legal_matter(request: req)

unless res.legal_matter.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchLegalMatterRequest](../../models/operations/patchlegalmatterrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchLegalMatterResponse)](../../models/operations/patchlegalmatterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_legal_practicearea

Updates the LegalPracticearea identified by `id`. Provide the unified LegalPracticearea fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLegalPracticearea" method="patch" path="/legal/{connection_id}/practicearea/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLegalPracticeareaRequest.new(
  legal_practicearea: Models::Shared::LegalPracticearea.new(
    code: 'QCA',
    created_at: DateTime.iso8601('2023-01-28T21:00:26.264Z'),
    id: '00836593-2dd6-4d58-9843-c12233825dcd',
    metadata: [],
    name: 'witty Law',
    type: Models::Shared::LegalPracticeareaType::EDUCATION,
    updated_at: DateTime.iso8601('2025-08-31T01:13:37.596Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.legal.patch_legal_practicearea(request: req)

unless res.legal_practicearea.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchLegalPracticeareaRequest](../../models/operations/patchlegalpracticearearequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchLegalPracticeareaResponse)](../../models/operations/patchlegalpracticearearesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_legal_timeentry

Updates the LegalTimeentry identified by `id`. Provide the unified LegalTimeentry fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLegalTimeentry" method="patch" path="/legal/{connection_id}/timeentry/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLegalTimeentryRequest.new(
  legal_timeentry: Models::Shared::LegalTimeentry.new(
    billable_minutes: 390.0,
    created_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
    currency: 'ZAR',
    description: 'Ea derideo adulatio torrens.',
    id: 'f638c168-c6fa-4e09-afbb-1077a7d6d616',
    is_billable: true,
    metadata: [],
    minutes: 390.0,
    rate_amount: 637.0,
    total_amount: 4_140.5,
    updated_at: DateTime.iso8601('2022-06-30T05:43:37.531Z'),
    worked_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.legal.patch_legal_timeentry(request: req)

unless res.legal_timeentry.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchLegalTimeentryRequest](../../models/operations/patchlegaltimeentryrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchLegalTimeentryResponse)](../../models/operations/patchlegaltimeentryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_legal_expense

Deletes the LegalExpense identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLegalExpense" method="delete" path="/legal/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.remove_legal_expense(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Expense    |

### Response

**[T.nilable(Models::Operations::RemoveLegalExpenseResponse)](../../models/operations/removelegalexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_legal_matter

Deletes the LegalMatter identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLegalMatter" method="delete" path="/legal/{connection_id}/matter/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.remove_legal_matter(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Matter     |

### Response

**[T.nilable(Models::Operations::RemoveLegalMatterResponse)](../../models/operations/removelegalmatterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_legal_practicearea

Deletes the LegalPracticearea identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLegalPracticearea" method="delete" path="/legal/{connection_id}/practicearea/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.remove_legal_practicearea(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Practicearea |

### Response

**[T.nilable(Models::Operations::RemoveLegalPracticeareaResponse)](../../models/operations/removelegalpracticearearesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_legal_timeentry

Deletes the LegalTimeentry identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLegalTimeentry" method="delete" path="/legal/{connection_id}/timeentry/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.legal.remove_legal_timeentry(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Timeentry  |

### Response

**[T.nilable(Models::Operations::RemoveLegalTimeentryResponse)](../../models/operations/removelegaltimeentryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_legal_expense

Updates the LegalExpense identified by `id`. Provide the unified LegalExpense fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLegalExpense" method="put" path="/legal/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLegalExpenseRequest.new(
  legal_expense: Models::Shared::LegalExpense.new(
    category: 'Kids',
    created_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
    currency: 'MVR',
    description: 'Temporibus agnitio sui.',
    id: '7a10a75b-343e-4ef6-8a9b-056cd4207156',
    incurred_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
    is_billed: false,
    metadata: [],
    price_amount: 100.0,
    quantity: 3.0,
    total_amount: 300.0,
    type: Models::Shared::LegalExpenseType::OTHER,
    updated_at: DateTime.iso8601('2024-04-02T17:20:21.933Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.legal.update_legal_expense(request: req)

unless res.legal_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateLegalExpenseRequest](../../models/operations/updatelegalexpenserequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateLegalExpenseResponse)](../../models/operations/updatelegalexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_legal_matter

Updates the LegalMatter identified by `id`. Provide the unified LegalMatter fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLegalMatter" method="put" path="/legal/{connection_id}/matter/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLegalMatterRequest.new(
  legal_matter: Models::Shared::LegalMatter.new(
    billing_method: Models::Shared::BillingMethod::OTHER,
    client_reference: 'qSrjIBAD',
    company_ids: [],
    contact_ids: [],
    created_at: DateTime.iso8601('2023-05-28T04:10:42.375Z'),
    currency: 'BOB',
    description: 'Speciosus cresco aut cotidie temeritas arma.',
    id: '7b7586b4-97fa-489f-9cab-203f858e2da6',
    metadata: [],
    name: 'Walter v. Franecki - Spinka',
    number: '2023-3062',
    opened_at: DateTime.iso8601('2023-07-05T09:51:42.563Z'),
    parties: [
      Models::Shared::LegalParty.new(
        description: 'Urban Walter',
        role: Models::Shared::LegalPartyRole::EXPERT,
      ),
    ],
    stage: 'currus',
    status: Models::Shared::LegalMatterStatus::OPEN,
    statute_of_limitations_at: DateTime.iso8601('2027-07-03T16:55:58.177Z'),
    updated_at: DateTime.iso8601('2023-07-17T14:46:22.079Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.legal.update_legal_matter(request: req)

unless res.legal_matter.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateLegalMatterRequest](../../models/operations/updatelegalmatterrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateLegalMatterResponse)](../../models/operations/updatelegalmatterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_legal_practicearea

Updates the LegalPracticearea identified by `id`. Provide the unified LegalPracticearea fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLegalPracticearea" method="put" path="/legal/{connection_id}/practicearea/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLegalPracticeareaRequest.new(
  legal_practicearea: Models::Shared::LegalPracticearea.new(
    code: 'QCA',
    created_at: DateTime.iso8601('2023-01-28T21:00:26.264Z'),
    id: '00836593-2dd6-4d58-9843-c12233825dcd',
    metadata: [],
    name: 'witty Law',
    type: Models::Shared::LegalPracticeareaType::EDUCATION,
    updated_at: DateTime.iso8601('2025-08-31T01:13:37.596Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.legal.update_legal_practicearea(request: req)

unless res.legal_practicearea.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateLegalPracticeareaRequest](../../models/operations/updatelegalpracticearearequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateLegalPracticeareaResponse)](../../models/operations/updatelegalpracticearearesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_legal_timeentry

Updates the LegalTimeentry identified by `id`. Provide the unified LegalTimeentry fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLegalTimeentry" method="put" path="/legal/{connection_id}/timeentry/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLegalTimeentryRequest.new(
  legal_timeentry: Models::Shared::LegalTimeentry.new(
    billable_minutes: 390.0,
    created_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
    currency: 'ZAR',
    description: 'Ea derideo adulatio torrens.',
    id: 'f638c168-c6fa-4e09-afbb-1077a7d6d616',
    is_billable: true,
    metadata: [],
    minutes: 390.0,
    rate_amount: 637.0,
    total_amount: 4_140.5,
    updated_at: DateTime.iso8601('2022-06-30T05:43:37.531Z'),
    worked_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.legal.update_legal_timeentry(request: req)

unless res.legal_timeentry.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateLegalTimeentryRequest](../../models/operations/updatelegaltimeentryrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateLegalTimeentryResponse)](../../models/operations/updatelegaltimeentryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |