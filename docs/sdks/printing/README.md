# Printing

## Overview

### Available Operations

* [create_printing_file](#create_printing_file) - Create a file
* [create_printing_order](#create_printing_order) - Create an order
* [create_printing_quote](#create_printing_quote) - Create a quote
* [get_printing_file](#get_printing_file) - Retrieve a file
* [get_printing_order](#get_printing_order) - Retrieve an order
* [get_printing_product](#get_printing_product) - Retrieve a product
* [get_printing_template](#get_printing_template) - Retrieve a template
* [list_printing_files](#list_printing_files) - List all files
* [list_printing_orders](#list_printing_orders) - List all orders
* [list_printing_products](#list_printing_products) - List all products
* [list_printing_templates](#list_printing_templates) - List all templates
* [patch_printing_order](#patch_printing_order) - Update an order
* [remove_printing_order](#remove_printing_order) - Remove an order
* [update_printing_order](#update_printing_order) - Update an order

## create_printing_file

Creates a PrintingFile. Provide the unified PrintingFile fields in the request body; they are mapped to the provider's API. Returns the created PrintingFile.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPrintingFile" method="post" path="/printing/{connection_id}/file" example="printing_file" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.printing.create_printing_file(printing_file: Models::Shared::PrintingFile.new(
  created_at: DateTime.iso8601('2020-10-22T04:25:39.825Z'),
  dpi: 300.0,
  height: 5400.0,
  id: '59887c18-699f-4793-8e99-e12e1d45d1fe',
  metadata: [],
  mime_type: 'image/jpeg',
  name: 'blond-ecliptic.jpg',
  preview_url: 'https://picsum.photos/seed/aATvhmNA/400/400',
  size: 1_956_654.0,
  status: Models::Shared::PrintingFileStatus::READY,
  updated_at: DateTime.iso8601('2020-10-22T04:25:39.825Z'),
  url: 'https://picsum.photos/seed/XBj97B/2783/172',
  width: 4500.0
), connection_id: '<id>')

unless res.printing_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `printing_file`                                                                                                                                  | [Models::Shared::PrintingFile](../../models/shared/printingfile.md)                                                                              | :heavy_check_mark:                                                                                                                               | An artwork or print file in the print vendor file library                                                                                        |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePrintingFileQueryParamFields](../../models/operations/createprintingfilequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePrintingFileResponse)](../../models/operations/createprintingfileresponse.md)**

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
res = s.printing.create_printing_order(printing_order: Models::Shared::PrintingOrder.new(
  created_at: DateTime.iso8601('2022-03-14T11:16:15.147Z'),
  currency: 'USD',
  discount_amount: 0.0,
  id: '4a5e1afa-6569-4eda-b99a-afdaba2cdec7',
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
  updated_at: DateTime.iso8601('2025-01-24T06:34:59.529Z')
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

## create_printing_quote

Creates a PrintingQuote. Provide the unified PrintingQuote fields in the request body; they are mapped to the provider's API. Returns the created PrintingQuote.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPrintingQuote" method="post" path="/printing/{connection_id}/quote" example="printing_quote" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.printing.create_printing_quote(printing_quote: Models::Shared::PrintingQuote.new(
  created_at: DateTime.iso8601('2019-01-02T03:42:06.944Z'),
  currency: 'USD',
  discount_amount: 0.0,
  id: '1e225a9e-7185-41fb-86e2-bae53370b2b3',
  lineitems: [
    Models::Shared::PrintingLineitem.new(
      files: [
        Models::Shared::PrintingLineitemFile.new(
          placement: 'default',
          url: 'https://picsum.photos/seed/0Y5Bjnoiwx/3057/3113'
        ),
      ],
      id: '1',
      name: 'Practical Wooden Salad',
      quantity: 2.0,
      retail_price_amount: 50.83,
      unit_price_amount: 21.72
    ),
    Models::Shared::PrintingLineitem.new(
      files: [
        Models::Shared::PrintingLineitemFile.new(
          placement: 'default',
          url: 'https://picsum.photos/seed/rcPUF/2295/1801'
        ),
      ],
      id: '2',
      name: 'Handmade Gold Car',
      quantity: 4.0,
      retail_price_amount: 35.47,
      sku: 'I79GIBCK',
      unit_price_amount: 17.64
    ),
  ],
  metadata: [],
  shipping_address: Models::Shared::PropertyPrintingQuoteShippingAddress.new(
    address1: '4290 Garden Street',
    address2: 'Suite 874',
    city: 'Cartwrightshire',
    company_name: 'Kris and Sons',
    country: 'United States',
    country_code: 'US',
    email: 'jada73@hotmail.com',
    name: 'Heaven Crist',
    postal_code: '92871',
    region: 'North Carolina',
    region_code: 'KY',
    telephone: '653.412.8900 x9387'
  ),
  shipping_amount: 4.69,
  shipping_method: 'STANDARD',
  shipping_options: [
    Models::Shared::PrintingShippingoption.new(
      amount: 4.69,
      code: 'STANDARD',
      currency: 'USD',
      max_delivery_days: 5.0,
      min_delivery_days: 3.0,
      name: 'Flat Rate (3-5 business days after fulfillment)'
    ),
    Models::Shared::PrintingShippingoption.new(
      amount: 12.99,
      code: 'EXPRESS',
      currency: 'USD',
      max_delivery_days: 3.0,
      min_delivery_days: 1.0,
      name: 'Express (1-3 business days after fulfillment)'
    ),
  ],
  subtotal_amount: 114.0,
  tax_amount: 9.12,
  total_amount: 127.81,
  updated_at: DateTime.iso8601('2019-01-02T03:42:06.944Z')
), connection_id: '<id>')

unless res.printing_quote.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `printing_quote`                                                                                                                                 | [Models::Shared::PrintingQuote](../../models/shared/printingquote.md)                                                                            | :heavy_check_mark:                                                                                                                               | A cost and shipping estimate for a prospective print order                                                                                       |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePrintingQuoteQueryParamFields](../../models/operations/createprintingquotequeryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePrintingQuoteResponse)](../../models/operations/createprintingquoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_printing_file

Retrieves a single PrintingFile by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPrintingFile" method="get" path="/printing/{connection_id}/file/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.printing.get_printing_file(connection_id: '<id>', id: '<id>')

unless res.printing_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the File                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPrintingFileQueryParamFields](../../models/operations/getprintingfilequeryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPrintingFileResponse)](../../models/operations/getprintingfileresponse.md)**

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
res = s.printing.get_printing_order(connection_id: '<id>', id: '<id>')

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

## get_printing_product

Retrieves a single PrintingProduct by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPrintingProduct" method="get" path="/printing/{connection_id}/product/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.printing.get_printing_product(connection_id: '<id>', id: '<id>')

unless res.printing_product.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Product                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPrintingProductQueryParamFields](../../models/operations/getprintingproductqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPrintingProductResponse)](../../models/operations/getprintingproductresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_printing_template

Retrieves a single PrintingTemplate by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPrintingTemplate" method="get" path="/printing/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.printing.get_printing_template(connection_id: '<id>', id: '<id>')

unless res.printing_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Template                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPrintingTemplateQueryParamFields](../../models/operations/getprintingtemplatequeryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPrintingTemplateResponse)](../../models/operations/getprintingtemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_printing_files

Returns a list of PrintingFiles. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPrintingFiles" method="get" path="/printing/{connection_id}/file" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPrintingFilesRequest.new(
  connection_id: '<id>'
)
res = s.printing.list_printing_files(request: req)

unless res.printing_files.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListPrintingFilesRequest](../../models/operations/listprintingfilesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListPrintingFilesResponse)](../../models/operations/listprintingfilesresponse.md)**

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
res = s.printing.list_printing_orders(request: req)

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

## list_printing_products

Returns a list of PrintingProducts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPrintingProducts" method="get" path="/printing/{connection_id}/product" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPrintingProductsRequest.new(
  connection_id: '<id>'
)
res = s.printing.list_printing_products(request: req)

unless res.printing_products.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListPrintingProductsRequest](../../models/operations/listprintingproductsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListPrintingProductsResponse)](../../models/operations/listprintingproductsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_printing_templates

Returns a list of PrintingTemplates. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPrintingTemplates" method="get" path="/printing/{connection_id}/template" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPrintingTemplatesRequest.new(
  connection_id: '<id>'
)
res = s.printing.list_printing_templates(request: req)

unless res.printing_templates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListPrintingTemplatesRequest](../../models/operations/listprintingtemplatesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListPrintingTemplatesResponse)](../../models/operations/listprintingtemplatesresponse.md)**

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
    id: '7b494ba7-bce1-4e71-805e-5c55f298f465',
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
    updated_at: DateTime.iso8601('2025-01-24T06:34:59.551Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.printing.patch_printing_order(request: req)

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
res = s.printing.remove_printing_order(connection_id: '<id>', id: '<id>')

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
    id: '7b494ba7-bce1-4e71-805e-5c55f298f465',
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
    updated_at: DateTime.iso8601('2025-01-24T06:34:59.551Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.printing.update_printing_order(request: req)

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