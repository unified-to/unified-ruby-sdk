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
  id: '46d60b0a-df15-4756-abf6-c834156560ef',
  is_active: false,
  is_featured: false,
  is_visible: false,
  length: 94.0,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Calcar delibero cursim summisse.',
      height: 394.0,
      id: '27da1899-514a-4628-b319-aa779a593c2e',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '8bff056d-8fea-4ebd-b5aa-1ec536e32c78',
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
      id: '4082190f-c3de-4c5f-af65-7775bf2838c2',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'ceb133c1-e010-4667-8b74-478c7b7fa250',
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
      id: 'cccf70bc-39fb-40cb-bfe6-229faf87853e',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'nihil',
    ),
  ],
  name: 'Keyboard',
  options: [
    Models::Shared::CommerceItemOption.new(
      id: 'c5b4c473-ebc3-4d74-aa1b-8a0ced0f2c57',
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
  updated_at: DateTime.iso8601('2025-05-25T03:31:16.060Z'),
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
    id: '3db16942-7bb3-47f6-8712-8c0a09334274',
    is_active: false,
    is_featured: false,
    is_visible: false,
    length: 94.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Calcar delibero cursim summisse.',
        height: 394.0,
        id: '8c530b65-920d-4f5e-9cb7-3505e48fce7a',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'b18b80fa-1976-4a79-808d-9df68b4e5e72',
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
        id: '4269ce4b-a94e-400d-bf2f-7e0df065a0c0',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'e7a678af-f18e-4792-94e8-9606986e05f2',
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
        id: '40a17259-0eaf-4e90-8845-84da5b9aefa1',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'nihil',
      ),
    ],
    name: 'Keyboard',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: '215d1c70-312f-4114-a724-a35485d94c7b',
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
    updated_at: DateTime.iso8601('2025-05-25T03:31:16.077Z'),
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
    id: '3db16942-7bb3-47f6-8712-8c0a09334274',
    is_active: false,
    is_featured: false,
    is_visible: false,
    length: 94.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Calcar delibero cursim summisse.',
        height: 394.0,
        id: '8c530b65-920d-4f5e-9cb7-3505e48fce7a',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'b18b80fa-1976-4a79-808d-9df68b4e5e72',
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
        id: '4269ce4b-a94e-400d-bf2f-7e0df065a0c0',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'e7a678af-f18e-4792-94e8-9606986e05f2',
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
        id: '40a17259-0eaf-4e90-8845-84da5b9aefa1',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'nihil',
      ),
    ],
    name: 'Keyboard',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: '215d1c70-312f-4114-a724-a35485d94c7b',
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
    updated_at: DateTime.iso8601('2025-05-25T03:31:16.077Z'),
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