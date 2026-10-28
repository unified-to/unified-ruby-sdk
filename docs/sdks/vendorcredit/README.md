# Vendorcredit
(*vendorcredit*)

## Overview

### Available Operations

* [create_accounting_vendorcredit](#create_accounting_vendorcredit) - Create a vendorcredit
* [get_accounting_vendorcredit](#get_accounting_vendorcredit) - Retrieve a vendorcredit
* [list_accounting_vendorcredits](#list_accounting_vendorcredits) - List all vendorcredits
* [patch_accounting_vendorcredit](#patch_accounting_vendorcredit) - Update a vendorcredit
* [remove_accounting_vendorcredit](#remove_accounting_vendorcredit) - Remove a vendorcredit
* [update_accounting_vendorcredit](#update_accounting_vendorcredit) - Update a vendorcredit

## create_accounting_vendorcredit

Creates a AccountingVendorcredit. Provide the unified AccountingVendorcredit fields in the request body; they are mapped to the provider's API. Returns the created AccountingVendorcredit.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingVendorcredit" method="post" path="/accounting/{connection_id}/vendorcredit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.vendorcredit.create_accounting_vendorcredit(accounting_vendorcredit: Models::Shared::AccountingVendorcredit.new(
  applications: [],
  balance_amount: 0.0,
  created_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
  currency: 'USD',
  id: 'ffd915b5-735c-41c2-b689-7973359bded7',
  lineitems: [],
  metadata: [],
  notes: 'Volup conatus cruciamentum decor avaritia.',
  posted_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
  status: Models::Shared::AccountingVendorcreditStatus::AUTHORIZED,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2023-10-04T00:02:16.284Z'),
), connection_id: '<id>')

unless res.accounting_vendorcredit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_vendorcredit`                                                                                                                             | [Models::Shared::AccountingVendorcredit](../../models/shared/accountingvendorcredit.md)                                                               | :heavy_check_mark:                                                                                                                                    | N/A                                                                                                                                                   |
| `connection_id`                                                                                                                                       | *::String*                                                                                                                                            | :heavy_check_mark:                                                                                                                                    | ID of the connection                                                                                                                                  |
| `fields_`                                                                                                                                             | T::Array<[Models::Operations::CreateAccountingVendorcreditQueryParamFields](../../models/operations/createaccountingvendorcreditqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                    | Fields to return                                                                                                                                      |
| `raw`                                                                                                                                                 | *T.nilable(::String)*                                                                                                                                 | :heavy_minus_sign:                                                                                                                                    | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar      |

### Response

**[T.nilable(Models::Operations::CreateAccountingVendorcreditResponse)](../../models/operations/createaccountingvendorcreditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_vendorcredit

Retrieves a single AccountingVendorcredit by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingVendorcredit" method="get" path="/accounting/{connection_id}/vendorcredit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.vendorcredit.get_accounting_vendorcredit(connection_id: '<id>', id: '<id>')

unless res.accounting_vendorcredit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Vendorcredit                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingVendorcreditQueryParamFields](../../models/operations/getaccountingvendorcreditqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingVendorcreditResponse)](../../models/operations/getaccountingvendorcreditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_vendorcredits

Returns a list of AccountingVendorcredits. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingVendorcredits" method="get" path="/accounting/{connection_id}/vendorcredit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingVendorcreditsRequest.new(
  connection_id: '<id>',
)

res = s.vendorcredit.list_accounting_vendorcredits(request: req)

unless res.accounting_vendorcredits.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListAccountingVendorcreditsRequest](../../models/operations/listaccountingvendorcreditsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListAccountingVendorcreditsResponse)](../../models/operations/listaccountingvendorcreditsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_vendorcredit

Updates the AccountingVendorcredit identified by `id`. Provide the unified AccountingVendorcredit fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingVendorcredit" method="patch" path="/accounting/{connection_id}/vendorcredit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingVendorcreditRequest.new(
  accounting_vendorcredit: Models::Shared::AccountingVendorcredit.new(
    applications: [],
    balance_amount: 0.0,
    created_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
    currency: 'USD',
    id: 'd2412af6-6f44-4b9f-a656-56a2a0ef1162',
    lineitems: [],
    metadata: [],
    notes: 'Volup conatus cruciamentum decor avaritia.',
    posted_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
    status: Models::Shared::AccountingVendorcreditStatus::AUTHORIZED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-10-04T00:02:16.290Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.vendorcredit.patch_accounting_vendorcredit(request: req)

unless res.accounting_vendorcredit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::PatchAccountingVendorcreditRequest](../../models/operations/patchaccountingvendorcreditrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::PatchAccountingVendorcreditResponse)](../../models/operations/patchaccountingvendorcreditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_vendorcredit

Deletes the AccountingVendorcredit identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingVendorcredit" method="delete" path="/accounting/{connection_id}/vendorcredit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.vendorcredit.remove_accounting_vendorcredit(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Vendorcredit |

### Response

**[T.nilable(Models::Operations::RemoveAccountingVendorcreditResponse)](../../models/operations/removeaccountingvendorcreditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_vendorcredit

Updates the AccountingVendorcredit identified by `id`. Provide the unified AccountingVendorcredit fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingVendorcredit" method="put" path="/accounting/{connection_id}/vendorcredit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingVendorcreditRequest.new(
  accounting_vendorcredit: Models::Shared::AccountingVendorcredit.new(
    applications: [],
    balance_amount: 0.0,
    created_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
    currency: 'USD',
    id: 'd2412af6-6f44-4b9f-a656-56a2a0ef1162',
    lineitems: [],
    metadata: [],
    notes: 'Volup conatus cruciamentum decor avaritia.',
    posted_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
    status: Models::Shared::AccountingVendorcreditStatus::AUTHORIZED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-10-04T00:02:16.290Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.vendorcredit.update_accounting_vendorcredit(request: req)

unless res.accounting_vendorcredit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::UpdateAccountingVendorcreditRequest](../../models/operations/updateaccountingvendorcreditrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::UpdateAccountingVendorcreditResponse)](../../models/operations/updateaccountingvendorcreditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |