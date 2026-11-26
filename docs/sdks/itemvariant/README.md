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
  description: 'Our dog-friendly Bacon ensures pessimistic comfort for your pets',
  height: 54.0,
  id: 'c83b1505-8a7c-47ee-b53e-227d2712e3a2',
  is_active: true,
  is_featured: false,
  is_visible: false,
  length: 92.0,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Calcar delibero cursim summisse.',
      height: 961.0,
      id: 'f2420a46-285b-4f86-b9e7-15326a360d9a',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'b5d40ba6-b8e5-4bd7-a855-f92b8544aa30',
          slug: 'illo',
          value: 'quia'
        ),
      ],
      position: 72.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/u0YdHqlRu/3208/3394',
      width: 35.0
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      extra_data: {
        'display_name' => 'Custom Property',
      },
      format: Models::Shared::CommerceMetadataFormat::TEXT,
      id: '2e4bf905-b10c-48b4-ba00-04ec44cd9d91',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'colligo'
    ),
  ],
  name: 'Table',
  options: [
    Models::Shared::CommerceItemOption.new(
      id: '1b5cdbd8-2b5b-425a-959e-cf76d07cc488',
      name: 'Color',
      position: 1.0,
      values: [
        'purple',
      ]
    ),
    Models::Shared::CommerceItemOption.new(
      id: 'c99c4087-a41b-4e38-a63f-a51933d80b1f',
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
  public_description: 'New teal Gloves with ergonomic design for favorite comfort',
  public_name: 'Table',
  requires_shipping: false,
  size_unit: Models::Shared::SizeUnit::CM,
  sku: '978-1-05-109555-9',
  tags: [
    'labore',
  ],
  total_stock: 436.0,
  updated_at: DateTime.iso8601('2026-04-09T23:08:42.846Z'),
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
    description: 'Our dog-friendly Bacon ensures pessimistic comfort for your pets',
    height: 54.0,
    id: '9b69706e-dfec-40d6-8afc-4c5253fba234',
    is_active: true,
    is_featured: false,
    is_visible: false,
    length: 92.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Calcar delibero cursim summisse.',
        height: 961.0,
        id: '7f5253aa-1210-4ef5-8c3e-b3e7bcfd3c04',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '4f79dd94-8310-474e-ab0f-7eadbac75248',
            slug: 'illo',
            value: 'quia'
          ),
        ],
        position: 72.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/u0YdHqlRu/3208/3394',
        width: 35.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: 'fc882206-6b78-48b6-b257-574f6e71dc2d',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'colligo'
      ),
    ],
    name: 'Table',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: '77063bbd-7574-4b93-a438-8e7ccbeca9e6',
        name: 'Color',
        position: 1.0,
        values: [
          'purple',
        ]
      ),
      Models::Shared::CommerceItemOption.new(
        id: '8dd237e9-846c-42c6-91f3-c2e625a2e166',
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
    public_description: 'New teal Gloves with ergonomic design for favorite comfort',
    public_name: 'Table',
    requires_shipping: false,
    size_unit: Models::Shared::SizeUnit::CM,
    sku: '978-1-05-109555-9',
    tags: [
      'labore',
    ],
    total_stock: 436.0,
    updated_at: DateTime.iso8601('2026-04-09T23:08:42.878Z'),
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
    description: 'Our dog-friendly Bacon ensures pessimistic comfort for your pets',
    height: 54.0,
    id: '9b69706e-dfec-40d6-8afc-4c5253fba234',
    is_active: true,
    is_featured: false,
    is_visible: false,
    length: 92.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Calcar delibero cursim summisse.',
        height: 961.0,
        id: '7f5253aa-1210-4ef5-8c3e-b3e7bcfd3c04',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '4f79dd94-8310-474e-ab0f-7eadbac75248',
            slug: 'illo',
            value: 'quia'
          ),
        ],
        position: 72.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/u0YdHqlRu/3208/3394',
        width: 35.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: 'fc882206-6b78-48b6-b257-574f6e71dc2d',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'colligo'
      ),
    ],
    name: 'Table',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: '77063bbd-7574-4b93-a438-8e7ccbeca9e6',
        name: 'Color',
        position: 1.0,
        values: [
          'purple',
        ]
      ),
      Models::Shared::CommerceItemOption.new(
        id: '8dd237e9-846c-42c6-91f3-c2e625a2e166',
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
    public_description: 'New teal Gloves with ergonomic design for favorite comfort',
    public_name: 'Table',
    requires_shipping: false,
    size_unit: Models::Shared::SizeUnit::CM,
    sku: '978-1-05-109555-9',
    tags: [
      'labore',
    ],
    total_stock: 436.0,
    updated_at: DateTime.iso8601('2026-04-09T23:08:42.878Z'),
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