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
  id: 'd10d3a27-879f-446b-9f87-08e08c4f518d',
  is_active: true,
  is_featured: false,
  is_visible: false,
  length: 92.0,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Hic desipio thorax.',
      height: 961.0,
      id: '8cbeb11d-a6c7-4518-8fa6-9175c7f7feae',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '4f1fbfcf-97ac-446e-8130-d080038a0066',
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
      id: '51e10a11-ec90-4f8e-8c77-9bfcd7e49057',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'absens',
    ),
  ],
  name: 'Chair',
  options: [
    Models::Shared::CommerceItemOption.new(
      id: 'e9c45038-bc2b-4a10-b695-71d3a09ba346',
      name: 'Color',
      position: 1.0,
      values: [
        'olive',
      ],
    ),
    Models::Shared::CommerceItemOption.new(
      id: '99f76c6f-1c5a-47fc-a690-153066814feb',
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
  updated_at: DateTime.iso8601('2026-03-13T21:02:34.008Z'),
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
    id: '98a29e6a-884e-4a18-88ae-fca1cf4ecd55',
    is_active: true,
    is_featured: false,
    is_visible: false,
    length: 92.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Hic desipio thorax.',
        height: 961.0,
        id: 'e1fe6603-05c5-44b9-a9a1-62f10bfb2196',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'f19f0107-78f6-4466-b3e1-45a11c06fe8c',
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
        id: '37ad6659-a255-4afa-afde-99b74694d172',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'absens',
      ),
    ],
    name: 'Chair',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: 'b8a7b81e-093e-4762-9b64-95b1d5bb3962',
        name: 'Color',
        position: 1.0,
        values: [
          'olive',
        ],
      ),
      Models::Shared::CommerceItemOption.new(
        id: 'f21c57cc-03d9-43c5-950f-f8509cef0b2b',
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
    updated_at: DateTime.iso8601('2026-03-13T21:02:34.049Z'),
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
    id: '98a29e6a-884e-4a18-88ae-fca1cf4ecd55',
    is_active: true,
    is_featured: false,
    is_visible: false,
    length: 92.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Hic desipio thorax.',
        height: 961.0,
        id: 'e1fe6603-05c5-44b9-a9a1-62f10bfb2196',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'f19f0107-78f6-4466-b3e1-45a11c06fe8c',
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
        id: '37ad6659-a255-4afa-afde-99b74694d172',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'absens',
      ),
    ],
    name: 'Chair',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: 'b8a7b81e-093e-4762-9b64-95b1d5bb3962',
        name: 'Color',
        position: 1.0,
        values: [
          'olive',
        ],
      ),
      Models::Shared::CommerceItemOption.new(
        id: 'f21c57cc-03d9-43c5-950f-f8509cef0b2b',
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
    updated_at: DateTime.iso8601('2026-03-13T21:02:34.049Z'),
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