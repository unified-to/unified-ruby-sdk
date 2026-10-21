# Purchaseorder
(*purchaseorder*)

## Overview

### Available Operations

* [create_accounting_purchaseorder](#create_accounting_purchaseorder) - Create a purchaseorder
* [get_accounting_purchaseorder](#get_accounting_purchaseorder) - Retrieve a purchaseorder
* [list_accounting_purchaseorders](#list_accounting_purchaseorders) - List all purchaseorders
* [patch_accounting_purchaseorder](#patch_accounting_purchaseorder) - Update a purchaseorder
* [remove_accounting_purchaseorder](#remove_accounting_purchaseorder) - Remove a purchaseorder
* [update_accounting_purchaseorder](#update_accounting_purchaseorder) - Update a purchaseorder

## create_accounting_purchaseorder

Create a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingPurchaseorder" method="post" path="/accounting/{connection_id}/purchaseorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.purchaseorder.create_accounting_purchaseorder(accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(
  attachments: [],
  billing_address: Models::Shared::PropertyAccountingPurchaseorderBillingAddress.new(
    address1: '72142 Willow Street',
    address2: 'Apt. 967',
    city: 'South Annabelleton',
    country_code: 'US',
    postal_code: '30337',
    region: 'Nevada',
    region_code: 'FL',
  ),
  category_ids: [],
  created_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
  currency: 'EUR',
  id: '95fc4c52-e984-4e27-a4ce-4dbf003425b2',
  lineitems: [],
  metadata: [],
  posted_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
  shipping_address: Models::Shared::PropertyAccountingPurchaseorderShippingAddress.new(
    address1: '76494 Medhurst Club',
    city: 'Kshlerinfurt',
    country_code: 'US',
    postal_code: '92116-5474',
    region: 'Oregon',
    region_code: 'WY',
  ),
  status: Models::Shared::AccountingPurchaseorderStatus::SUBMITTED,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2021-08-11T06:00:23.901Z'),
), connection_id: '<id>')

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                               | Type                                                                                                                                                    | Required                                                                                                                                                | Description                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_purchaseorder`                                                                                                                              | [Models::Shared::AccountingPurchaseorder](../../models/shared/accountingpurchaseorder.md)                                                               | :heavy_check_mark:                                                                                                                                      | N/A                                                                                                                                                     |
| `connection_id`                                                                                                                                         | *::String*                                                                                                                                              | :heavy_check_mark:                                                                                                                                      | ID of the connection                                                                                                                                    |
| `fields_`                                                                                                                                               | T::Array<[Models::Operations::CreateAccountingPurchaseorderQueryParamFields](../../models/operations/createaccountingpurchaseorderqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                      | Fields to return                                                                                                                                        |
| `raw`                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                   | :heavy_minus_sign:                                                                                                                                      | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar        |

### Response

**[T.nilable(Models::Operations::CreateAccountingPurchaseorderResponse)](../../models/operations/createaccountingpurchaseorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_purchaseorder

Retrieve a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingPurchaseorder" method="get" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.purchaseorder.get_accounting_purchaseorder(connection_id: '<id>', id: '<id>')

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `id`                                                                                                                                              | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the Purchaseorder                                                                                                                           |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::GetAccountingPurchaseorderQueryParamFields](../../models/operations/getaccountingpurchaseorderqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::GetAccountingPurchaseorderResponse)](../../models/operations/getaccountingpurchaseorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_purchaseorders

List all purchaseorders

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingPurchaseorders" method="get" path="/accounting/{connection_id}/purchaseorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingPurchaseordersRequest.new(
  connection_id: '<id>',
)

res = s.purchaseorder.list_accounting_purchaseorders(request: req)

unless res.accounting_purchaseorders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::ListAccountingPurchaseordersRequest](../../models/operations/listaccountingpurchaseordersrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::ListAccountingPurchaseordersResponse)](../../models/operations/listaccountingpurchaseordersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_purchaseorder

Update a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingPurchaseorder" method="patch" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingPurchaseorderRequest.new(
  accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(
    attachments: [],
    billing_address: Models::Shared::PropertyAccountingPurchaseorderBillingAddress.new(
      address1: '72142 Willow Street',
      address2: 'Apt. 967',
      city: 'South Annabelleton',
      country_code: 'US',
      postal_code: '30337',
      region: 'Nevada',
      region_code: 'FL',
    ),
    category_ids: [],
    created_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
    currency: 'EUR',
    id: '48e97068-ce4d-4074-985d-773cfe1d221d',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
    shipping_address: Models::Shared::PropertyAccountingPurchaseorderShippingAddress.new(
      address1: '76494 Medhurst Club',
      city: 'Kshlerinfurt',
      country_code: 'US',
      postal_code: '92116-5474',
      region: 'Oregon',
      region_code: 'WY',
    ),
    status: Models::Shared::AccountingPurchaseorderStatus::SUBMITTED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2021-08-11T06:00:23.906Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.purchaseorder.patch_accounting_purchaseorder(request: req)

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::PatchAccountingPurchaseorderRequest](../../models/operations/patchaccountingpurchaseorderrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::PatchAccountingPurchaseorderResponse)](../../models/operations/patchaccountingpurchaseorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_purchaseorder

Remove a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingPurchaseorder" method="delete" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.purchaseorder.remove_accounting_purchaseorder(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAccountingPurchaseorderResponse)](../../models/operations/removeaccountingpurchaseorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_purchaseorder

Update a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingPurchaseorder" method="put" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingPurchaseorderRequest.new(
  accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(
    attachments: [],
    billing_address: Models::Shared::PropertyAccountingPurchaseorderBillingAddress.new(
      address1: '72142 Willow Street',
      address2: 'Apt. 967',
      city: 'South Annabelleton',
      country_code: 'US',
      postal_code: '30337',
      region: 'Nevada',
      region_code: 'FL',
    ),
    category_ids: [],
    created_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
    currency: 'EUR',
    id: '48e97068-ce4d-4074-985d-773cfe1d221d',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
    shipping_address: Models::Shared::PropertyAccountingPurchaseorderShippingAddress.new(
      address1: '76494 Medhurst Club',
      city: 'Kshlerinfurt',
      country_code: 'US',
      postal_code: '92116-5474',
      region: 'Oregon',
      region_code: 'WY',
    ),
    status: Models::Shared::AccountingPurchaseorderStatus::SUBMITTED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2021-08-11T06:00:23.906Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.purchaseorder.update_accounting_purchaseorder(request: req)

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::UpdateAccountingPurchaseorderRequest](../../models/operations/updateaccountingpurchaseorderrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAccountingPurchaseorderResponse)](../../models/operations/updateaccountingpurchaseorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |