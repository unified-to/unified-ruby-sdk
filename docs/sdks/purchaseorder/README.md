# Purchaseorder
(*purchaseorder*)

## Overview

### Available Operations

* [create_accounting_purchaseorder2](#create_accounting_purchaseorder2) - Create a purchaseorder
* [get_accounting_purchaseorder2](#get_accounting_purchaseorder2) - Retrieve a purchaseorder
* [list_accounting_purchaseorders2](#list_accounting_purchaseorders2) - List all purchaseorders
* [patch_accounting_purchaseorder2](#patch_accounting_purchaseorder2) - Update a purchaseorder
* [remove_accounting_purchaseorder2](#remove_accounting_purchaseorder2) - Remove a purchaseorder
* [update_accounting_purchaseorder2](#update_accounting_purchaseorder2) - Update a purchaseorder

## create_accounting_purchaseorder2

Create a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingPurchaseorder2" method="post" path="/accounting/{connection_id}/purchaseorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.purchaseorder.create_accounting_purchaseorder2(accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(), connection_id: '<id>')

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                 | Type                                                                                                                                                      | Required                                                                                                                                                  | Description                                                                                                                                               |
| --------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_purchaseorder`                                                                                                                                | [Models::Shared::AccountingPurchaseorder](../../models/shared/accountingpurchaseorder.md)                                                                 | :heavy_check_mark:                                                                                                                                        | N/A                                                                                                                                                       |
| `connection_id`                                                                                                                                           | *::String*                                                                                                                                                | :heavy_check_mark:                                                                                                                                        | ID of the connection                                                                                                                                      |
| `fields_`                                                                                                                                                 | T::Array<[Models::Operations::CreateAccountingPurchaseorder2QueryParamFields](../../models/operations/createaccountingpurchaseorder2queryparamfields.md)> | :heavy_minus_sign:                                                                                                                                        | Fields to return                                                                                                                                          |
| `raw`                                                                                                                                                     | *T.nilable(::String)*                                                                                                                                     | :heavy_minus_sign:                                                                                                                                        | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar          |

### Response

**[T.nilable(Models::Operations::CreateAccountingPurchaseorder2Response)](../../models/operations/createaccountingpurchaseorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_purchaseorder2

Retrieve a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingPurchaseorder2" method="get" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.purchaseorder.get_accounting_purchaseorder2(connection_id: '<id>', id: '<id>')

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                           | Type                                                                                                                                                | Required                                                                                                                                            | Description                                                                                                                                         |
| --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                     | *::String*                                                                                                                                          | :heavy_check_mark:                                                                                                                                  | ID of the connection                                                                                                                                |
| `id`                                                                                                                                                | *::String*                                                                                                                                          | :heavy_check_mark:                                                                                                                                  | ID of the Purchaseorder                                                                                                                             |
| `fields_`                                                                                                                                           | T::Array<[Models::Operations::GetAccountingPurchaseorder2QueryParamFields](../../models/operations/getaccountingpurchaseorder2queryparamfields.md)> | :heavy_minus_sign:                                                                                                                                  | Fields to return                                                                                                                                    |
| `raw`                                                                                                                                               | *T.nilable(::String)*                                                                                                                               | :heavy_minus_sign:                                                                                                                                  | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar    |

### Response

**[T.nilable(Models::Operations::GetAccountingPurchaseorder2Response)](../../models/operations/getaccountingpurchaseorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_purchaseorders2

List all purchaseorders

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingPurchaseorders2" method="get" path="/accounting/{connection_id}/purchaseorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingPurchaseorders2Request.new(
  connection_id: '<id>',
)

res = s.purchaseorder.list_accounting_purchaseorders2(request: req)

unless res.accounting_purchaseorders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::ListAccountingPurchaseorders2Request](../../models/operations/listaccountingpurchaseorders2request.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::ListAccountingPurchaseorders2Response)](../../models/operations/listaccountingpurchaseorders2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_purchaseorder2

Update a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingPurchaseorder2" method="patch" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingPurchaseorder2Request.new(
  accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.purchaseorder.patch_accounting_purchaseorder2(request: req)

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::PatchAccountingPurchaseorder2Request](../../models/operations/patchaccountingpurchaseorder2request.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::PatchAccountingPurchaseorder2Response)](../../models/operations/patchaccountingpurchaseorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_purchaseorder2

Remove a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingPurchaseorder2" method="delete" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.purchaseorder.remove_accounting_purchaseorder2(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter               | Type                    | Required                | Description             |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- |
| `connection_id`         | *::String*              | :heavy_check_mark:      | ID of the connection    |
| `id`                    | *::String*              | :heavy_check_mark:      | ID of the Purchaseorder |

### Response

**[T.nilable(Models::Operations::RemoveAccountingPurchaseorder2Response)](../../models/operations/removeaccountingpurchaseorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_purchaseorder2

Update a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingPurchaseorder2" method="put" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingPurchaseorder2Request.new(
  accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.purchaseorder.update_accounting_purchaseorder2(request: req)

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [Models::Operations::UpdateAccountingPurchaseorder2Request](../../models/operations/updateaccountingpurchaseorder2request.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateAccountingPurchaseorder2Response)](../../models/operations/updateaccountingpurchaseorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |