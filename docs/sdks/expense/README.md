# Expense
(*expense*)

## Overview

### Available Operations

* [create_accounting_expense](#create_accounting_expense) - Create an expense
* [get_accounting_expense](#get_accounting_expense) - Retrieve an expense
* [list_accounting_expenses](#list_accounting_expenses) - List all expenses
* [patch_accounting_expense](#patch_accounting_expense) - Update an expense
* [remove_accounting_expense](#remove_accounting_expense) - Remove an expense
* [update_accounting_expense](#update_accounting_expense) - Update an expense

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
  approved_at: DateTime.iso8601('2026-05-12T14:59:51.847Z'),
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://ripe-napkin.biz/',
      id: '2b12c7c0-070e-46a8-a60a-f6b9ac0974d1',
      mime_type: 'annus',
      name: 'cohibeo',
    ),
  ],
  category_ids: [],
  created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
  currency: 'SSP',
  external_number: 'necessitatibus',
  id: '48eda7e6-33a6-4cc4-983e-d235e6b1e640',
  lineitems: [
    Models::Shared::AccountingLineitem.new(
      id: '0f3ecfc8-0d5c-4da9-962b-a1ab4a21ec65',
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
  posted_at: DateTime.iso8601('2021-06-04T16:26:44.890Z'),
  reimbursed_amount: 1833.0,
  status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
  tax_amount: 2602.0,
  total_amount: 3580.0,
  updated_at: DateTime.iso8601('2026-05-12T14:59:51.847Z'),
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
    approved_at: DateTime.iso8601('2026-05-12T14:59:51.879Z'),
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://ripe-napkin.biz/',
        id: '5418c1de-6c66-4111-b8f6-97e2beb48015',
        mime_type: 'annus',
        name: 'cohibeo',
      ),
    ],
    category_ids: [],
    created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    currency: 'SSP',
    external_number: 'necessitatibus',
    id: '852b20a2-b542-43e7-87de-8de713f7ed30',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: '4f3f2270-fb10-4aed-86d4-8312f2819c24',
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
    posted_at: DateTime.iso8601('2021-06-04T16:26:44.896Z'),
    reimbursed_amount: 1833.0,
    status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
    tax_amount: 2602.0,
    total_amount: 3580.0,
    updated_at: DateTime.iso8601('2026-05-12T14:59:51.879Z'),
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
    approved_at: DateTime.iso8601('2026-05-12T14:59:51.879Z'),
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://ripe-napkin.biz/',
        id: '5418c1de-6c66-4111-b8f6-97e2beb48015',
        mime_type: 'annus',
        name: 'cohibeo',
      ),
    ],
    category_ids: [],
    created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    currency: 'SSP',
    external_number: 'necessitatibus',
    id: '852b20a2-b542-43e7-87de-8de713f7ed30',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: '4f3f2270-fb10-4aed-86d4-8312f2819c24',
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
    posted_at: DateTime.iso8601('2021-06-04T16:26:44.896Z'),
    reimbursed_amount: 1833.0,
    status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
    tax_amount: 2602.0,
    total_amount: 3580.0,
    updated_at: DateTime.iso8601('2026-05-12T14:59:51.879Z'),
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