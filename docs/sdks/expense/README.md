# Expense
(*expense*)

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

Create an expense

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingExpense" method="post" path="/accounting/{connection_id}/expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.expense.create_accounting_expense(accounting_expense: Models::Shared::AccountingExpense.new(
  approved_at: DateTime.iso8601('2026-06-07T20:39:50.258Z'),
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://ripe-napkin.biz/',
      id: 'a9b21721-daf7-4103-bd22-6de56db8bd91',
      mime_type: 'annus',
      name: 'cohibeo',
    ),
  ],
  category_ids: [],
  created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
  currency: 'SSP',
  external_number: 'necessitatibus',
  id: '2dbb6448-0e5c-4449-87a5-d2dd665ad896',
  lineitems: [
    Models::Shared::AccountingLineitem.new(
      id: 'd33e267b-d518-42d3-8341-b9b879a58461',
      item_description: 'Innovative Table featuring left technology and Rubber construction',
      item_name: 'Luxurious Cotton Pizza',
      item_sku: '978-0-8324-6620-5',
      notes: 'Degusto conventus defendo valetudo.',
      tax_amount: 2501.0,
      total_amount: 168.0,
      unit_amount: 3059.0,
      unit_quantity: 1.0,
    ),
  ],
  metadata: [],
  name: 'Refined Steel Shoes',
  payment_method: 'CASH',
  posted_at: DateTime.iso8601('2021-06-09T00:53:28.497Z'),
  reimbursed_amount: 1833.0,
  status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
  tax_amount: 2602.0,
  total_amount: 3580.0,
  type: Models::Shared::AccountingExpenseType::USER,
  updated_at: DateTime.iso8601('2026-06-07T20:39:50.258Z'),
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

Create an expense

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

res = s.expense.create_legal_expense(legal_expense: Models::Shared::LegalExpense.new(
  category: 'Kids',
  created_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
  currency: 'MVR',
  description: 'Temporibus agnitio sui.',
  id: 'c4762549-0a02-44fe-ac96-dae5e3be44cf',
  incurred_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
  is_billed: false,
  metadata: [],
  price_amount: 100.0,
  quantity: 3.0,
  total_amount: 300.0,
  type: Models::Shared::LegalExpenseType::OTHER,
  updated_at: DateTime.iso8601('2024-03-29T18:04:36.923Z'),
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

Retrieve an expense

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingExpense" method="get" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve an expense

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

List all expenses

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingExpenses" method="get" path="/accounting/{connection_id}/expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingExpensesRequest.new(
  connection_id: '<id>',
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

List all expenses

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

Update an expense

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingExpense" method="patch" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingExpenseRequest.new(
  accounting_expense: Models::Shared::AccountingExpense.new(
    approved_at: DateTime.iso8601('2026-06-07T20:39:50.305Z'),
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://ripe-napkin.biz/',
        id: '901dd0f8-a3fc-4c2e-a1a3-2aaf2345eb1c',
        mime_type: 'annus',
        name: 'cohibeo',
      ),
    ],
    category_ids: [],
    created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    currency: 'SSP',
    external_number: 'necessitatibus',
    id: '69a5591f-1498-4003-98c6-34937aaeec82',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: 'ba949eae-9f10-4e11-a1c0-4398e3e77328',
        item_description: 'Innovative Table featuring left technology and Rubber construction',
        item_name: 'Luxurious Cotton Pizza',
        item_sku: '978-0-8324-6620-5',
        notes: 'Degusto conventus defendo valetudo.',
        tax_amount: 2501.0,
        total_amount: 168.0,
        unit_amount: 3059.0,
        unit_quantity: 1.0,
      ),
    ],
    metadata: [],
    name: 'Refined Steel Shoes',
    payment_method: 'CASH',
    posted_at: DateTime.iso8601('2021-06-09T00:53:28.505Z'),
    reimbursed_amount: 1833.0,
    status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
    tax_amount: 2602.0,
    total_amount: 3580.0,
    type: Models::Shared::AccountingExpenseType::USER,
    updated_at: DateTime.iso8601('2026-06-07T20:39:50.305Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update an expense

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
    id: '5b00a51a-8ee7-4af6-aae9-73e486f1dccc',
    incurred_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
    is_billed: false,
    metadata: [],
    price_amount: 100.0,
    quantity: 3.0,
    total_amount: 300.0,
    type: Models::Shared::LegalExpenseType::OTHER,
    updated_at: DateTime.iso8601('2024-03-29T18:04:36.933Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Remove an expense

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingExpense" method="delete" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove an expense

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

Update an expense

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingExpense" method="put" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingExpenseRequest.new(
  accounting_expense: Models::Shared::AccountingExpense.new(
    approved_at: DateTime.iso8601('2026-06-07T20:39:50.305Z'),
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://ripe-napkin.biz/',
        id: '901dd0f8-a3fc-4c2e-a1a3-2aaf2345eb1c',
        mime_type: 'annus',
        name: 'cohibeo',
      ),
    ],
    category_ids: [],
    created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    currency: 'SSP',
    external_number: 'necessitatibus',
    id: '69a5591f-1498-4003-98c6-34937aaeec82',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: 'ba949eae-9f10-4e11-a1c0-4398e3e77328',
        item_description: 'Innovative Table featuring left technology and Rubber construction',
        item_name: 'Luxurious Cotton Pizza',
        item_sku: '978-0-8324-6620-5',
        notes: 'Degusto conventus defendo valetudo.',
        tax_amount: 2501.0,
        total_amount: 168.0,
        unit_amount: 3059.0,
        unit_quantity: 1.0,
      ),
    ],
    metadata: [],
    name: 'Refined Steel Shoes',
    payment_method: 'CASH',
    posted_at: DateTime.iso8601('2021-06-09T00:53:28.505Z'),
    reimbursed_amount: 1833.0,
    status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
    tax_amount: 2602.0,
    total_amount: 3580.0,
    type: Models::Shared::AccountingExpenseType::USER,
    updated_at: DateTime.iso8601('2026-06-07T20:39:50.305Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update an expense

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
    id: '5b00a51a-8ee7-4af6-aae9-73e486f1dccc',
    incurred_at: DateTime.iso8601('2020-11-08T00:41:42.356Z'),
    is_billed: false,
    metadata: [],
    price_amount: 100.0,
    quantity: 3.0,
    total_amount: 300.0,
    type: Models::Shared::LegalExpenseType::OTHER,
    updated_at: DateTime.iso8601('2024-03-29T18:04:36.933Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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