# Order

## Overview

### Available Operations

* [~~create_accounting_order~~](#create_accounting_order) - Create an order :warning: **Deprecated**
* [create_assessment_order](#create_assessment_order) - Create an order
* [create_printing_order](#create_printing_order) - Create an order
* [~~get_accounting_order~~](#get_accounting_order) - Retrieve an order :warning: **Deprecated**
* [get_assessment_order](#get_assessment_order) - Retrieve an order
* [get_printing_order](#get_printing_order) - Retrieve an order
* [~~list_accounting_orders~~](#list_accounting_orders) - List all orders :warning: **Deprecated**
* [list_printing_orders](#list_printing_orders) - List all orders
* [~~patch_accounting_order~~](#patch_accounting_order) - Update an order :warning: **Deprecated**
* [patch_assessment_order](#patch_assessment_order) - Update an order
* [patch_printing_order](#patch_printing_order) - Update an order
* [~~remove_accounting_order~~](#remove_accounting_order) - Remove an order :warning: **Deprecated**
* [remove_printing_order](#remove_printing_order) - Remove an order
* [~~update_accounting_order~~](#update_accounting_order) - Update an order :warning: **Deprecated**
* [update_assessment_order](#update_assessment_order) - Update an order
* [update_printing_order](#update_printing_order) - Update an order

## ~~create_accounting_order~~

Creates a AccountingOrder. Provide the unified AccountingOrder fields in the request body; they are mapped to the provider's API. Returns the created AccountingOrder.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingOrder" method="post" path="/accounting/{connection_id}/order" example="accounting_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.order.create_accounting_order(accounting_order: Models::Shared::AccountingOrder.new(
  billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
    address1: '125 Hayden Highway',
    city: 'Altoona',
    country_code: 'US',
    postal_code: '94706-7691',
    region: 'Louisiana',
    region_code: 'VT'
  ),
  created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
  currency: 'GBP',
  id: '07e53e6f-89b9-4048-9d08-b94408b5b921',
  lineitems: [],
  metadata: [],
  posted_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
  shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
    address1: '450 Garett Mall',
    city: 'New Kamronburgh',
    country_code: 'US',
    postal_code: '76546',
    region: 'Oregon',
    region_code: 'VA'
  ),
  status: Models::Shared::AccountingOrderStatus::AUTHORIZED,
  total_amount: 0.0,
  type: Models::Shared::AccountingOrderType::SALES,
  updated_at: DateTime.iso8601('2022-02-15T17:04:37.203Z')
), connection_id: '<id>')

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_order`                                                                                                                               | [Models::Shared::AccountingOrder](../../models/shared/accountingorder.md)                                                                        | :heavy_check_mark:                                                                                                                               | @deprecated; use AccountingSalesorder or AccountingPurchaseorder                                                                                 |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingOrderQueryParamFields](../../models/operations/createaccountingorderqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingOrderResponse)](../../models/operations/createaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_assessment_order

Creates a AssessmentOrder. Provide the unified AssessmentOrder fields in the request body; they are mapped to the provider's API. Returns the created AssessmentOrder.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAssessmentOrder" method="post" path="/assessment/{connection_id}/order" example="assessment_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.order.create_assessment_order(assessment_order: Models::Shared::AssessmentOrder.new(
  connection_id: '',
  created_at: DateTime.iso8601('2021-09-18T10:33:57.803Z'),
  id: '395c95df-ecc8-4e57-af3d-1932d4271df7',
  metadata: [],
  parameters: [],
  profile_addresses: [],
  profile_date_of_birth: '1989-07-22T16:18:37.650Z',
  profile_emails: [
    'jordan.braun@icloud.com',
  ],
  profile_first_name: 'Jordan',
  profile_gender: Models::Shared::ProfileGender::NON_BINARY,
  profile_last_name: 'Braun',
  profile_name: 'Jordan Braun',
  profile_resume_url: 'https://astonishing-bug.com/',
  profile_social_media_urls: [],
  profile_telephones: [
    '322.658.2806 x3159',
  ],
  reference: 'calcar',
  response_attributes: [],
  response_details: [],
  response_download_urls: [],
  response_max_score: 84.0,
  response_score: 82.0,
  response_status: Models::Shared::ResponseStatus::REJECTED,
  response_url: 'https://nervous-daughter.info/',
  status: Models::Shared::AssessmentOrderStatus::REJECTED,
  target_url: 'https://idolized-suv.info',
  updated_at: DateTime.iso8601('2023-02-04T10:07:44.883Z'),
  workspace_id: '<id>'
), connection_id: '<id>')

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `assessment_order`                                                                                                                               | [Models::Shared::AssessmentOrder](../../models/shared/assessmentorder.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAssessmentOrderQueryParamFields](../../models/operations/createassessmentorderqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAssessmentOrderResponse)](../../models/operations/createassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_printing_order

Creates a PrintingOrder. Provide the unified PrintingOrder fields in the request body; they are mapped to the provider's API. Returns the created PrintingOrder.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPrintingOrder" method="post" path="/printing/{connection_id}/order" example="printing_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.order.create_printing_order(printing_order: Models::Shared::PrintingOrder.new(
  created_at: DateTime.iso8601('2022-03-14T11:16:15.147Z'),
  currency: 'USD',
  discount_amount: 0.0,
  id: '791742ab-c5f0-4fc5-b23e-1841d0e8f6f7',
  lineitems: [
    Models::Shared::PrintingLineitem.new(
      files: [
        Models::Shared::PrintingLineitemFile.new(
          placement: 'default',
          url: 'https://picsum.photos/seed/y54e6o9hYi/191/3357'
        ),
      ],
      id: '1',
      name: 'Bespoke Marble Chair',
      quantity: 2.0,
      retail_price_amount: 54.89,
      sku: 'IBDIE3XR',
      unit_price_amount: 26.37
    ),
    Models::Shared::PrintingLineitem.new(
      files: [
        Models::Shared::PrintingLineitemFile.new(
          placement: 'default',
          url: 'https://picsum.photos/seed/T7S5xf/3521/1221'
        ),
      ],
      id: '2',
      name: 'Electronic Cotton Hat',
      quantity: 1.0,
      retail_price_amount: 23.94,
      unit_price_amount: 10.04
    ),
  ],
  metadata: [],
  shipments: [],
  shipping_address: Models::Shared::PropertyPrintingOrderShippingAddress.new(
    address1: '651 Main Street',
    city: 'Euclid',
    country: 'United States',
    country_code: 'US',
    email: 'gary_leffler28@gmail.com',
    name: 'Angelita Denesik',
    postal_code: '80301',
    region: 'Colorado',
    region_code: 'AR',
    telephone: '808-831-6489 x62979'
  ),
  shipping_amount: 4.69,
  shipping_method: 'STANDARD',
  status: Models::Shared::PrintingOrderStatus::OTHER,
  subtotal_amount: 62.78,
  tax_amount: 5.02,
  total_amount: 72.49,
  updated_at: DateTime.iso8601('2025-01-23T00:26:35.370Z')
), connection_id: '<id>')

unless res.printing_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `printing_order`                                                                                                                                 | [Models::Shared::PrintingOrder](../../models/shared/printingorder.md)                                                                            | :heavy_check_mark:                                                                                                                               | A production order placed with the print vendor                                                                                                  |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePrintingOrderQueryParamFields](../../models/operations/createprintingorderqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePrintingOrderResponse)](../../models/operations/createprintingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~get_accounting_order~~

Retrieves a single AccountingOrder by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingOrder" method="get" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.order.get_accounting_order(connection_id: '<id>', id: '<id>')

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Order                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingOrderQueryParamFields](../../models/operations/getaccountingorderqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingOrderResponse)](../../models/operations/getaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_assessment_order

Retrieves a single AssessmentOrder by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAssessmentOrder" method="get" path="/assessment/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.order.get_assessment_order(connection_id: '<id>', id: '<id>')

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Order                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAssessmentOrderQueryParamFields](../../models/operations/getassessmentorderqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAssessmentOrderResponse)](../../models/operations/getassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_printing_order

Retrieves a single PrintingOrder by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPrintingOrder" method="get" path="/printing/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.order.get_printing_order(connection_id: '<id>', id: '<id>')

unless res.printing_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Order                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPrintingOrderQueryParamFields](../../models/operations/getprintingorderqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPrintingOrderResponse)](../../models/operations/getprintingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~list_accounting_orders~~

Returns a list of AccountingOrders. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingOrders" method="get" path="/accounting/{connection_id}/order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingOrdersRequest.new(
  connection_id: '<id>'
)
res = s.order.list_accounting_orders(request: req)

unless res.accounting_orders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListAccountingOrdersRequest](../../models/operations/listaccountingordersrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListAccountingOrdersResponse)](../../models/operations/listaccountingordersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_printing_orders

Returns a list of PrintingOrders. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPrintingOrders" method="get" path="/printing/{connection_id}/order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPrintingOrdersRequest.new(
  connection_id: '<id>'
)
res = s.order.list_printing_orders(request: req)

unless res.printing_orders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListPrintingOrdersRequest](../../models/operations/listprintingordersrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListPrintingOrdersResponse)](../../models/operations/listprintingordersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~patch_accounting_order~~

Updates the AccountingOrder identified by `id`. Provide the unified AccountingOrder fields to change in the request body.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingOrder" method="patch" path="/accounting/{connection_id}/order/{id}" example="accounting_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingOrderRequest.new(
  accounting_order: Models::Shared::AccountingOrder.new(
    billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
      address1: '125 Hayden Highway',
      city: 'Altoona',
      country_code: 'US',
      postal_code: '94706-7691',
      region: 'Louisiana',
      region_code: 'VT'
    ),
    created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    currency: 'GBP',
    id: '927f3059-1a8a-4b7e-96c0-3305d8c0a168',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
      address1: '450 Garett Mall',
      city: 'New Kamronburgh',
      country_code: 'US',
      postal_code: '76546',
      region: 'Oregon',
      region_code: 'VA'
    ),
    status: Models::Shared::AccountingOrderStatus::AUTHORIZED,
    total_amount: 0.0,
    type: Models::Shared::AccountingOrderType::SALES,
    updated_at: DateTime.iso8601('2022-02-15T17:04:37.210Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.order.patch_accounting_order(request: req)

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchAccountingOrderRequest](../../models/operations/patchaccountingorderrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchAccountingOrderResponse)](../../models/operations/patchaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_assessment_order

Updates the AssessmentOrder identified by `id`. Provide the unified AssessmentOrder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAssessmentOrder" method="patch" path="/assessment/{connection_id}/order/{id}" example="assessment_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAssessmentOrderRequest.new(
  assessment_order: Models::Shared::AssessmentOrder.new(
    connection_id: '',
    created_at: DateTime.iso8601('2021-09-18T10:33:57.803Z'),
    id: '7bfd2ef6-6a35-4f68-9a41-5a1e368635c8',
    metadata: [],
    parameters: [],
    profile_addresses: [],
    profile_date_of_birth: '1989-07-22T16:18:37.650Z',
    profile_emails: [
      'jordan.braun@icloud.com',
    ],
    profile_first_name: 'Jordan',
    profile_gender: Models::Shared::ProfileGender::NON_BINARY,
    profile_last_name: 'Braun',
    profile_name: 'Jordan Braun',
    profile_resume_url: 'https://astonishing-bug.com/',
    profile_social_media_urls: [],
    profile_telephones: [
      '322.658.2806 x3159',
    ],
    reference: 'calcar',
    response_attributes: [],
    response_details: [],
    response_download_urls: [],
    response_max_score: 84.0,
    response_score: 82.0,
    response_status: Models::Shared::ResponseStatus::REJECTED,
    response_url: 'https://nervous-daughter.info/',
    status: Models::Shared::AssessmentOrderStatus::REJECTED,
    target_url: 'https://idolized-suv.info',
    updated_at: DateTime.iso8601('2023-02-04T10:07:44.891Z'),
    workspace_id: '<id>'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.order.patch_assessment_order(request: req)

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchAssessmentOrderRequest](../../models/operations/patchassessmentorderrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchAssessmentOrderResponse)](../../models/operations/patchassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_printing_order

Updates the PrintingOrder identified by `id`. Provide the unified PrintingOrder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPrintingOrder" method="patch" path="/printing/{connection_id}/order/{id}" example="printing_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchPrintingOrderRequest.new(
  printing_order: Models::Shared::PrintingOrder.new(
    created_at: DateTime.iso8601('2022-03-14T11:16:15.147Z'),
    currency: 'USD',
    discount_amount: 0.0,
    id: '069d9cff-7d37-4844-8777-2e16f9d89433',
    lineitems: [
      Models::Shared::PrintingLineitem.new(
        files: [
          Models::Shared::PrintingLineitemFile.new(
            placement: 'default',
            url: 'https://picsum.photos/seed/y54e6o9hYi/191/3357'
          ),
        ],
        id: '1',
        name: 'Bespoke Marble Chair',
        quantity: 2.0,
        retail_price_amount: 54.89,
        sku: 'IBDIE3XR',
        unit_price_amount: 26.37
      ),
      Models::Shared::PrintingLineitem.new(
        files: [
          Models::Shared::PrintingLineitemFile.new(
            placement: 'default',
            url: 'https://picsum.photos/seed/T7S5xf/3521/1221'
          ),
        ],
        id: '2',
        name: 'Electronic Cotton Hat',
        quantity: 1.0,
        retail_price_amount: 23.94,
        unit_price_amount: 10.04
      ),
    ],
    metadata: [],
    shipments: [],
    shipping_address: Models::Shared::PropertyPrintingOrderShippingAddress.new(
      address1: '651 Main Street',
      city: 'Euclid',
      country: 'United States',
      country_code: 'US',
      email: 'gary_leffler28@gmail.com',
      name: 'Angelita Denesik',
      postal_code: '80301',
      region: 'Colorado',
      region_code: 'AR',
      telephone: '808-831-6489 x62979'
    ),
    shipping_amount: 4.69,
    shipping_method: 'STANDARD',
    status: Models::Shared::PrintingOrderStatus::OTHER,
    subtotal_amount: 62.78,
    tax_amount: 5.02,
    total_amount: 72.49,
    updated_at: DateTime.iso8601('2025-01-23T00:26:35.389Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.order.patch_printing_order(request: req)

unless res.printing_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchPrintingOrderRequest](../../models/operations/patchprintingorderrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchPrintingOrderResponse)](../../models/operations/patchprintingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~remove_accounting_order~~

Deletes the AccountingOrder identified by `id`.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingOrder" method="delete" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.order.remove_accounting_order(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Order      |

### Response

**[T.nilable(Models::Operations::RemoveAccountingOrderResponse)](../../models/operations/removeaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_printing_order

Deletes the PrintingOrder identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePrintingOrder" method="delete" path="/printing/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.order.remove_printing_order(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Order      |

### Response

**[T.nilable(Models::Operations::RemovePrintingOrderResponse)](../../models/operations/removeprintingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~update_accounting_order~~

Updates the AccountingOrder identified by `id`. Provide the unified AccountingOrder fields to change in the request body.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingOrder" method="put" path="/accounting/{connection_id}/order/{id}" example="accounting_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingOrderRequest.new(
  accounting_order: Models::Shared::AccountingOrder.new(
    billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
      address1: '125 Hayden Highway',
      city: 'Altoona',
      country_code: 'US',
      postal_code: '94706-7691',
      region: 'Louisiana',
      region_code: 'VT'
    ),
    created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    currency: 'GBP',
    id: '927f3059-1a8a-4b7e-96c0-3305d8c0a168',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
      address1: '450 Garett Mall',
      city: 'New Kamronburgh',
      country_code: 'US',
      postal_code: '76546',
      region: 'Oregon',
      region_code: 'VA'
    ),
    status: Models::Shared::AccountingOrderStatus::AUTHORIZED,
    total_amount: 0.0,
    type: Models::Shared::AccountingOrderType::SALES,
    updated_at: DateTime.iso8601('2022-02-15T17:04:37.210Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.order.update_accounting_order(request: req)

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateAccountingOrderRequest](../../models/operations/updateaccountingorderrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAccountingOrderResponse)](../../models/operations/updateaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_assessment_order

Updates the AssessmentOrder identified by `id`. Provide the unified AssessmentOrder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAssessmentOrder" method="put" path="/assessment/{connection_id}/order/{id}" example="assessment_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAssessmentOrderRequest.new(
  assessment_order: Models::Shared::AssessmentOrder.new(
    connection_id: '',
    created_at: DateTime.iso8601('2021-09-18T10:33:57.803Z'),
    id: '7bfd2ef6-6a35-4f68-9a41-5a1e368635c8',
    metadata: [],
    parameters: [],
    profile_addresses: [],
    profile_date_of_birth: '1989-07-22T16:18:37.650Z',
    profile_emails: [
      'jordan.braun@icloud.com',
    ],
    profile_first_name: 'Jordan',
    profile_gender: Models::Shared::ProfileGender::NON_BINARY,
    profile_last_name: 'Braun',
    profile_name: 'Jordan Braun',
    profile_resume_url: 'https://astonishing-bug.com/',
    profile_social_media_urls: [],
    profile_telephones: [
      '322.658.2806 x3159',
    ],
    reference: 'calcar',
    response_attributes: [],
    response_details: [],
    response_download_urls: [],
    response_max_score: 84.0,
    response_score: 82.0,
    response_status: Models::Shared::ResponseStatus::REJECTED,
    response_url: 'https://nervous-daughter.info/',
    status: Models::Shared::AssessmentOrderStatus::REJECTED,
    target_url: 'https://idolized-suv.info',
    updated_at: DateTime.iso8601('2023-02-04T10:07:44.891Z'),
    workspace_id: '<id>'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.order.update_assessment_order(request: req)

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateAssessmentOrderRequest](../../models/operations/updateassessmentorderrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAssessmentOrderResponse)](../../models/operations/updateassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_printing_order

Updates the PrintingOrder identified by `id`. Provide the unified PrintingOrder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePrintingOrder" method="put" path="/printing/{connection_id}/order/{id}" example="printing_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdatePrintingOrderRequest.new(
  printing_order: Models::Shared::PrintingOrder.new(
    created_at: DateTime.iso8601('2022-03-14T11:16:15.147Z'),
    currency: 'USD',
    discount_amount: 0.0,
    id: '069d9cff-7d37-4844-8777-2e16f9d89433',
    lineitems: [
      Models::Shared::PrintingLineitem.new(
        files: [
          Models::Shared::PrintingLineitemFile.new(
            placement: 'default',
            url: 'https://picsum.photos/seed/y54e6o9hYi/191/3357'
          ),
        ],
        id: '1',
        name: 'Bespoke Marble Chair',
        quantity: 2.0,
        retail_price_amount: 54.89,
        sku: 'IBDIE3XR',
        unit_price_amount: 26.37
      ),
      Models::Shared::PrintingLineitem.new(
        files: [
          Models::Shared::PrintingLineitemFile.new(
            placement: 'default',
            url: 'https://picsum.photos/seed/T7S5xf/3521/1221'
          ),
        ],
        id: '2',
        name: 'Electronic Cotton Hat',
        quantity: 1.0,
        retail_price_amount: 23.94,
        unit_price_amount: 10.04
      ),
    ],
    metadata: [],
    shipments: [],
    shipping_address: Models::Shared::PropertyPrintingOrderShippingAddress.new(
      address1: '651 Main Street',
      city: 'Euclid',
      country: 'United States',
      country_code: 'US',
      email: 'gary_leffler28@gmail.com',
      name: 'Angelita Denesik',
      postal_code: '80301',
      region: 'Colorado',
      region_code: 'AR',
      telephone: '808-831-6489 x62979'
    ),
    shipping_amount: 4.69,
    shipping_method: 'STANDARD',
    status: Models::Shared::PrintingOrderStatus::OTHER,
    subtotal_amount: 62.78,
    tax_amount: 5.02,
    total_amount: 72.49,
    updated_at: DateTime.iso8601('2025-01-23T00:26:35.389Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.order.update_printing_order(request: req)

unless res.printing_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdatePrintingOrderRequest](../../models/operations/updateprintingorderrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdatePrintingOrderResponse)](../../models/operations/updateprintingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |