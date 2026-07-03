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

Create a shipment

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

res = s.shipment.create_shipping_shipment(shipping_shipment: Models::Shared::ShippingShipment.new(), connection_id: '<id>')

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

Retrieve a shipment

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

List all shipments

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

Update a shipment

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
  shipping_shipment: Models::Shared::ShippingShipment.new(),
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

Remove a shipment

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

Update a shipment

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
  shipping_shipment: Models::Shared::ShippingShipment.new(),
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