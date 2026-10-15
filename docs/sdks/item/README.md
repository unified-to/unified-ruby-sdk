# Item
(*item*)

## Overview

### Available Operations

* [create_commerce_item](#create_commerce_item) - Create an item
* [get_commerce_item](#get_commerce_item) - Retrieve an item
* [list_commerce_items](#list_commerce_items) - List all items
* [patch_commerce_item](#patch_commerce_item) - Update an item
* [remove_commerce_item](#remove_commerce_item) - Remove an item
* [update_commerce_item](#update_commerce_item) - Update an item

## create_commerce_item

Create an item

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceItem" method="post" path="/commerce/{connection_id}/item" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.item.create_commerce_item(commerce_item: Models::Shared::CommerceItem.new(
  collections: [],
  created_at: DateTime.iso8601('2019-06-21T20:16:18.628Z'),
  description: 'Vulnero ustulo abeo.',
  duration: 87.0,
  global_code: 'calamitas',
  id: 'd482a90f-5a65-45e1-928a-065d431f1376',
  is_active: false,
  is_featured: true,
  is_taxable: true,
  is_visible: true,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Caterva eveniet acies candidus.',
      height: 663.0,
      id: '08ec411a-0677-491e-913b-7255669b451d',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'ec5c7a78-fa75-4002-a2ff-866cc84a64ac',
          slug: 'doloremque',
          value: 'allatus',
        ),
      ],
      position: 67.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://picsum.photos/seed/73y0uzyK/972/3753',
      width: 88.0,
    ),
    Models::Shared::CommerceItemMedia.new(
      alt: 'Comedo.',
      height: 189.0,
      id: 'f32e80fd-7513-472b-82d0-d0e194e8e700',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '1317d992-10fa-44f5-ae5e-38ce74b8f3b0',
          slug: 'bis',
          value: 'somniculosus',
        ),
      ],
      position: 3.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/Ao4iatfO/771/3906',
      width: 66.0,
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CommerceMetadataFormat::TEXT,
      id: '388683de-f4b6-40a3-97b3-2b7c60dc6289',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'terebro',
    ),
  ],
  name: 'Handcrafted Rubber Tuna',
  prices: [
    Models::Shared::CommerceItemPrice.new(
      compare_at_price: 474.0,
      currency: 'OMR',
      price: 1438.0,
    ),
  ],
  public_description: 'Custodia ventus solio compono.',
  public_name: 'Handcrafted Rubber Tuna',
  requires_shipping: true,
  slug: 'cohors-turba-optio',
  tags: [
    'blanditiis',
    'tandem',
  ],
  total_stock: 579.0,
  type: 'beatae',
  updated_at: DateTime.iso8601('2022-04-17T03:01:39.282Z'),
  vendor_name: 'Mayer - Flatley',
  weight: 22.0,
  weight_unit: Models::Shared::WeightUnit::KG,
), connection_id: '<id>')

unless res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `commerce_item`                                                                                                                                  | [Models::Shared::CommerceItem](../../models/shared/commerceitem.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCommerceItemQueryParamFields](../../models/operations/createcommerceitemqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCommerceItemResponse)](../../models/operations/createcommerceitemresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_commerce_item

Retrieve an item

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceItem" method="get" path="/commerce/{connection_id}/item/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.item.get_commerce_item(connection_id: '<id>', id: '<id>')

unless res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Item                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceItemQueryParamFields](../../models/operations/getcommerceitemqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceItemResponse)](../../models/operations/getcommerceitemresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_items

List all items

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceItems" method="get" path="/commerce/{connection_id}/item" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceItemsRequest.new(
  connection_id: '<id>',
)

res = s.item.list_commerce_items(request: req)

unless res.commerce_items.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListCommerceItemsRequest](../../models/operations/listcommerceitemsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListCommerceItemsResponse)](../../models/operations/listcommerceitemsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_commerce_item

Update an item

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceItem" method="patch" path="/commerce/{connection_id}/item/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCommerceItemRequest.new(
  commerce_item: Models::Shared::CommerceItem.new(
    collections: [],
    created_at: DateTime.iso8601('2019-06-21T20:16:18.628Z'),
    description: 'Vulnero ustulo abeo.',
    duration: 87.0,
    global_code: 'calamitas',
    id: 'd90f0dbc-2405-441b-9cb2-1e7003c47132',
    is_active: false,
    is_featured: true,
    is_taxable: true,
    is_visible: true,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Caterva eveniet acies candidus.',
        height: 663.0,
        id: '26a2bb56-9022-4101-8815-898bd807e385',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '0076e927-5fa3-487d-a14a-9cc230b42d1d',
            slug: 'doloremque',
            value: 'allatus',
          ),
        ],
        position: 67.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/73y0uzyK/972/3753',
        width: 88.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Comedo.',
        height: 189.0,
        id: '6ef92282-05c2-466f-8dcd-3b7b38a8b8ca',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '6e7c41ed-ff94-468c-aebe-bbb4f51d4b3c',
            slug: 'bis',
            value: 'somniculosus',
          ),
        ],
        position: 3.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/Ao4iatfO/771/3906',
        width: 66.0,
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '948238d3-78e8-4cd1-a767-f5bb365278dd',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'terebro',
      ),
    ],
    name: 'Handcrafted Rubber Tuna',
    prices: [
      Models::Shared::CommerceItemPrice.new(
        compare_at_price: 474.0,
        currency: 'OMR',
        price: 1438.0,
      ),
    ],
    public_description: 'Custodia ventus solio compono.',
    public_name: 'Handcrafted Rubber Tuna',
    requires_shipping: true,
    slug: 'cohors-turba-optio',
    tags: [
      'blanditiis',
      'tandem',
    ],
    total_stock: 579.0,
    type: 'beatae',
    updated_at: DateTime.iso8601('2022-04-17T03:01:39.300Z'),
    vendor_name: 'Mayer - Flatley',
    weight: 22.0,
    weight_unit: Models::Shared::WeightUnit::KG,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.item.patch_commerce_item(request: req)

unless res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchCommerceItemRequest](../../models/operations/patchcommerceitemrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchCommerceItemResponse)](../../models/operations/patchcommerceitemresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_commerce_item

Remove an item

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceItem" method="delete" path="/commerce/{connection_id}/item/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.item.remove_commerce_item(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Item       |

### Response

**[T.nilable(Models::Operations::RemoveCommerceItemResponse)](../../models/operations/removecommerceitemresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_commerce_item

Update an item

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceItem" method="put" path="/commerce/{connection_id}/item/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCommerceItemRequest.new(
  commerce_item: Models::Shared::CommerceItem.new(
    collections: [],
    created_at: DateTime.iso8601('2019-06-21T20:16:18.628Z'),
    description: 'Vulnero ustulo abeo.',
    duration: 87.0,
    global_code: 'calamitas',
    id: 'd90f0dbc-2405-441b-9cb2-1e7003c47132',
    is_active: false,
    is_featured: true,
    is_taxable: true,
    is_visible: true,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Caterva eveniet acies candidus.',
        height: 663.0,
        id: '26a2bb56-9022-4101-8815-898bd807e385',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '0076e927-5fa3-487d-a14a-9cc230b42d1d',
            slug: 'doloremque',
            value: 'allatus',
          ),
        ],
        position: 67.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/73y0uzyK/972/3753',
        width: 88.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Comedo.',
        height: 189.0,
        id: '6ef92282-05c2-466f-8dcd-3b7b38a8b8ca',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '6e7c41ed-ff94-468c-aebe-bbb4f51d4b3c',
            slug: 'bis',
            value: 'somniculosus',
          ),
        ],
        position: 3.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/Ao4iatfO/771/3906',
        width: 66.0,
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '948238d3-78e8-4cd1-a767-f5bb365278dd',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'terebro',
      ),
    ],
    name: 'Handcrafted Rubber Tuna',
    prices: [
      Models::Shared::CommerceItemPrice.new(
        compare_at_price: 474.0,
        currency: 'OMR',
        price: 1438.0,
      ),
    ],
    public_description: 'Custodia ventus solio compono.',
    public_name: 'Handcrafted Rubber Tuna',
    requires_shipping: true,
    slug: 'cohors-turba-optio',
    tags: [
      'blanditiis',
      'tandem',
    ],
    total_stock: 579.0,
    type: 'beatae',
    updated_at: DateTime.iso8601('2022-04-17T03:01:39.300Z'),
    vendor_name: 'Mayer - Flatley',
    weight: 22.0,
    weight_unit: Models::Shared::WeightUnit::KG,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.item.update_commerce_item(request: req)

unless res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateCommerceItemRequest](../../models/operations/updatecommerceitemrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateCommerceItemResponse)](../../models/operations/updatecommerceitemresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |