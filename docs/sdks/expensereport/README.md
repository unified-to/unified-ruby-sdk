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

Creates a AccountingExpensereport. Provide the unified AccountingExpensereport fields in the request body; they are mapped to the provider's API. Returns the created AccountingExpensereport.

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
  approved_at: DateTime.iso8601('2021-04-20T14:20:35.576Z'),
  attachments: [],
  category_ids: [],
  created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
  currency: 'GBP',
  external_number: 'ER-31240',
  id: 'a16e118f-01c5-4583-90db-ab22a81b7491',
  lineitems: [
    Models::Shared::AccountingLineitem.new(
      id: 'd2efe475-d131-4b1d-ab03-19ac6702a533',
      item_name: 'Conference ticket',
      tax_amount: 0.0,
      total_amount: 39.9,
      unit_amount: 39.9,
      unit_quantity: 1.0,
    ),
    Models::Shared::AccountingLineitem.new(
      id: '93ff327c-6187-4407-b64f-4c000415fe96',
      item_name: 'Flight',
      notes: 'Soluta omnis dolor.',
      tax_amount: 0.0,
      total_amount: 193.17,
      unit_amount: 193.17,
      unit_quantity: 1.0,
    ),
    Models::Shared::AccountingLineitem.new(
      id: '52e247ac-2f09-4f55-8096-4de6b860a796',
      item_name: 'Client dinner',
      notes: 'Altus caveo capio.',
      tax_amount: 0.0,
      total_amount: 230.12,
      unit_amount: 230.12,
      unit_quantity: 1.0,
    ),
    Models::Shared::AccountingLineitem.new(
      id: '0cd54de7-72bd-4d0e-af06-2f06bf47123e',
      item_name: 'Flight',
      tax_amount: 0.0,
      total_amount: 445.27,
      unit_amount: 445.27,
      unit_quantity: 1.0,
    ),
  ],
  metadata: [],
  name: 'Lolita Kunde - October expenses',
  posted_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
  reimbursed_amount: 908.46,
  reimbursed_at: DateTime.iso8601('2021-04-20T14:20:35.576Z'),
  status: Models::Shared::AccountingExpensereportStatus::PAID,
  tax_amount: 0.0,
  total_amount: 908.46,
  updated_at: DateTime.iso8601('2021-04-20T14:20:35.576Z'),
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

Retrieves a single AccountingExpensereport by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Returns a list of AccountingExpensereports. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Updates the AccountingExpensereport identified by `id`. Provide the unified AccountingExpensereport fields to change in the request body.

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
    approved_at: DateTime.iso8601('2021-04-20T14:20:35.579Z'),
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    currency: 'GBP',
    external_number: 'ER-31240',
    id: '70bc654d-c75b-4ab7-8243-0b2fd925038c',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: 'fd9debbb-5851-4889-80ea-2839a212b317',
        item_name: 'Conference ticket',
        tax_amount: 0.0,
        total_amount: 39.9,
        unit_amount: 39.9,
        unit_quantity: 1.0,
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'aebbf829-83d7-4e86-8e36-9f203d02e622',
        item_name: 'Flight',
        notes: 'Soluta omnis dolor.',
        tax_amount: 0.0,
        total_amount: 193.17,
        unit_amount: 193.17,
        unit_quantity: 1.0,
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'f5e5e14c-2987-4aef-85c4-32f3fafacb24',
        item_name: 'Client dinner',
        notes: 'Altus caveo capio.',
        tax_amount: 0.0,
        total_amount: 230.12,
        unit_amount: 230.12,
        unit_quantity: 1.0,
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'ff73f02c-0651-4a89-be10-fe875492b3bd',
        item_name: 'Flight',
        tax_amount: 0.0,
        total_amount: 445.27,
        unit_amount: 445.27,
        unit_quantity: 1.0,
      ),
    ],
    metadata: [],
    name: 'Lolita Kunde - October expenses',
    posted_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    reimbursed_amount: 908.46,
    reimbursed_at: DateTime.iso8601('2021-04-20T14:20:35.579Z'),
    status: Models::Shared::AccountingExpensereportStatus::PAID,
    tax_amount: 0.0,
    total_amount: 908.46,
    updated_at: DateTime.iso8601('2021-04-20T14:20:35.579Z'),
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

Deletes the AccountingExpensereport identified by `id`.

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

Updates the AccountingExpensereport identified by `id`. Provide the unified AccountingExpensereport fields to change in the request body.

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
    approved_at: DateTime.iso8601('2021-04-20T14:20:35.579Z'),
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    currency: 'GBP',
    external_number: 'ER-31240',
    id: '70bc654d-c75b-4ab7-8243-0b2fd925038c',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: 'fd9debbb-5851-4889-80ea-2839a212b317',
        item_name: 'Conference ticket',
        tax_amount: 0.0,
        total_amount: 39.9,
        unit_amount: 39.9,
        unit_quantity: 1.0,
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'aebbf829-83d7-4e86-8e36-9f203d02e622',
        item_name: 'Flight',
        notes: 'Soluta omnis dolor.',
        tax_amount: 0.0,
        total_amount: 193.17,
        unit_amount: 193.17,
        unit_quantity: 1.0,
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'f5e5e14c-2987-4aef-85c4-32f3fafacb24',
        item_name: 'Client dinner',
        notes: 'Altus caveo capio.',
        tax_amount: 0.0,
        total_amount: 230.12,
        unit_amount: 230.12,
        unit_quantity: 1.0,
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'ff73f02c-0651-4a89-be10-fe875492b3bd',
        item_name: 'Flight',
        tax_amount: 0.0,
        total_amount: 445.27,
        unit_amount: 445.27,
        unit_quantity: 1.0,
      ),
    ],
    metadata: [],
    name: 'Lolita Kunde - October expenses',
    posted_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    reimbursed_amount: 908.46,
    reimbursed_at: DateTime.iso8601('2021-04-20T14:20:35.579Z'),
    status: Models::Shared::AccountingExpensereportStatus::PAID,
    tax_amount: 0.0,
    total_amount: 908.46,
    updated_at: DateTime.iso8601('2021-04-20T14:20:35.579Z'),
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