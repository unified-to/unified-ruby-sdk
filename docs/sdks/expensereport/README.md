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
  approved_at: DateTime.iso8601('2025-04-07T01:53:18.606Z'),
  attachments: [],
  category_ids: [],
  created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
  currency: 'BMD',
  external_number: 'asporto',
  id: '0a338e7b-d452-43cf-9a14-86529aada92a',
  lineitems: [
    Models::Shared::AccountingLineitem.new(
      id: '0a6ed405-455c-4b38-a50c-20c3231d14a5',
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
      id: '716f1d82-c242-419c-b107-5cdc3d9401cc',
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
  posted_at: DateTime.iso8601('2022-10-30T14:41:54.448Z'),
  reimbursed_amount: 6696.0,
  status: Models::Shared::AccountingExpensereportStatus::PAID,
  tax_amount: 983.0,
  total_amount: 13_931.0,
  updated_at: DateTime.iso8601('2025-04-07T01:53:18.606Z'),
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
    approved_at: DateTime.iso8601('2025-04-07T01:53:18.642Z'),
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    currency: 'BMD',
    external_number: 'asporto',
    id: 'a1312132-b2ee-49a9-b3ed-132091258593',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: 'f725f9f7-279f-4b06-9261-7ff5f502eb19',
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
        id: '4a8fbe98-f366-48fa-bd40-c520bb1c4ab6',
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
    posted_at: DateTime.iso8601('2022-10-30T14:41:54.466Z'),
    reimbursed_amount: 6696.0,
    status: Models::Shared::AccountingExpensereportStatus::PAID,
    tax_amount: 983.0,
    total_amount: 13_931.0,
    updated_at: DateTime.iso8601('2025-04-07T01:53:18.642Z'),
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
    approved_at: DateTime.iso8601('2025-04-07T01:53:18.642Z'),
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    currency: 'BMD',
    external_number: 'asporto',
    id: 'a1312132-b2ee-49a9-b3ed-132091258593',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: 'f725f9f7-279f-4b06-9261-7ff5f502eb19',
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
        id: '4a8fbe98-f366-48fa-bd40-c520bb1c4ab6',
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
    posted_at: DateTime.iso8601('2022-10-30T14:41:54.466Z'),
    reimbursed_amount: 6696.0,
    status: Models::Shared::AccountingExpensereportStatus::PAID,
    tax_amount: 983.0,
    total_amount: 13_931.0,
    updated_at: DateTime.iso8601('2025-04-07T01:53:18.642Z'),
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