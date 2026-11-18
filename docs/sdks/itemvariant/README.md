# Itemvariant

## Overview

### Available Operations

* [create_commerce_itemvariant](#create_commerce_itemvariant) - Create an itemvariant
* [get_commerce_itemvariant](#get_commerce_itemvariant) - Retrieve an itemvariant
* [list_commerce_itemvariants](#list_commerce_itemvariants) - List all itemvariants
* [patch_commerce_itemvariant](#patch_commerce_itemvariant) - Update an itemvariant
* [remove_commerce_itemvariant](#remove_commerce_itemvariant) - Remove an itemvariant
* [update_commerce_itemvariant](#update_commerce_itemvariant) - Update an itemvariant

## create_commerce_itemvariant

Creates a CommerceItemvariant. Provide the unified CommerceItemvariant fields in the request body; they are mapped to the provider's API. Returns the created CommerceItemvariant.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceItemvariant" method="post" path="/commerce/{connection_id}/itemvariant" example="commerce_itemvariant" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.itemvariant.create_commerce_itemvariant(commerce_itemvariant: Models::Shared::CommerceItemvariant.new(
  available_at: DateTime.iso8601('2022-02-06T18:14:41.644Z'),
  created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
  description: 'Stylish Salad designed to make you stand out with little looks',
  height: 54.0,
  id: 'd1943694-58d5-4391-ba61-111abcbe76a9',
  is_active: true,
  is_featured: false,
  is_visible: false,
  length: 92.0,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Hic desipio thorax.',
      height: 961.0,
      id: '81dccb6e-2c3d-40b8-a406-04bc10bfc732',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '5785fceb-8c15-4871-aaf9-720ba0188954',
          slug: 'ubi',
          value: 'textus'
        ),
      ],
      position: 72.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://loremflickr.com/2126/721?lock=8820088623807162',
      width: 35.0
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      extra_data: {
        'display_name' => 'Custom Property',
      },
      format: Models::Shared::CommerceMetadataFormat::TEXT,
      id: 'c0d7cce9-f34e-4892-97ec-22016b5e6094',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'absens'
    ),
  ],
  name: 'Chair',
  options: [
    Models::Shared::CommerceItemOption.new(
      id: '8df476f9-25fe-4dd2-b335-dbc99731af9c',
      name: 'Color',
      position: 1.0,
      values: [
        'olive',
      ]
    ),
    Models::Shared::CommerceItemOption.new(
      id: '6d7088b4-c1ec-4795-85a2-39d1cc1c7b7a',
      name: 'Size',
      position: 2.0,
      values: [
        'S',
      ]
    ),
  ],
  prices: [
    Models::Shared::CommerceItemPrice.new(
      currency: 'USD',
      price: 382.23
    ),
  ],
  public_description: 'Stylish Cheese designed to make you stand out with grave looks',
  public_name: 'Chair',
  requires_shipping: false,
  size_unit: Models::Shared::SizeUnit::CM,
  sku: '978-1-368-44270-1',
  tags: [
    'deserunt',
  ],
  total_stock: 436.0,
  updated_at: DateTime.iso8601('2026-04-02T20:43:23.640Z'),
  weight: 46.0,
  weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
  width: 40.0
), connection_id: '<id>')

unless res.commerce_itemvariant.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `commerce_itemvariant`                                                                                                                           | [Models::Shared::CommerceItemvariant](../../models/shared/commerceitemvariant.md)                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCommerceItemvariantQueryParamFields](../../models/operations/createcommerceitemvariantqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCommerceItemvariantResponse)](../../models/operations/createcommerceitemvariantresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_commerce_itemvariant

Retrieves a single CommerceItemvariant by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceItemvariant" method="get" path="/commerce/{connection_id}/itemvariant/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.itemvariant.get_commerce_itemvariant(connection_id: '<id>', id: '<id>')

unless res.commerce_itemvariant.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Itemvariant                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceItemvariantQueryParamFields](../../models/operations/getcommerceitemvariantqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceItemvariantResponse)](../../models/operations/getcommerceitemvariantresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_itemvariants

Returns a list of CommerceItemvariants. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceItemvariants" method="get" path="/commerce/{connection_id}/itemvariant" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceItemvariantsRequest.new(
  connection_id: '<id>'
)
res = s.itemvariant.list_commerce_itemvariants(request: req)

unless res.commerce_itemvariants.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListCommerceItemvariantsRequest](../../models/operations/listcommerceitemvariantsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListCommerceItemvariantsResponse)](../../models/operations/listcommerceitemvariantsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_commerce_itemvariant

Updates the CommerceItemvariant identified by `id`. Provide the unified CommerceItemvariant fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceItemvariant" method="patch" path="/commerce/{connection_id}/itemvariant/{id}" example="commerce_itemvariant" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCommerceItemvariantRequest.new(
  commerce_itemvariant: Models::Shared::CommerceItemvariant.new(
    available_at: DateTime.iso8601('2022-02-06T18:14:41.644Z'),
    created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
    description: 'Stylish Salad designed to make you stand out with little looks',
    height: 54.0,
    id: '880ed451-fffa-4a51-b46a-9027978ce0e7',
    is_active: true,
    is_featured: false,
    is_visible: false,
    length: 92.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Hic desipio thorax.',
        height: 961.0,
        id: 'a5905d58-0c28-40bb-874c-89a5a8256301',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '57c818be-1e06-46a3-8902-3d9b94adb0c9',
            slug: 'ubi',
            value: 'textus'
          ),
        ],
        position: 72.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://loremflickr.com/2126/721?lock=8820088623807162',
        width: 35.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '40dfb5b8-a75a-4dc7-9eed-372b38c36602',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'absens'
      ),
    ],
    name: 'Chair',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: '5a8da4ec-533e-4216-8d31-15cc479bbd3d',
        name: 'Color',
        position: 1.0,
        values: [
          'olive',
        ]
      ),
      Models::Shared::CommerceItemOption.new(
        id: 'ea7c9256-e40b-4b18-86a1-f748fb282277',
        name: 'Size',
        position: 2.0,
        values: [
          'S',
        ]
      ),
    ],
    prices: [
      Models::Shared::CommerceItemPrice.new(
        currency: 'USD',
        price: 382.23
      ),
    ],
    public_description: 'Stylish Cheese designed to make you stand out with grave looks',
    public_name: 'Chair',
    requires_shipping: false,
    size_unit: Models::Shared::SizeUnit::CM,
    sku: '978-1-368-44270-1',
    tags: [
      'deserunt',
    ],
    total_stock: 436.0,
    updated_at: DateTime.iso8601('2026-04-02T20:43:23.666Z'),
    weight: 46.0,
    weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
    width: 40.0
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.itemvariant.patch_commerce_itemvariant(request: req)

unless res.commerce_itemvariant.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::PatchCommerceItemvariantRequest](../../models/operations/patchcommerceitemvariantrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::PatchCommerceItemvariantResponse)](../../models/operations/patchcommerceitemvariantresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_commerce_itemvariant

Deletes the CommerceItemvariant identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceItemvariant" method="delete" path="/commerce/{connection_id}/itemvariant/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.itemvariant.remove_commerce_itemvariant(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Itemvariant |

### Response

**[T.nilable(Models::Operations::RemoveCommerceItemvariantResponse)](../../models/operations/removecommerceitemvariantresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_commerce_itemvariant

Updates the CommerceItemvariant identified by `id`. Provide the unified CommerceItemvariant fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceItemvariant" method="put" path="/commerce/{connection_id}/itemvariant/{id}" example="commerce_itemvariant" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCommerceItemvariantRequest.new(
  commerce_itemvariant: Models::Shared::CommerceItemvariant.new(
    available_at: DateTime.iso8601('2022-02-06T18:14:41.644Z'),
    created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
    description: 'Stylish Salad designed to make you stand out with little looks',
    height: 54.0,
    id: '880ed451-fffa-4a51-b46a-9027978ce0e7',
    is_active: true,
    is_featured: false,
    is_visible: false,
    length: 92.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Hic desipio thorax.',
        height: 961.0,
        id: 'a5905d58-0c28-40bb-874c-89a5a8256301',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '57c818be-1e06-46a3-8902-3d9b94adb0c9',
            slug: 'ubi',
            value: 'textus'
          ),
        ],
        position: 72.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://loremflickr.com/2126/721?lock=8820088623807162',
        width: 35.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '40dfb5b8-a75a-4dc7-9eed-372b38c36602',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'absens'
      ),
    ],
    name: 'Chair',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: '5a8da4ec-533e-4216-8d31-15cc479bbd3d',
        name: 'Color',
        position: 1.0,
        values: [
          'olive',
        ]
      ),
      Models::Shared::CommerceItemOption.new(
        id: 'ea7c9256-e40b-4b18-86a1-f748fb282277',
        name: 'Size',
        position: 2.0,
        values: [
          'S',
        ]
      ),
    ],
    prices: [
      Models::Shared::CommerceItemPrice.new(
        currency: 'USD',
        price: 382.23
      ),
    ],
    public_description: 'Stylish Cheese designed to make you stand out with grave looks',
    public_name: 'Chair',
    requires_shipping: false,
    size_unit: Models::Shared::SizeUnit::CM,
    sku: '978-1-368-44270-1',
    tags: [
      'deserunt',
    ],
    total_stock: 436.0,
    updated_at: DateTime.iso8601('2026-04-02T20:43:23.666Z'),
    weight: 46.0,
    weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
    width: 40.0
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.itemvariant.update_commerce_itemvariant(request: req)

unless res.commerce_itemvariant.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::UpdateCommerceItemvariantRequest](../../models/operations/updatecommerceitemvariantrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::UpdateCommerceItemvariantResponse)](../../models/operations/updatecommerceitemvariantresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |