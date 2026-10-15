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
  approved_at: DateTime.iso8601('2025-04-09T07:58:33.330Z'),
  attachments: [],
  category_ids: [],
  created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
  currency: 'BMD',
  external_number: 'asporto',
  id: '2e8c5dfd-e674-42c6-903a-8ccfa9352e17',
  lineitems: [
    Models::Shared::AccountingLineitem.new(
      id: 'c3f3ddaa-c11f-4178-b209-84bee613e882',
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
      id: 'fa018156-e8bc-44ce-8e5b-264cf5c92ebe',
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
  posted_at: DateTime.iso8601('2022-10-31T17:40:00.667Z'),
  reimbursed_amount: 6696.0,
  status: Models::Shared::AccountingExpensereportStatus::PAID,
  tax_amount: 983.0,
  total_amount: 13_931.0,
  updated_at: DateTime.iso8601('2025-04-09T07:58:33.330Z'),
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
    approved_at: DateTime.iso8601('2025-04-09T07:58:33.368Z'),
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    currency: 'BMD',
    external_number: 'asporto',
    id: '72f103eb-1bde-416b-86a4-f73f022e67ff',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: '02ae146a-23a0-4a1f-9dfa-45cc1fc5bf83',
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
        id: 'c58b4a98-f786-40b2-ade5-6fce51f3e00d',
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
    posted_at: DateTime.iso8601('2022-10-31T17:40:00.686Z'),
    reimbursed_amount: 6696.0,
    status: Models::Shared::AccountingExpensereportStatus::PAID,
    tax_amount: 983.0,
    total_amount: 13_931.0,
    updated_at: DateTime.iso8601('2025-04-09T07:58:33.368Z'),
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
    approved_at: DateTime.iso8601('2025-04-09T07:58:33.368Z'),
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    currency: 'BMD',
    external_number: 'asporto',
    id: '72f103eb-1bde-416b-86a4-f73f022e67ff',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: '02ae146a-23a0-4a1f-9dfa-45cc1fc5bf83',
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
        id: 'c58b4a98-f786-40b2-ade5-6fce51f3e00d',
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
    posted_at: DateTime.iso8601('2022-10-31T17:40:00.686Z'),
    reimbursed_amount: 6696.0,
    status: Models::Shared::AccountingExpensereportStatus::PAID,
    tax_amount: 983.0,
    total_amount: 13_931.0,
    updated_at: DateTime.iso8601('2025-04-09T07:58:33.368Z'),
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