# Label
(*label*)

## Overview

### Available Operations

* [create_shipping_label2](#create_shipping_label2) - Create a label
* [get_shipping_label2](#get_shipping_label2) - Retrieve a label
* [list_shipping_labels2](#list_shipping_labels2) - List all labels
* [patch_shipping_label2](#patch_shipping_label2) - Update a label
* [remove_shipping_label2](#remove_shipping_label2) - Remove a label
* [update_shipping_label2](#update_shipping_label2) - Update a label

## create_shipping_label2

Create a label

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createShippingLabel2" method="post" path="/shipping/{connection_id}/label" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.label.create_shipping_label2(shipping_label: Models::Shared::ShippingLabel.new(), connection_id: '<id>')

unless res.shipping_label.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `shipping_label`                                                                                                                                 | [Models::Shared::ShippingLabel](../../models/shared/shippinglabel.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateShippingLabel2QueryParamFields](../../models/operations/createshippinglabel2queryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateShippingLabel2Response)](../../models/operations/createshippinglabel2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_shipping_label2

Retrieve a label

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getShippingLabel2" method="get" path="/shipping/{connection_id}/label/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.label.get_shipping_label2(connection_id: '<id>', id: '<id>')

unless res.shipping_label.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Label                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetShippingLabel2QueryParamFields](../../models/operations/getshippinglabel2queryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetShippingLabel2Response)](../../models/operations/getshippinglabel2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_shipping_labels2

List all labels

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listShippingLabels2" method="get" path="/shipping/{connection_id}/label" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListShippingLabels2Request.new(
  connection_id: '<id>',
)

res = s.label.list_shipping_labels2(request: req)

unless res.shipping_labels.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListShippingLabels2Request](../../models/operations/listshippinglabels2request.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListShippingLabels2Response)](../../models/operations/listshippinglabels2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_shipping_label2

Update a label

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchShippingLabel2" method="patch" path="/shipping/{connection_id}/label/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchShippingLabel2Request.new(
  shipping_label: Models::Shared::ShippingLabel.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.label.patch_shipping_label2(request: req)

unless res.shipping_label.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchShippingLabel2Request](../../models/operations/patchshippinglabel2request.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchShippingLabel2Response)](../../models/operations/patchshippinglabel2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_shipping_label2

Remove a label

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeShippingLabel2" method="delete" path="/shipping/{connection_id}/label/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.label.remove_shipping_label2(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Label      |

### Response

**[T.nilable(Models::Operations::RemoveShippingLabel2Response)](../../models/operations/removeshippinglabel2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_shipping_label2

Update a label

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateShippingLabel2" method="put" path="/shipping/{connection_id}/label/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateShippingLabel2Request.new(
  shipping_label: Models::Shared::ShippingLabel.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.label.update_shipping_label2(request: req)

unless res.shipping_label.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateShippingLabel2Request](../../models/operations/updateshippinglabel2request.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateShippingLabel2Response)](../../models/operations/updateshippinglabel2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |