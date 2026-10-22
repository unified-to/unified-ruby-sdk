# Shipment
(*shipment*)

## Overview

### Available Operations

* [create_shipping_shipment](#create_shipping_shipment) - Create a shipment
* [get_shipping_shipment](#get_shipping_shipment) - Retrieve a shipment
* [list_shipping_shipments](#list_shipping_shipments) - List all shipments
* [patch_shipping_shipment](#patch_shipping_shipment) - Update a shipment
* [remove_shipping_shipment](#remove_shipping_shipment) - Remove a shipment
* [update_shipping_shipment](#update_shipping_shipment) - Update a shipment

## create_shipping_shipment

Creates a ShippingShipment. Provide the unified ShippingShipment fields in the request body; they are mapped to the provider's API. Returns the created ShippingShipment.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createShippingShipment" method="post" path="/shipping/{connection_id}/shipment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.shipment.create_shipping_shipment(shipping_shipment: Models::Shared::ShippingShipment.new(
  created_at: DateTime.iso8601('2022-09-12T03:11:28.960Z'),
  id: '0a5cf88a-9ecb-4aef-8699-32f07ffa8215',
  is_return: false,
  lineitems: [],
  metadata: [],
  rate_currency: 'USD',
  rate_estimated_days: 4.0,
  rate_service_name: '2nd Day Air',
  service_code: 'OVERNIGHT',
  shipped_at: DateTime.iso8601('2022-09-12T07:26:48.479Z'),
  status: Models::Shared::ShippingShipmentStatus::DELIVERED,
  updated_at: DateTime.iso8601('2022-11-15T07:47:20.988Z'),
), connection_id: '<id>')

unless res.shipping_shipment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `shipping_shipment`                                                                                                                              | [Models::Shared::ShippingShipment](../../models/shared/shippingshipment.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateShippingShipmentQueryParamFields](../../models/operations/createshippingshipmentqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateShippingShipmentResponse)](../../models/operations/createshippingshipmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_shipping_shipment

Retrieves a single ShippingShipment by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getShippingShipment" method="get" path="/shipping/{connection_id}/shipment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.shipment.get_shipping_shipment(connection_id: '<id>', id: '<id>')

unless res.shipping_shipment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Shipment                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetShippingShipmentQueryParamFields](../../models/operations/getshippingshipmentqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetShippingShipmentResponse)](../../models/operations/getshippingshipmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_shipping_shipments

Returns a list of ShippingShipments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listShippingShipments" method="get" path="/shipping/{connection_id}/shipment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListShippingShipmentsRequest.new(
  connection_id: '<id>',
)

res = s.shipment.list_shipping_shipments(request: req)

unless res.shipping_shipments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListShippingShipmentsRequest](../../models/operations/listshippingshipmentsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListShippingShipmentsResponse)](../../models/operations/listshippingshipmentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_shipping_shipment

Updates the ShippingShipment identified by `id`. Provide the unified ShippingShipment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchShippingShipment" method="patch" path="/shipping/{connection_id}/shipment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchShippingShipmentRequest.new(
  shipping_shipment: Models::Shared::ShippingShipment.new(
    created_at: DateTime.iso8601('2022-09-12T03:11:28.960Z'),
    id: 'd29b9c53-a7f2-4b7c-a271-5ac5254ed575',
    is_return: false,
    lineitems: [],
    metadata: [],
    rate_currency: 'USD',
    rate_estimated_days: 4.0,
    rate_service_name: '2nd Day Air',
    service_code: 'OVERNIGHT',
    shipped_at: DateTime.iso8601('2022-09-12T07:26:48.479Z'),
    status: Models::Shared::ShippingShipmentStatus::DELIVERED,
    updated_at: DateTime.iso8601('2022-11-15T07:47:20.993Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.shipment.patch_shipping_shipment(request: req)

unless res.shipping_shipment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchShippingShipmentRequest](../../models/operations/patchshippingshipmentrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchShippingShipmentResponse)](../../models/operations/patchshippingshipmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_shipping_shipment

Deletes the ShippingShipment identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeShippingShipment" method="delete" path="/shipping/{connection_id}/shipment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.shipment.remove_shipping_shipment(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Shipment   |

### Response

**[T.nilable(Models::Operations::RemoveShippingShipmentResponse)](../../models/operations/removeshippingshipmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_shipping_shipment

Updates the ShippingShipment identified by `id`. Provide the unified ShippingShipment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateShippingShipment" method="put" path="/shipping/{connection_id}/shipment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateShippingShipmentRequest.new(
  shipping_shipment: Models::Shared::ShippingShipment.new(
    created_at: DateTime.iso8601('2022-09-12T03:11:28.960Z'),
    id: 'd29b9c53-a7f2-4b7c-a271-5ac5254ed575',
    is_return: false,
    lineitems: [],
    metadata: [],
    rate_currency: 'USD',
    rate_estimated_days: 4.0,
    rate_service_name: '2nd Day Air',
    service_code: 'OVERNIGHT',
    shipped_at: DateTime.iso8601('2022-09-12T07:26:48.479Z'),
    status: Models::Shared::ShippingShipmentStatus::DELIVERED,
    updated_at: DateTime.iso8601('2022-11-15T07:47:20.993Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.shipment.update_shipping_shipment(request: req)

unless res.shipping_shipment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateShippingShipmentRequest](../../models/operations/updateshippingshipmentrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateShippingShipmentResponse)](../../models/operations/updateshippingshipmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |