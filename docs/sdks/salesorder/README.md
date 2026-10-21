# Salesorder
(*salesorder*)

## Overview

### Available Operations

* [create_accounting_salesorder](#create_accounting_salesorder) - Create a salesorder
* [get_accounting_salesorder](#get_accounting_salesorder) - Retrieve a salesorder
* [list_accounting_salesorders](#list_accounting_salesorders) - List all salesorders
* [patch_accounting_salesorder](#patch_accounting_salesorder) - Update a salesorder
* [remove_accounting_salesorder](#remove_accounting_salesorder) - Remove a salesorder
* [update_accounting_salesorder](#update_accounting_salesorder) - Update a salesorder

## create_accounting_salesorder

Create a salesorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingSalesorder" method="post" path="/accounting/{connection_id}/salesorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.salesorder.create_accounting_salesorder(accounting_salesorder: Models::Shared::AccountingSalesorder.new(
  billing_address: Models::Shared::PropertyAccountingSalesorderBillingAddress.new(
    address1: '26530 Stroman Rest',
    address2: 'Suite 801',
    city: 'Pocatello',
    country_code: 'US',
    postal_code: '05015-8546',
    region: 'Louisiana',
    region_code: 'MO',
  ),
  category_ids: [],
  closed_at: DateTime.iso8601('2023-03-25T12:57:23.155Z'),
  created_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
  currency: 'USD',
  discount_amount: 0.0,
  fees: [],
  fulfillment_type: Models::Shared::FulfillmentType::OTHER,
  id: '2ee1a550-d200-4b90-84de-64861a01cf0a',
  lineitems: [],
  metadata: [],
  order_number: '832663',
  payments: [],
  posted_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
  refunded_amount: 0.0,
  sales_channel: 'Wholesale',
  service_charge_amount: 0.0,
  shipping_address: Models::Shared::PropertyAccountingSalesorderShippingAddress.new(
    address1: '69878 Bradley Mill',
    city: 'Port Matildestad',
    country_code: 'US',
    postal_code: '07989-2148',
    region: 'Arkansas',
    region_code: 'AK',
  ),
  status: Models::Shared::AccountingSalesorderStatus::PAID,
  subtotal_amount: 0.0,
  tax_amount: 0.0,
  tip_amount: 0.0,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2023-03-25T12:57:23.155Z'),
), connection_id: '<id>')

unless res.accounting_salesorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_salesorder`                                                                                                                           | [Models::Shared::AccountingSalesorder](../../models/shared/accountingsalesorder.md)                                                               | :heavy_check_mark:                                                                                                                                | N/A                                                                                                                                               |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::CreateAccountingSalesorderQueryParamFields](../../models/operations/createaccountingsalesorderqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::CreateAccountingSalesorderResponse)](../../models/operations/createaccountingsalesorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_salesorder

Retrieve a salesorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingSalesorder" method="get" path="/accounting/{connection_id}/salesorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.salesorder.get_accounting_salesorder(connection_id: '<id>', id: '<id>')

unless res.accounting_salesorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Salesorder                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingSalesorderQueryParamFields](../../models/operations/getaccountingsalesorderqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingSalesorderResponse)](../../models/operations/getaccountingsalesorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_salesorders

List all salesorders

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingSalesorders" method="get" path="/accounting/{connection_id}/salesorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingSalesordersRequest.new(
  connection_id: '<id>',
)

res = s.salesorder.list_accounting_salesorders(request: req)

unless res.accounting_salesorders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::ListAccountingSalesordersRequest](../../models/operations/listaccountingsalesordersrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::ListAccountingSalesordersResponse)](../../models/operations/listaccountingsalesordersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_salesorder

Update a salesorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingSalesorder" method="patch" path="/accounting/{connection_id}/salesorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingSalesorderRequest.new(
  accounting_salesorder: Models::Shared::AccountingSalesorder.new(
    billing_address: Models::Shared::PropertyAccountingSalesorderBillingAddress.new(
      address1: '26530 Stroman Rest',
      address2: 'Suite 801',
      city: 'Pocatello',
      country_code: 'US',
      postal_code: '05015-8546',
      region: 'Louisiana',
      region_code: 'MO',
    ),
    category_ids: [],
    closed_at: DateTime.iso8601('2023-03-25T12:57:23.174Z'),
    created_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
    currency: 'USD',
    discount_amount: 0.0,
    fees: [],
    fulfillment_type: Models::Shared::FulfillmentType::OTHER,
    id: '81444e74-2438-4d48-a12a-446390d8c063',
    lineitems: [],
    metadata: [],
    order_number: '832663',
    payments: [],
    posted_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
    refunded_amount: 0.0,
    sales_channel: 'Wholesale',
    service_charge_amount: 0.0,
    shipping_address: Models::Shared::PropertyAccountingSalesorderShippingAddress.new(
      address1: '69878 Bradley Mill',
      city: 'Port Matildestad',
      country_code: 'US',
      postal_code: '07989-2148',
      region: 'Arkansas',
      region_code: 'AK',
    ),
    status: Models::Shared::AccountingSalesorderStatus::PAID,
    subtotal_amount: 0.0,
    tax_amount: 0.0,
    tip_amount: 0.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-03-25T12:57:23.174Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.salesorder.patch_accounting_salesorder(request: req)

unless res.accounting_salesorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::PatchAccountingSalesorderRequest](../../models/operations/patchaccountingsalesorderrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::PatchAccountingSalesorderResponse)](../../models/operations/patchaccountingsalesorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_salesorder

Remove a salesorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingSalesorder" method="delete" path="/accounting/{connection_id}/salesorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.salesorder.remove_accounting_salesorder(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Salesorder |

### Response

**[T.nilable(Models::Operations::RemoveAccountingSalesorderResponse)](../../models/operations/removeaccountingsalesorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_salesorder

Update a salesorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingSalesorder" method="put" path="/accounting/{connection_id}/salesorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingSalesorderRequest.new(
  accounting_salesorder: Models::Shared::AccountingSalesorder.new(
    billing_address: Models::Shared::PropertyAccountingSalesorderBillingAddress.new(
      address1: '26530 Stroman Rest',
      address2: 'Suite 801',
      city: 'Pocatello',
      country_code: 'US',
      postal_code: '05015-8546',
      region: 'Louisiana',
      region_code: 'MO',
    ),
    category_ids: [],
    closed_at: DateTime.iso8601('2023-03-25T12:57:23.174Z'),
    created_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
    currency: 'USD',
    discount_amount: 0.0,
    fees: [],
    fulfillment_type: Models::Shared::FulfillmentType::OTHER,
    id: '81444e74-2438-4d48-a12a-446390d8c063',
    lineitems: [],
    metadata: [],
    order_number: '832663',
    payments: [],
    posted_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
    refunded_amount: 0.0,
    sales_channel: 'Wholesale',
    service_charge_amount: 0.0,
    shipping_address: Models::Shared::PropertyAccountingSalesorderShippingAddress.new(
      address1: '69878 Bradley Mill',
      city: 'Port Matildestad',
      country_code: 'US',
      postal_code: '07989-2148',
      region: 'Arkansas',
      region_code: 'AK',
    ),
    status: Models::Shared::AccountingSalesorderStatus::PAID,
    subtotal_amount: 0.0,
    tax_amount: 0.0,
    tip_amount: 0.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-03-25T12:57:23.174Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.salesorder.update_accounting_salesorder(request: req)

unless res.accounting_salesorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::UpdateAccountingSalesorderRequest](../../models/operations/updateaccountingsalesorderrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::UpdateAccountingSalesorderResponse)](../../models/operations/updateaccountingsalesorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |