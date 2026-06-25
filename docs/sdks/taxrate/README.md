# Taxrate
(*taxrate*)

## Overview

### Available Operations

* [create_accounting_taxrate2](#create_accounting_taxrate2) - Create a taxrate
* [get_accounting_taxrate2](#get_accounting_taxrate2) - Retrieve a taxrate
* [list_accounting_taxrates2](#list_accounting_taxrates2) - List all taxrates
* [patch_accounting_taxrate2](#patch_accounting_taxrate2) - Update a taxrate
* [remove_accounting_taxrate2](#remove_accounting_taxrate2) - Remove a taxrate
* [update_accounting_taxrate2](#update_accounting_taxrate2) - Update a taxrate

## create_accounting_taxrate2

Create a taxrate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingTaxrate2" method="post" path="/accounting/{connection_id}/taxrate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.taxrate.create_accounting_taxrate2(accounting_taxrate: Models::Shared::AccountingTaxrate.new(), connection_id: '<id>')

unless res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_taxrate`                                                                                                                             | [Models::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingTaxrate2QueryParamFields](../../models/operations/createaccountingtaxrate2queryparamfields.md)>    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingTaxrate2Response)](../../models/operations/createaccountingtaxrate2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_taxrate2

Retrieve a taxrate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingTaxrate2" method="get" path="/accounting/{connection_id}/taxrate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.taxrate.get_accounting_taxrate2(connection_id: '<id>', id: '<id>')

unless res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Taxrate                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingTaxrate2QueryParamFields](../../models/operations/getaccountingtaxrate2queryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingTaxrate2Response)](../../models/operations/getaccountingtaxrate2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_taxrates2

List all taxrates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingTaxrates2" method="get" path="/accounting/{connection_id}/taxrate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingTaxrates2Request.new(
  connection_id: '<id>',
)

res = s.taxrate.list_accounting_taxrates2(request: req)

unless res.accounting_taxrates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListAccountingTaxrates2Request](../../models/operations/listaccountingtaxrates2request.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListAccountingTaxrates2Response)](../../models/operations/listaccountingtaxrates2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_taxrate2

Update a taxrate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingTaxrate2" method="patch" path="/accounting/{connection_id}/taxrate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingTaxrate2Request.new(
  accounting_taxrate: Models::Shared::AccountingTaxrate.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.taxrate.patch_accounting_taxrate2(request: req)

unless res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::PatchAccountingTaxrate2Request](../../models/operations/patchaccountingtaxrate2request.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::PatchAccountingTaxrate2Response)](../../models/operations/patchaccountingtaxrate2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_taxrate2

Remove a taxrate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingTaxrate2" method="delete" path="/accounting/{connection_id}/taxrate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.taxrate.remove_accounting_taxrate2(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Taxrate    |

### Response

**[T.nilable(Models::Operations::RemoveAccountingTaxrate2Response)](../../models/operations/removeaccountingtaxrate2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_taxrate2

Update a taxrate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingTaxrate2" method="put" path="/accounting/{connection_id}/taxrate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingTaxrate2Request.new(
  accounting_taxrate: Models::Shared::AccountingTaxrate.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.taxrate.update_accounting_taxrate2(request: req)

unless res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::UpdateAccountingTaxrate2Request](../../models/operations/updateaccountingtaxrate2request.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::UpdateAccountingTaxrate2Response)](../../models/operations/updateaccountingtaxrate2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |