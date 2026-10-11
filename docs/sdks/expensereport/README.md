# Expensereport
(*expensereport*)

## Overview

### Available Operations

* [create_accounting_expensereport](#create_accounting_expensereport) - Create an expensereport
* [get_accounting_expensereport](#get_accounting_expensereport) - Retrieve an expensereport
* [list_accounting_expensereports](#list_accounting_expensereports) - List all expensereports
* [patch_accounting_expensereport](#patch_accounting_expensereport) - Update an expensereport
* [remove_accounting_expensereport](#remove_accounting_expensereport) - Remove an expensereport
* [update_accounting_expensereport](#update_accounting_expensereport) - Update an expensereport

## create_accounting_expensereport

Create an expensereport

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingExpensereport" method="post" path="/accounting/{connection_id}/expensereport" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.expensereport.create_accounting_expensereport(accounting_expensereport: Models::Shared::AccountingExpensereport.new(
  approved_at: DateTime.iso8601('2025-04-06T09:47:16.641Z'),
  attachments: [],
  category_ids: [],
  created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
  currency: 'BMD',
  external_number: 'asporto',
  id: '610828f0-563e-4383-85a1-92a419086e50',
  lineitems: [
    Models::Shared::AccountingLineitem.new(
      id: '3741c577-32e9-4539-8f4d-e1a873597a92',
      item_description: 'The Synchronised motivating software Car offers reliable performance and webbed design',
      item_name: 'Intelligent Gold Cheese',
      item_sku: '978-0-6550-0228-4',
      notes: 'Utrimque quas vesica spes.',
      tax_amount: 448.0,
      total_amount: 10_875.0,
      unit_amount: 4092.0,
      unit_quantity: 1.0,
    ),
    Models::Shared::AccountingLineitem.new(
      id: 'dad308a6-54ac-4e77-bde6-b56079cd696a',
      item_description: 'Ergonomic Bike made with Marble for all-day coordinated support',
      item_name: 'Practical Steel Pizza',
      item_sku: '978-1-4129-9332-6',
      notes: 'Corrumpo.',
      tax_amount: 875.0,
      total_amount: 12_363.0,
      unit_amount: 6783.0,
      unit_quantity: 1.0,
    ),
  ],
  metadata: [],
  name: 'Rustic Aluminum Car',
  posted_at: DateTime.iso8601('2022-10-30T06:40:14.178Z'),
  reimbursed_amount: 6696.0,
  status: Models::Shared::AccountingExpensereportStatus::PAID,
  tax_amount: 983.0,
  total_amount: 13_931.0,
  updated_at: DateTime.iso8601('2025-04-06T09:47:16.641Z'),
), connection_id: '<id>')

unless res.accounting_expensereport.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                               | Type                                                                                                                                                    | Required                                                                                                                                                | Description                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_expensereport`                                                                                                                              | [Models::Shared::AccountingExpensereport](../../models/shared/accountingexpensereport.md)                                                               | :heavy_check_mark:                                                                                                                                      | N/A                                                                                                                                                     |
| `connection_id`                                                                                                                                         | *::String*                                                                                                                                              | :heavy_check_mark:                                                                                                                                      | ID of the connection                                                                                                                                    |
| `fields_`                                                                                                                                               | T::Array<[Models::Operations::CreateAccountingExpensereportQueryParamFields](../../models/operations/createaccountingexpensereportqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                      | Fields to return                                                                                                                                        |
| `raw`                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                   | :heavy_minus_sign:                                                                                                                                      | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar        |

### Response

**[T.nilable(Models::Operations::CreateAccountingExpensereportResponse)](../../models/operations/createaccountingexpensereportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_expensereport

Retrieve an expensereport

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingExpensereport" method="get" path="/accounting/{connection_id}/expensereport/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.expensereport.get_accounting_expensereport(connection_id: '<id>', id: '<id>')

unless res.accounting_expensereport.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `id`                                                                                                                                              | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the Expensereport                                                                                                                           |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::GetAccountingExpensereportQueryParamFields](../../models/operations/getaccountingexpensereportqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::GetAccountingExpensereportResponse)](../../models/operations/getaccountingexpensereportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_expensereports

List all expensereports

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingExpensereports" method="get" path="/accounting/{connection_id}/expensereport" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingExpensereportsRequest.new(
  connection_id: '<id>',
)

res = s.expensereport.list_accounting_expensereports(request: req)

unless res.accounting_expensereports.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::ListAccountingExpensereportsRequest](../../models/operations/listaccountingexpensereportsrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::ListAccountingExpensereportsResponse)](../../models/operations/listaccountingexpensereportsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_expensereport

Update an expensereport

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingExpensereport" method="patch" path="/accounting/{connection_id}/expensereport/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingExpensereportRequest.new(
  accounting_expensereport: Models::Shared::AccountingExpensereport.new(
    approved_at: DateTime.iso8601('2025-04-06T09:47:16.665Z'),
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    currency: 'BMD',
    external_number: 'asporto',
    id: 'c3336adf-1600-4299-808c-84e8d2cf73d1',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: 'e92cbd00-bb45-4fb9-bcde-8b1876e273c0',
        item_description: 'The Synchronised motivating software Car offers reliable performance and webbed design',
        item_name: 'Intelligent Gold Cheese',
        item_sku: '978-0-6550-0228-4',
        notes: 'Utrimque quas vesica spes.',
        tax_amount: 448.0,
        total_amount: 10_875.0,
        unit_amount: 4092.0,
        unit_quantity: 1.0,
      ),
      Models::Shared::AccountingLineitem.new(
        id: '5c54139d-c7f6-4e33-925e-e8732bf9ebae',
        item_description: 'Ergonomic Bike made with Marble for all-day coordinated support',
        item_name: 'Practical Steel Pizza',
        item_sku: '978-1-4129-9332-6',
        notes: 'Corrumpo.',
        tax_amount: 875.0,
        total_amount: 12_363.0,
        unit_amount: 6783.0,
        unit_quantity: 1.0,
      ),
    ],
    metadata: [],
    name: 'Rustic Aluminum Car',
    posted_at: DateTime.iso8601('2022-10-30T06:40:14.190Z'),
    reimbursed_amount: 6696.0,
    status: Models::Shared::AccountingExpensereportStatus::PAID,
    tax_amount: 983.0,
    total_amount: 13_931.0,
    updated_at: DateTime.iso8601('2025-04-06T09:47:16.665Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.expensereport.patch_accounting_expensereport(request: req)

unless res.accounting_expensereport.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::PatchAccountingExpensereportRequest](../../models/operations/patchaccountingexpensereportrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::PatchAccountingExpensereportResponse)](../../models/operations/patchaccountingexpensereportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_expensereport

Remove an expensereport

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingExpensereport" method="delete" path="/accounting/{connection_id}/expensereport/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.expensereport.remove_accounting_expensereport(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter               | Type                    | Required                | Description             |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- |
| `connection_id`         | *::String*              | :heavy_check_mark:      | ID of the connection    |
| `id`                    | *::String*              | :heavy_check_mark:      | ID of the Expensereport |

### Response

**[T.nilable(Models::Operations::RemoveAccountingExpensereportResponse)](../../models/operations/removeaccountingexpensereportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_expensereport

Update an expensereport

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingExpensereport" method="put" path="/accounting/{connection_id}/expensereport/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingExpensereportRequest.new(
  accounting_expensereport: Models::Shared::AccountingExpensereport.new(
    approved_at: DateTime.iso8601('2025-04-06T09:47:16.665Z'),
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    currency: 'BMD',
    external_number: 'asporto',
    id: 'c3336adf-1600-4299-808c-84e8d2cf73d1',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: 'e92cbd00-bb45-4fb9-bcde-8b1876e273c0',
        item_description: 'The Synchronised motivating software Car offers reliable performance and webbed design',
        item_name: 'Intelligent Gold Cheese',
        item_sku: '978-0-6550-0228-4',
        notes: 'Utrimque quas vesica spes.',
        tax_amount: 448.0,
        total_amount: 10_875.0,
        unit_amount: 4092.0,
        unit_quantity: 1.0,
      ),
      Models::Shared::AccountingLineitem.new(
        id: '5c54139d-c7f6-4e33-925e-e8732bf9ebae',
        item_description: 'Ergonomic Bike made with Marble for all-day coordinated support',
        item_name: 'Practical Steel Pizza',
        item_sku: '978-1-4129-9332-6',
        notes: 'Corrumpo.',
        tax_amount: 875.0,
        total_amount: 12_363.0,
        unit_amount: 6783.0,
        unit_quantity: 1.0,
      ),
    ],
    metadata: [],
    name: 'Rustic Aluminum Car',
    posted_at: DateTime.iso8601('2022-10-30T06:40:14.190Z'),
    reimbursed_amount: 6696.0,
    status: Models::Shared::AccountingExpensereportStatus::PAID,
    tax_amount: 983.0,
    total_amount: 13_931.0,
    updated_at: DateTime.iso8601('2025-04-06T09:47:16.665Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.expensereport.update_accounting_expensereport(request: req)

unless res.accounting_expensereport.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::UpdateAccountingExpensereportRequest](../../models/operations/updateaccountingexpensereportrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAccountingExpensereportResponse)](../../models/operations/updateaccountingexpensereportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |