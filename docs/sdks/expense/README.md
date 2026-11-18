# Expense

## Overview

### Available Operations

* [create_accounting_expense](#create_accounting_expense) - Create an expense
* [create_legal_expense](#create_legal_expense) - Create an expense
* [get_accounting_expense](#get_accounting_expense) - Retrieve an expense
* [get_legal_expense](#get_legal_expense) - Retrieve an expense
* [list_accounting_expenses](#list_accounting_expenses) - List all expenses
* [list_legal_expenses](#list_legal_expenses) - List all expenses
* [patch_accounting_expense](#patch_accounting_expense) - Update an expense
* [patch_legal_expense](#patch_legal_expense) - Update an expense
* [remove_accounting_expense](#remove_accounting_expense) - Remove an expense
* [remove_legal_expense](#remove_legal_expense) - Remove an expense
* [update_accounting_expense](#update_accounting_expense) - Update an expense
* [update_legal_expense](#update_legal_expense) - Update an expense

## create_accounting_expense

Creates a AccountingExpense. Provide the unified AccountingExpense fields in the request body; they are mapped to the provider's API. Returns the created AccountingExpense.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingExpense" method="post" path="/accounting/{connection_id}/expense" example="accounting_expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.expense.create_accounting_expense(accounting_expense: Models::Shared::AccountingExpense.new(
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://rubbery-couch.biz/',
      id: '1bad691e-9ccc-4f26-9e31-0f0f7a12f2b7',
      mime_type: 'application/pdf',
      name: 'receipt-9696.pdf'
    ),
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://appropriate-smog.biz/',
      id: '3e7c4421-784d-4680-a035-09d01a6233dd',
      mime_type: 'application/pdf',
      name: 'receipt-9696-1.pdf'
    ),
  ],
  category_ids: [],
  created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
  currency: 'GBP',
  external_number: 'EXP-38303',
  id: '5a9a27f7-97d9-4f27-8437-773c70af2329',
  lineitems: [
    Models::Shared::AccountingLineitem.new(
      id: '3d11cd09-2b9f-4466-93b6-97a5c5375721',
      item_name: 'Client dinner',
      tax_amount: 0.0,
      total_amount: 364.74,
      unit_amount: 364.74,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: '711b66d4-3c6c-403f-8ee6-8221cc5fae3c',
      item_name: 'Client dinner',
      tax_amount: 0.0,
      total_amount: 258.35,
      unit_amount: 258.35,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: 'e0364268-0707-4425-ba88-ede51dc27ec9',
      item_name: 'Conference ticket',
      notes: 'Casus umquam conicio cinis demitto sint.',
      tax_amount: 0.0,
      total_amount: 28.14,
      unit_amount: 28.14,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: '6c23d669-f949-4db7-89ef-43835bfe8b10',
      item_name: 'Hotel',
      tax_amount: 0.0,
      total_amount: 157.04,
      unit_amount: 157.04,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: 'e7a9301e-ffad-4e7d-babc-34d76eaeeff4',
      item_name: 'Hotel',
      tax_amount: 0.0,
      total_amount: 164.02,
      unit_amount: 164.02,
      unit_quantity: 1.0
    ),
  ],
  metadata: [],
  name: 'A payment of XPF 714.84 occurred at Bins, Barrows and Koch using a card ending in ****8422 for account ***4614.',
  payment_method: 'CASH',
  posted_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
  status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
  tax_amount: 0.0,
  total_amount: 972.29,
  type: Models::Shared::AccountingExpenseType::COMPANY,
  updated_at: DateTime.iso8601('2020-09-03T07:09:51.934Z')
), connection_id: '<id>')

unless res.accounting_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_expense`                                                                                                                             | [Models::Shared::AccountingExpense](../../models/shared/accountingexpense.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingExpenseQueryParamFields](../../models/operations/createaccountingexpensequeryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingExpenseResponse)](../../models/operations/createaccountingexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_legal_expense

Creates a LegalExpense. Provide the unified LegalExpense fields in the request body; they are mapped to the provider's API. Returns the created LegalExpense.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLegalExpense" method="post" path="/legal/{connection_id}/expense" example="legal_expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.expense.create_legal_expense(legal_expense: Models::Shared::LegalExpense.new(
  category: 'Kids',
  created_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
  currency: 'MVR',
  description: 'Temporibus agnitio sui.',
  id: '35779a57-6e26-4751-b09e-c4586f3d1f99',
  incurred_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
  is_billed: false,
  metadata: [],
  price_amount: 100.0,
  quantity: 3.0,
  total_amount: 300.0,
  type: Models::Shared::LegalExpenseType::OTHER,
  updated_at: DateTime.iso8601('2024-04-15T19:40:07.530Z')
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

## get_accounting_expense

Retrieves a single AccountingExpense by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingExpense" method="get" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.expense.get_accounting_expense(connection_id: '<id>', id: '<id>')

unless res.accounting_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Expense                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingExpenseQueryParamFields](../../models/operations/getaccountingexpensequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingExpenseResponse)](../../models/operations/getaccountingexpenseresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.expense.get_legal_expense(connection_id: '<id>', id: '<id>')

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

## list_accounting_expenses

Returns a list of AccountingExpenses. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingExpenses" method="get" path="/accounting/{connection_id}/expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingExpensesRequest.new(
  connection_id: '<id>'
)
res = s.expense.list_accounting_expenses(request: req)

unless res.accounting_expenses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingExpensesRequest](../../models/operations/listaccountingexpensesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingExpensesResponse)](../../models/operations/listaccountingexpensesresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListLegalExpensesRequest.new(
  connection_id: '<id>'
)
res = s.expense.list_legal_expenses(request: req)

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

## patch_accounting_expense

Updates the AccountingExpense identified by `id`. Provide the unified AccountingExpense fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingExpense" method="patch" path="/accounting/{connection_id}/expense/{id}" example="accounting_expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingExpenseRequest.new(
  accounting_expense: Models::Shared::AccountingExpense.new(
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://rubbery-couch.biz/',
        id: '28da4822-24fe-43ff-b269-21f15cd5526c',
        mime_type: 'application/pdf',
        name: 'receipt-9696.pdf'
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://appropriate-smog.biz/',
        id: 'f4c54bd7-1e05-44c1-8612-9609cfc01639',
        mime_type: 'application/pdf',
        name: 'receipt-9696-1.pdf'
      ),
    ],
    category_ids: [],
    created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    currency: 'GBP',
    external_number: 'EXP-38303',
    id: '47ead56c-db01-4a8d-8225-277e49f1652d',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: '4729e037-36b6-418a-b2d3-c0a59a4df603',
        item_name: 'Client dinner',
        tax_amount: 0.0,
        total_amount: 364.74,
        unit_amount: 364.74,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'bfb55556-2f0b-418e-9e31-6dbba574e36b',
        item_name: 'Client dinner',
        tax_amount: 0.0,
        total_amount: 258.35,
        unit_amount: 258.35,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: '3544944c-b470-4c6c-96bf-8e0605b78b47',
        item_name: 'Conference ticket',
        notes: 'Casus umquam conicio cinis demitto sint.',
        tax_amount: 0.0,
        total_amount: 28.14,
        unit_amount: 28.14,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'd72a3fc9-f187-4209-8f2e-c4dc7c1d0573',
        item_name: 'Hotel',
        tax_amount: 0.0,
        total_amount: 157.04,
        unit_amount: 157.04,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: '25898e2d-1ada-4fcd-b800-a459ec331694',
        item_name: 'Hotel',
        tax_amount: 0.0,
        total_amount: 164.02,
        unit_amount: 164.02,
        unit_quantity: 1.0
      ),
    ],
    metadata: [],
    name: 'A payment of XPF 714.84 occurred at Bins, Barrows and Koch using a card ending in ****8422 for account ***4614.',
    payment_method: 'CASH',
    posted_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
    tax_amount: 0.0,
    total_amount: 972.29,
    type: Models::Shared::AccountingExpenseType::COMPANY,
    updated_at: DateTime.iso8601('2020-09-03T07:09:51.935Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.expense.patch_accounting_expense(request: req)

unless res.accounting_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingExpenseRequest](../../models/operations/patchaccountingexpenserequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingExpenseResponse)](../../models/operations/patchaccountingexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_legal_expense

Updates the LegalExpense identified by `id`. Provide the unified LegalExpense fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLegalExpense" method="patch" path="/legal/{connection_id}/expense/{id}" example="legal_expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchLegalExpenseRequest.new(
  legal_expense: Models::Shared::LegalExpense.new(
    category: 'Kids',
    created_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
    currency: 'MVR',
    description: 'Temporibus agnitio sui.',
    id: 'c88cbc37-1a62-4bf3-ae32-14b25cf67793',
    incurred_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
    is_billed: false,
    metadata: [],
    price_amount: 100.0,
    quantity: 3.0,
    total_amount: 300.0,
    type: Models::Shared::LegalExpenseType::OTHER,
    updated_at: DateTime.iso8601('2024-04-15T19:40:07.540Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.expense.patch_legal_expense(request: req)

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

## remove_accounting_expense

Deletes the AccountingExpense identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingExpense" method="delete" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.expense.remove_accounting_expense(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAccountingExpenseResponse)](../../models/operations/removeaccountingexpenseresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.expense.remove_legal_expense(connection_id: '<id>', id: '<id>')

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

## update_accounting_expense

Updates the AccountingExpense identified by `id`. Provide the unified AccountingExpense fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingExpense" method="put" path="/accounting/{connection_id}/expense/{id}" example="accounting_expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingExpenseRequest.new(
  accounting_expense: Models::Shared::AccountingExpense.new(
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://rubbery-couch.biz/',
        id: '28da4822-24fe-43ff-b269-21f15cd5526c',
        mime_type: 'application/pdf',
        name: 'receipt-9696.pdf'
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://appropriate-smog.biz/',
        id: 'f4c54bd7-1e05-44c1-8612-9609cfc01639',
        mime_type: 'application/pdf',
        name: 'receipt-9696-1.pdf'
      ),
    ],
    category_ids: [],
    created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    currency: 'GBP',
    external_number: 'EXP-38303',
    id: '47ead56c-db01-4a8d-8225-277e49f1652d',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: '4729e037-36b6-418a-b2d3-c0a59a4df603',
        item_name: 'Client dinner',
        tax_amount: 0.0,
        total_amount: 364.74,
        unit_amount: 364.74,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'bfb55556-2f0b-418e-9e31-6dbba574e36b',
        item_name: 'Client dinner',
        tax_amount: 0.0,
        total_amount: 258.35,
        unit_amount: 258.35,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: '3544944c-b470-4c6c-96bf-8e0605b78b47',
        item_name: 'Conference ticket',
        notes: 'Casus umquam conicio cinis demitto sint.',
        tax_amount: 0.0,
        total_amount: 28.14,
        unit_amount: 28.14,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'd72a3fc9-f187-4209-8f2e-c4dc7c1d0573',
        item_name: 'Hotel',
        tax_amount: 0.0,
        total_amount: 157.04,
        unit_amount: 157.04,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: '25898e2d-1ada-4fcd-b800-a459ec331694',
        item_name: 'Hotel',
        tax_amount: 0.0,
        total_amount: 164.02,
        unit_amount: 164.02,
        unit_quantity: 1.0
      ),
    ],
    metadata: [],
    name: 'A payment of XPF 714.84 occurred at Bins, Barrows and Koch using a card ending in ****8422 for account ***4614.',
    payment_method: 'CASH',
    posted_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
    tax_amount: 0.0,
    total_amount: 972.29,
    type: Models::Shared::AccountingExpenseType::COMPANY,
    updated_at: DateTime.iso8601('2020-09-03T07:09:51.935Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.expense.update_accounting_expense(request: req)

unless res.accounting_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingExpenseRequest](../../models/operations/updateaccountingexpenserequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingExpenseResponse)](../../models/operations/updateaccountingexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_legal_expense

Updates the LegalExpense identified by `id`. Provide the unified LegalExpense fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLegalExpense" method="put" path="/legal/{connection_id}/expense/{id}" example="legal_expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateLegalExpenseRequest.new(
  legal_expense: Models::Shared::LegalExpense.new(
    category: 'Kids',
    created_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
    currency: 'MVR',
    description: 'Temporibus agnitio sui.',
    id: 'c88cbc37-1a62-4bf3-ae32-14b25cf67793',
    incurred_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
    is_billed: false,
    metadata: [],
    price_amount: 100.0,
    quantity: 3.0,
    total_amount: 300.0,
    type: Models::Shared::LegalExpenseType::OTHER,
    updated_at: DateTime.iso8601('2024-04-15T19:40:07.540Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.expense.update_legal_expense(request: req)

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