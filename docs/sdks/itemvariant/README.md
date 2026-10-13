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

Create an itemvariant

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
  available_at: DateTime.iso8601('2022-02-02T16:10:33.503Z'),
  created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
  description: 'Featuring Helium-enhanced technology, our Chips offers unparalleled helpful performance',
  height: 52.0,
  id: 'd2c9445b-ef84-4fe2-8ac4-4654008dfe76',
  is_active: false,
  is_featured: false,
  is_visible: false,
  length: 94.0,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Calcar delibero cursim summisse.',
      height: 394.0,
      id: '556bb362-68de-4429-b55e-830b3ad1db51',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '7ec44f31-7e20-403e-a491-95075421f926',
          slug: 'illo',
          value: 'quia',
        ),
      ],
      position: 92.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/u0YdHqlRu/2007/3208',
      width: 54.0,
    ),
    Models::Shared::CommerceItemMedia.new(
      alt: 'Civitas acies substantia tergo.',
      height: 351.0,
      id: 'faa16f47-3923-426b-ae56-0173cd7af4d7',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '5aa3977e-6508-4f9e-ad30-f8fd39b5e1b9',
          slug: 'libero',
          value: 'capitulus',
        ),
      ],
      position: 44.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://loremflickr.com/2230/1237?lock=8628070842159966',
      width: 55.0,
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CommerceMetadataFormat::TEXT,
      id: '0be60f19-88a8-49ee-becc-21f2c192f0d0',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'nihil',
    ),
  ],
  name: 'Keyboard',
  options: [
    Models::Shared::CommerceItemOption.new(
      id: 'fdd695d9-5f60-4e7a-8098-bd55a441290d',
      name: 'Steel',
      position: 97.0,
      values: [
        'Granite',
        'Plastic',
      ],
    ),
  ],
  prices: [
    Models::Shared::CommerceItemPrice.new(
      compare_at_price: 3745.0,
      currency: 'COP',
      price: 4913.0,
    ),
    Models::Shared::CommerceItemPrice.new(
      compare_at_price: 438.0,
      currency: 'PHP',
      price: 1378.0,
    ),
    Models::Shared::CommerceItemPrice.new(
      compare_at_price: 1614.0,
      currency: 'PHP',
      price: 8702.0,
    ),
  ],
  public_description: 'Stylish Soap designed to make you stand out with insistent looks',
  public_name: 'Keyboard',
  requires_shipping: false,
  size_unit: Models::Shared::SizeUnit::CM,
  sku: '978-0-7051-0955-0',
  tags: [
    'vomito',
    'custodia',
  ],
  total_stock: 929.0,
  updated_at: DateTime.iso8601('2025-06-11T08:34:31.726Z'),
  weight: 61.0,
  weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
  width: 26.0,
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

Retrieve an itemvariant

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

List all itemvariants

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

Update an itemvariant

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
    available_at: DateTime.iso8601('2022-02-02T16:10:33.503Z'),
    created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
    description: 'Featuring Helium-enhanced technology, our Chips offers unparalleled helpful performance',
    height: 52.0,
    id: '13effc39-af88-497c-a962-b471198d1157',
    is_active: false,
    is_featured: false,
    is_visible: false,
    length: 94.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Calcar delibero cursim summisse.',
        height: 394.0,
        id: 'b7dd6b00-5f9c-4c1b-a6f6-56235c26fe81',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '26da60bb-0b54-4f20-9b4d-4a8833c6be54',
            slug: 'illo',
            value: 'quia',
          ),
        ],
        position: 92.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/u0YdHqlRu/2007/3208',
        width: 54.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Civitas acies substantia tergo.',
        height: 351.0,
        id: '08e73f1e-3286-40f8-aebe-1a4fdcef0242',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '853a8558-deb1-42ad-85c5-ed96a2dc116b',
            slug: 'libero',
            value: 'capitulus',
          ),
        ],
        position: 44.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://loremflickr.com/2230/1237?lock=8628070842159966',
        width: 55.0,
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '41d733bf-fe75-49bc-a4ba-e0a9a8c2cdfa',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'nihil',
      ),
    ],
    name: 'Keyboard',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: 'eb8eabfa-8c51-444a-a48f-0b946fa257fd',
        name: 'Steel',
        position: 97.0,
        values: [
          'Granite',
          'Plastic',
        ],
      ),
    ],
    prices: [
      Models::Shared::CommerceItemPrice.new(
        compare_at_price: 3745.0,
        currency: 'COP',
        price: 4913.0,
      ),
      Models::Shared::CommerceItemPrice.new(
        compare_at_price: 438.0,
        currency: 'PHP',
        price: 1378.0,
      ),
      Models::Shared::CommerceItemPrice.new(
        compare_at_price: 1614.0,
        currency: 'PHP',
        price: 8702.0,
      ),
    ],
    public_description: 'Stylish Soap designed to make you stand out with insistent looks',
    public_name: 'Keyboard',
    requires_shipping: false,
    size_unit: Models::Shared::SizeUnit::CM,
    sku: '978-0-7051-0955-0',
    tags: [
      'vomito',
      'custodia',
    ],
    total_stock: 929.0,
    updated_at: DateTime.iso8601('2025-06-11T08:34:31.742Z'),
    weight: 61.0,
    weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
    width: 26.0,
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

Remove an itemvariant

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

Update an itemvariant

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
    available_at: DateTime.iso8601('2022-02-02T16:10:33.503Z'),
    created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
    description: 'Featuring Helium-enhanced technology, our Chips offers unparalleled helpful performance',
    height: 52.0,
    id: '13effc39-af88-497c-a962-b471198d1157',
    is_active: false,
    is_featured: false,
    is_visible: false,
    length: 94.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Calcar delibero cursim summisse.',
        height: 394.0,
        id: 'b7dd6b00-5f9c-4c1b-a6f6-56235c26fe81',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '26da60bb-0b54-4f20-9b4d-4a8833c6be54',
            slug: 'illo',
            value: 'quia',
          ),
        ],
        position: 92.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/u0YdHqlRu/2007/3208',
        width: 54.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Civitas acies substantia tergo.',
        height: 351.0,
        id: '08e73f1e-3286-40f8-aebe-1a4fdcef0242',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '853a8558-deb1-42ad-85c5-ed96a2dc116b',
            slug: 'libero',
            value: 'capitulus',
          ),
        ],
        position: 44.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://loremflickr.com/2230/1237?lock=8628070842159966',
        width: 55.0,
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '41d733bf-fe75-49bc-a4ba-e0a9a8c2cdfa',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'nihil',
      ),
    ],
    name: 'Keyboard',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: 'eb8eabfa-8c51-444a-a48f-0b946fa257fd',
        name: 'Steel',
        position: 97.0,
        values: [
          'Granite',
          'Plastic',
        ],
      ),
    ],
    prices: [
      Models::Shared::CommerceItemPrice.new(
        compare_at_price: 3745.0,
        currency: 'COP',
        price: 4913.0,
      ),
      Models::Shared::CommerceItemPrice.new(
        compare_at_price: 438.0,
        currency: 'PHP',
        price: 1378.0,
      ),
      Models::Shared::CommerceItemPrice.new(
        compare_at_price: 1614.0,
        currency: 'PHP',
        price: 8702.0,
      ),
    ],
    public_description: 'Stylish Soap designed to make you stand out with insistent looks',
    public_name: 'Keyboard',
    requires_shipping: false,
    size_unit: Models::Shared::SizeUnit::CM,
    sku: '978-0-7051-0955-0',
    tags: [
      'vomito',
      'custodia',
    ],
    total_stock: 929.0,
    updated_at: DateTime.iso8601('2025-06-11T08:34:31.742Z'),
    weight: 61.0,
    weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
    width: 26.0,
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