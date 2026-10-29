# Itemvariant
(*itemvariant*)

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

<!-- UsageSnippet language="ruby" operationID="createCommerceItemvariant" method="post" path="/commerce/{connection_id}/itemvariant" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.itemvariant.create_commerce_itemvariant(commerce_itemvariant: Models::Shared::CommerceItemvariant.new(
  available_at: DateTime.iso8601('2022-02-06T18:14:41.644Z'),
  created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
  description: 'Stylish Salad designed to make you stand out with little looks',
  height: 54.0,
  id: '6b83ecbf-ba5a-4d2e-8dbc-54245a905e45',
  is_active: true,
  is_featured: false,
  is_visible: false,
  length: 92.0,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Hic desipio thorax.',
      height: 961.0,
      id: '142b8089-40af-4fa4-88aa-dbc524bc17fd',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'bc403f89-c36f-4ec5-9f31-602d3d54a9a0',
          slug: 'ubi',
          value: 'textus',
        ),
      ],
      position: 72.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://loremflickr.com/2126/721?lock=8820088623807162',
      width: 35.0,
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CommerceMetadataFormat::TEXT,
      id: '72830f09-91ee-47b0-9f1c-f7cf6e838c22',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'absens',
    ),
  ],
  name: 'Chair',
  options: [
    Models::Shared::CommerceItemOption.new(
      id: '88518161-9d71-4f28-aa47-a1d0ea64880f',
      name: 'Color',
      position: 1.0,
      values: [
        'olive',
      ],
    ),
    Models::Shared::CommerceItemOption.new(
      id: '0c0b1247-33e7-4dc8-810e-d01fe7452a13',
      name: 'Size',
      position: 2.0,
      values: [
        'S',
      ],
    ),
  ],
  prices: [
    Models::Shared::CommerceItemPrice.new(
      currency: 'USD',
      price: 382.23,
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
  updated_at: DateTime.iso8601('2026-03-16T16:05:36.677Z'),
  weight: 46.0,
  weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
  width: 40.0,
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
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceItemvariantsRequest.new(
  connection_id: '<id>',
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

<!-- UsageSnippet language="ruby" operationID="patchCommerceItemvariant" method="patch" path="/commerce/{connection_id}/itemvariant/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCommerceItemvariantRequest.new(
  commerce_itemvariant: Models::Shared::CommerceItemvariant.new(
    available_at: DateTime.iso8601('2022-02-06T18:14:41.644Z'),
    created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
    description: 'Stylish Salad designed to make you stand out with little looks',
    height: 54.0,
    id: '680106ae-c5e5-483b-be2b-dc8a2ce79113',
    is_active: true,
    is_featured: false,
    is_visible: false,
    length: 92.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Hic desipio thorax.',
        height: 961.0,
        id: '6cceffe7-ede4-41a1-9c0d-d025ed5f7eb6',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'c5ec4f7e-3bbc-4cea-b286-18326e6ab9b3',
            slug: 'ubi',
            value: 'textus',
          ),
        ],
        position: 72.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://loremflickr.com/2126/721?lock=8820088623807162',
        width: 35.0,
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '39fb66d1-8d57-4cc6-8bf9-c7e1c74289d5',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'absens',
      ),
    ],
    name: 'Chair',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: '2cc2fdf0-b6a8-4dd9-a4e6-3def1eef05f7',
        name: 'Color',
        position: 1.0,
        values: [
          'olive',
        ],
      ),
      Models::Shared::CommerceItemOption.new(
        id: 'cc3acb04-889f-4198-9a55-cd8f387e1a9e',
        name: 'Size',
        position: 2.0,
        values: [
          'S',
        ],
      ),
    ],
    prices: [
      Models::Shared::CommerceItemPrice.new(
        currency: 'USD',
        price: 382.23,
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
    updated_at: DateTime.iso8601('2026-03-16T16:05:36.696Z'),
    weight: 46.0,
    weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
    width: 40.0,
  ),
  connection_id: '<id>',
  id: '<id>',
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
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

<!-- UsageSnippet language="ruby" operationID="updateCommerceItemvariant" method="put" path="/commerce/{connection_id}/itemvariant/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCommerceItemvariantRequest.new(
  commerce_itemvariant: Models::Shared::CommerceItemvariant.new(
    available_at: DateTime.iso8601('2022-02-06T18:14:41.644Z'),
    created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
    description: 'Stylish Salad designed to make you stand out with little looks',
    height: 54.0,
    id: '680106ae-c5e5-483b-be2b-dc8a2ce79113',
    is_active: true,
    is_featured: false,
    is_visible: false,
    length: 92.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Hic desipio thorax.',
        height: 961.0,
        id: '6cceffe7-ede4-41a1-9c0d-d025ed5f7eb6',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'c5ec4f7e-3bbc-4cea-b286-18326e6ab9b3',
            slug: 'ubi',
            value: 'textus',
          ),
        ],
        position: 72.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://loremflickr.com/2126/721?lock=8820088623807162',
        width: 35.0,
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '39fb66d1-8d57-4cc6-8bf9-c7e1c74289d5',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'absens',
      ),
    ],
    name: 'Chair',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: '2cc2fdf0-b6a8-4dd9-a4e6-3def1eef05f7',
        name: 'Color',
        position: 1.0,
        values: [
          'olive',
        ],
      ),
      Models::Shared::CommerceItemOption.new(
        id: 'cc3acb04-889f-4198-9a55-cd8f387e1a9e',
        name: 'Size',
        position: 2.0,
        values: [
          'S',
        ],
      ),
    ],
    prices: [
      Models::Shared::CommerceItemPrice.new(
        currency: 'USD',
        price: 382.23,
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
    updated_at: DateTime.iso8601('2026-03-16T16:05:36.696Z'),
    weight: 46.0,
    weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
    width: 40.0,
  ),
  connection_id: '<id>',
  id: '<id>',
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