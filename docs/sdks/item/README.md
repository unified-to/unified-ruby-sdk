# Item

## Overview

### Available Operations

* [create_commerce_item](#create_commerce_item) - Create an item
* [get_commerce_item](#get_commerce_item) - Retrieve an item
* [list_commerce_items](#list_commerce_items) - List all items
* [patch_commerce_item](#patch_commerce_item) - Update an item
* [remove_commerce_item](#remove_commerce_item) - Remove an item
* [update_commerce_item](#update_commerce_item) - Update an item

## create_commerce_item

Creates a CommerceItem. Provide the unified CommerceItem fields in the request body; they are mapped to the provider's API. Returns the created CommerceItem.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceItem" method="post" path="/commerce/{connection_id}/item" example="commerce_item" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.item.create_commerce_item(commerce_item: Models::Shared::CommerceItem.new(
  collections: [],
  created_at: DateTime.iso8601('2019-06-21T20:16:18.628Z'),
  description: 'Abeo surculus custodia ventus solio.',
  duration: 104.0,
  global_code: '978-0-85270-680-0',
  id: 'b2eac570-3759-406c-b4a8-345967b1e3a0',
  is_active: false,
  is_featured: false,
  is_taxable: true,
  is_visible: true,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Eveniet acies.',
      height: 876.0,
      id: '0f5936bc-e7fe-451e-af89-4424fa1e2690',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '6f50b073-c6c4-4e79-899e-e548fedd1ccc',
          slug: 'candidus',
          value: 'doloremque'
        ),
      ],
      position: 21.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://picsum.photos/seed/uzyKI/235/2194',
      width: 67.0
    ),
    Models::Shared::CommerceItemMedia.new(
      alt: 'Comedo.',
      height: 651.0,
      id: 'a99e07e5-3cec-4d7c-9c14-0dd45a1bf976',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '6d520ce2-0f6c-401c-83ab-886a41500df3',
          slug: 'bis',
          value: 'somniculosus'
        ),
      ],
      position: 51.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/NFAo4iatfO/383/771',
      width: 3.0
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      extra_data: {
        'display_name' => 'Custom Property',
      },
      format: Models::Shared::CommerceMetadataFormat::TEXT,
      id: '81a3c43d-7f63-4f2c-bbdc-4eca2aab255a',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'abstergo'
    ),
  ],
  name: 'Oriental Gold Tuna',
  prices: [
    Models::Shared::CommerceItemPrice.new(
      currency: 'USD',
      price: 78.11
    ),
  ],
  public_description: 'Adfero neque.',
  public_name: 'Oriental Gold Tuna',
  requires_shipping: true,
  slug: 'oriental-gold-tuna',
  tags: [
    'dolores',
    'amplus',
  ],
  total_stock: 682.0,
  type: 'SERVICE',
  updated_at: DateTime.iso8601('2022-05-04T03:50:09.362Z'),
  vendor_name: 'Rohan - Pouros',
  weight: 37.0,
  weight_unit: Models::Shared::WeightUnit::OZ
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

Retrieves a single CommerceItem by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceItem" method="get" path="/commerce/{connection_id}/item/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Returns a list of CommerceItems. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceItems" method="get" path="/commerce/{connection_id}/item" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceItemsRequest.new(
  connection_id: '<id>'
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

Updates the CommerceItem identified by `id`. Provide the unified CommerceItem fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceItem" method="patch" path="/commerce/{connection_id}/item/{id}" example="commerce_item" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCommerceItemRequest.new(
  commerce_item: Models::Shared::CommerceItem.new(
    collections: [],
    created_at: DateTime.iso8601('2019-06-21T20:16:18.628Z'),
    description: 'Abeo surculus custodia ventus solio.',
    duration: 104.0,
    global_code: '978-0-85270-680-0',
    id: '19557293-9cbf-4b00-983e-19546a528b98',
    is_active: false,
    is_featured: false,
    is_taxable: true,
    is_visible: true,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Eveniet acies.',
        height: 876.0,
        id: 'b102a370-77a7-4f66-ba80-317bfb9c66cd',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'acb30cd7-87d0-4a6a-8b8f-2501a53ea562',
            slug: 'candidus',
            value: 'doloremque'
          ),
        ],
        position: 21.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/uzyKI/235/2194',
        width: 67.0
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Comedo.',
        height: 651.0,
        id: '72f2c76c-3c12-4433-987b-31a7d448ae35',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '7ca8486e-44ab-42bc-b3fc-c5b824fd0ab4',
            slug: 'bis',
            value: 'somniculosus'
          ),
        ],
        position: 51.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/NFAo4iatfO/383/771',
        width: 3.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '29a217b0-0164-4e70-be29-903419217fdc',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'abstergo'
      ),
    ],
    name: 'Oriental Gold Tuna',
    prices: [
      Models::Shared::CommerceItemPrice.new(
        currency: 'USD',
        price: 78.11
      ),
    ],
    public_description: 'Adfero neque.',
    public_name: 'Oriental Gold Tuna',
    requires_shipping: true,
    slug: 'oriental-gold-tuna',
    tags: [
      'dolores',
      'amplus',
    ],
    total_stock: 682.0,
    type: 'SERVICE',
    updated_at: DateTime.iso8601('2022-05-04T03:50:09.370Z'),
    vendor_name: 'Rohan - Pouros',
    weight: 37.0,
    weight_unit: Models::Shared::WeightUnit::OZ
  ),
  connection_id: '<id>',
  id: '<id>'
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

Deletes the CommerceItem identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceItem" method="delete" path="/commerce/{connection_id}/item/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Updates the CommerceItem identified by `id`. Provide the unified CommerceItem fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceItem" method="put" path="/commerce/{connection_id}/item/{id}" example="commerce_item" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCommerceItemRequest.new(
  commerce_item: Models::Shared::CommerceItem.new(
    collections: [],
    created_at: DateTime.iso8601('2019-06-21T20:16:18.628Z'),
    description: 'Abeo surculus custodia ventus solio.',
    duration: 104.0,
    global_code: '978-0-85270-680-0',
    id: '19557293-9cbf-4b00-983e-19546a528b98',
    is_active: false,
    is_featured: false,
    is_taxable: true,
    is_visible: true,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Eveniet acies.',
        height: 876.0,
        id: 'b102a370-77a7-4f66-ba80-317bfb9c66cd',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'acb30cd7-87d0-4a6a-8b8f-2501a53ea562',
            slug: 'candidus',
            value: 'doloremque'
          ),
        ],
        position: 21.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/uzyKI/235/2194',
        width: 67.0
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Comedo.',
        height: 651.0,
        id: '72f2c76c-3c12-4433-987b-31a7d448ae35',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '7ca8486e-44ab-42bc-b3fc-c5b824fd0ab4',
            slug: 'bis',
            value: 'somniculosus'
          ),
        ],
        position: 51.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/NFAo4iatfO/383/771',
        width: 3.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '29a217b0-0164-4e70-be29-903419217fdc',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'abstergo'
      ),
    ],
    name: 'Oriental Gold Tuna',
    prices: [
      Models::Shared::CommerceItemPrice.new(
        currency: 'USD',
        price: 78.11
      ),
    ],
    public_description: 'Adfero neque.',
    public_name: 'Oriental Gold Tuna',
    requires_shipping: true,
    slug: 'oriental-gold-tuna',
    tags: [
      'dolores',
      'amplus',
    ],
    total_stock: 682.0,
    type: 'SERVICE',
    updated_at: DateTime.iso8601('2022-05-04T03:50:09.370Z'),
    vendor_name: 'Rohan - Pouros',
    weight: 37.0,
    weight_unit: Models::Shared::WeightUnit::OZ
  ),
  connection_id: '<id>',
  id: '<id>'
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