# Account
(*account*)

## Overview

### Available Operations

* [create_accounting_account](#create_accounting_account) - Create an account
* [get_accounting_account](#get_accounting_account) - Retrieve an account
* [list_accounting_accounts](#list_accounting_accounts) - List all accounts
* [patch_accounting_account](#patch_accounting_account) - Update an account
* [remove_accounting_account](#remove_accounting_account) - Remove an account
* [update_accounting_account](#update_accounting_account) - Update an account

## create_accounting_account

Creates a AccountingAccount. Provide the unified AccountingAccount fields in the request body; they are mapped to the provider's API. Returns the created AccountingAccount.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingAccount" method="post" path="/accounting/{connection_id}/account" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.account.create_accounting_account(accounting_account: Models::Shared::AccountingAccount.new(
  balance: 12_092.0,
  created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
  currency: 'CAD',
  customer_defined_code: '6170',
  description: 'Voluptatibus valde spoliatio.',
  id: '4c2bc402-a7bf-450d-bb55-223b2200260f',
  is_payable: false,
  metadata: [],
  name: 'Auto Loan Account',
  status: Models::Shared::Status::ARCHIVED,
  taxonomy: [
    Models::Shared::AccountingAccountTaxonomy.new(
      original_type: 'vilitas',
      type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
      value: 'comedo',
    ),
  ],
  type: Models::Shared::Type::ACCOUNTS_RECEIVABLE,
  updated_at: DateTime.iso8601('2023-08-07T16:10:06.240Z'),
), connection_id: '<id>')

unless res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_account`                                                                                                                             | [Models::Shared::AccountingAccount](../../models/shared/accountingaccount.md)                                                                    | :heavy_check_mark:                                                                                                                               | Chart of accounts                                                                                                                                |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::Fields](../../models/operations/fields_.md)>                                                                       | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingAccountResponse)](../../models/operations/createaccountingaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_account

Retrieves a single AccountingAccount by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingAccount" method="get" path="/accounting/{connection_id}/account/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.account.get_accounting_account(connection_id: '<id>', id: '<id>')

unless res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Account                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::QueryParamFields](../../models/operations/queryparamfields.md)>                                                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingAccountResponse)](../../models/operations/getaccountingaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_accounts

Returns a list of AccountingAccounts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingAccounts" method="get" path="/accounting/{connection_id}/account" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingAccountsRequest.new(
  connection_id: '<id>',
)

res = s.account.list_accounting_accounts(request: req)

unless res.accounting_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingAccountsRequest](../../models/operations/listaccountingaccountsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingAccountsResponse)](../../models/operations/listaccountingaccountsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_account

Updates the AccountingAccount identified by `id`. Provide the unified AccountingAccount fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingAccount" method="patch" path="/accounting/{connection_id}/account/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingAccountRequest.new(
  accounting_account: Models::Shared::AccountingAccount.new(
    balance: 12_092.0,
    created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
    currency: 'CAD',
    customer_defined_code: '6170',
    description: 'Voluptatibus valde spoliatio.',
    id: 'a207210e-2026-4159-8ebf-3aec018018e4',
    is_payable: false,
    metadata: [],
    name: 'Auto Loan Account',
    status: Models::Shared::Status::ARCHIVED,
    taxonomy: [
      Models::Shared::AccountingAccountTaxonomy.new(
        original_type: 'vilitas',
        type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
        value: 'comedo',
      ),
    ],
    type: Models::Shared::Type::ACCOUNTS_RECEIVABLE,
    updated_at: DateTime.iso8601('2023-08-07T16:10:06.243Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.account.patch_accounting_account(request: req)

unless res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingAccountRequest](../../models/operations/patchaccountingaccountrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingAccountResponse)](../../models/operations/patchaccountingaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_account

Deletes the AccountingAccount identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingAccount" method="delete" path="/accounting/{connection_id}/account/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.account.remove_accounting_account(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Account    |

### Response

**[T.nilable(Models::Operations::RemoveAccountingAccountResponse)](../../models/operations/removeaccountingaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_account

Updates the AccountingAccount identified by `id`. Provide the unified AccountingAccount fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingAccount" method="put" path="/accounting/{connection_id}/account/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingAccountRequest.new(
  accounting_account: Models::Shared::AccountingAccount.new(
    balance: 12_092.0,
    created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
    currency: 'CAD',
    customer_defined_code: '6170',
    description: 'Voluptatibus valde spoliatio.',
    id: 'a207210e-2026-4159-8ebf-3aec018018e4',
    is_payable: false,
    metadata: [],
    name: 'Auto Loan Account',
    status: Models::Shared::Status::ARCHIVED,
    taxonomy: [
      Models::Shared::AccountingAccountTaxonomy.new(
        original_type: 'vilitas',
        type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
        value: 'comedo',
      ),
    ],
    type: Models::Shared::Type::ACCOUNTS_RECEIVABLE,
    updated_at: DateTime.iso8601('2023-08-07T16:10:06.243Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.account.update_accounting_account(request: req)

unless res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingAccountRequest](../../models/operations/updateaccountingaccountrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingAccountResponse)](../../models/operations/updateaccountingaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |