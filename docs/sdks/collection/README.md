# Collection

## Overview

### Available Operations

* [create_commerce_collection](#create_commerce_collection) - Create a collection
* [create_lms_collection](#create_lms_collection) - Create a collection
* [get_commerce_collection](#get_commerce_collection) - Retrieve a collection
* [get_lms_collection](#get_lms_collection) - Retrieve a collection
* [list_commerce_collections](#list_commerce_collections) - List all collections
* [list_lms_collections](#list_lms_collections) - List all collections
* [patch_commerce_collection](#patch_commerce_collection) - Update a collection
* [patch_lms_collection](#patch_lms_collection) - Update a collection
* [remove_commerce_collection](#remove_commerce_collection) - Remove a collection
* [remove_lms_collection](#remove_lms_collection) - Remove a collection
* [update_commerce_collection](#update_commerce_collection) - Update a collection
* [update_lms_collection](#update_lms_collection) - Update a collection

## create_commerce_collection

Creates a CommerceCollection. Provide the unified CommerceCollection fields in the request body; they are mapped to the provider's API. Returns the created CommerceCollection.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceCollection" method="post" path="/commerce/{connection_id}/collection" example="commerce_collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.collection.create_commerce_collection(commerce_collection: Models::Shared::CommerceCollection.new(
  created_at: DateTime.iso8601('2023-07-14T00:42:54.742Z'),
  description: 'Ward - Hudson\'s most advanced Computer technology increases graceful capabilities',
  id: '85a731d8-627e-407f-8463-c9a691850e4a',
  is_active: true,
  is_featured: false,
  is_visible: false,
  item_metadata: [],
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Armarium amiculum amet defendo.',
      height: 759.0,
      id: '9a19fc7f-0ef0-4308-b4f5-3cff38e0e0c4',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'c937b0a1-c141-446d-a4f0-0b3703b74ccf',
          slug: 'cernuus',
          value: 'torrens'
        ),
      ],
      position: 80.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://picsum.photos/seed/62m4msPNw/3209/1074',
      width: 40.0
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      id: '6994131a-4179-4fc1-a6cc-d3a6c6417e0d',
      slug: 'velit',
      value: 'aureus'
    ),
  ],
  name: 'Rustic Gold Mouse',
  public_description: 'Introducing the Sint Maarten-inspired Gloves, blending awful style with local craftsmanship',
  public_name: 'Rustic Gold Mouse',
  tags: [
    'viridis',
    'deserunt',
    'comparo',
  ],
  type: Models::Shared::CommerceCollectionType::COLLECTION,
  updated_at: DateTime.iso8601('2025-04-03T11:05:11.005Z')
), connection_id: '<id>')

unless res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `commerce_collection`                                                                                                                            | [Models::Shared::CommerceCollection](../../models/shared/commercecollection.md)                                                                  | :heavy_check_mark:                                                                                                                               | A collection of items/products/services                                                                                                          |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCommerceCollectionQueryParamFields](../../models/operations/createcommercecollectionqueryparamfields.md)>    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCommerceCollectionResponse)](../../models/operations/createcommercecollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_lms_collection

Creates a LmsCollection. Provide the unified LmsCollection fields in the request body; they are mapped to the provider's API. Returns the created LmsCollection.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsCollection" method="post" path="/lms/{connection_id}/collection" example="lms_collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.collection.create_lms_collection(lms_collection: Models::Shared::LmsCollection.new(
  created_at: DateTime.iso8601('2019-08-19T14:40:29.227Z'),
  description: 'Defluo.',
  id: '4e99de02-b89c-49a9-822a-e2dfb1339cd5',
  is_active: true,
  media: [
    Models::Shared::LmsMedia.new(
      content: 'Sollers adeo caste brevis denuo attonbitus. Amita ducimus capillus claudeo vulgaris temporibus arbustum solium. Degusto suppono commodo fuga surculus tripudio doloribus. Quaerat cauda civitas carcer alveus alienus sperno vetus. Adulescens conspergo appositus arguo. Fugiat cimentarius depono angustus somniculosus tubineus terra beatae sui.',
      description: 'Alias sit careo vesco tollo.',
      languages: [
        'eo',
      ],
      name: 'aiunt',
      thumbnail_url: 'https://picsum.photos/seed/Iy2MXlem/2398/73',
      type: Models::Shared::LmsMediaType::HEADSHOT,
      url: 'https://picsum.photos/seed/5KfxRKbzo1/2699/3216'
    ),
  ],
  metadata: [],
  name: 'spargo',
  updated_at: DateTime.iso8601('2026-09-05T02:40:50.232Z')
), connection_id: '<id>')

unless res.lms_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `lms_collection`                                                                                                                                 | [Models::Shared::LmsCollection](../../models/shared/lmscollection.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLmsCollectionQueryParamFields](../../models/operations/createlmscollectionqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLmsCollectionResponse)](../../models/operations/createlmscollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_commerce_collection

Retrieves a single CommerceCollection by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceCollection" method="get" path="/commerce/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.collection.get_commerce_collection(connection_id: '<id>', id: '<id>')

unless res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Collection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceCollectionQueryParamFields](../../models/operations/getcommercecollectionqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceCollectionResponse)](../../models/operations/getcommercecollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_lms_collection

Retrieves a single LmsCollection by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsCollection" method="get" path="/lms/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.collection.get_lms_collection(connection_id: '<id>', id: '<id>')

unless res.lms_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Collection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLmsCollectionQueryParamFields](../../models/operations/getlmscollectionqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLmsCollectionResponse)](../../models/operations/getlmscollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_collections

Returns a list of CommerceCollections. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceCollections" method="get" path="/commerce/{connection_id}/collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceCollectionsRequest.new(
  connection_id: '<id>'
)
res = s.collection.list_commerce_collections(request: req)

unless res.commerce_collections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListCommerceCollectionsRequest](../../models/operations/listcommercecollectionsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListCommerceCollectionsResponse)](../../models/operations/listcommercecollectionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_lms_collections

Returns a list of LmsCollections. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsCollections" method="get" path="/lms/{connection_id}/collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListLmsCollectionsRequest.new(
  connection_id: '<id>'
)
res = s.collection.list_lms_collections(request: req)

unless res.lms_collections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListLmsCollectionsRequest](../../models/operations/listlmscollectionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListLmsCollectionsResponse)](../../models/operations/listlmscollectionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_commerce_collection

Updates the CommerceCollection identified by `id`. Provide the unified CommerceCollection fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceCollection" method="patch" path="/commerce/{connection_id}/collection/{id}" example="commerce_collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCommerceCollectionRequest.new(
  commerce_collection: Models::Shared::CommerceCollection.new(
    created_at: DateTime.iso8601('2023-07-14T00:42:54.742Z'),
    description: 'Ward - Hudson\'s most advanced Computer technology increases graceful capabilities',
    id: 'b376697b-edff-4994-ba7e-efb66cdf87eb',
    is_active: true,
    is_featured: false,
    is_visible: false,
    item_metadata: [],
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Armarium amiculum amet defendo.',
        height: 759.0,
        id: '0292b7b8-f483-440d-b523-77058aad6bf5',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '6f4ad79f-ceda-46e8-9d81-bc010d8e7209',
            slug: 'cernuus',
            value: 'torrens'
          ),
        ],
        position: 80.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/62m4msPNw/3209/1074',
        width: 40.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        id: '118157b8-e27d-410d-8b3f-058bc5e2f30f',
        slug: 'velit',
        value: 'aureus'
      ),
    ],
    name: 'Rustic Gold Mouse',
    public_description: 'Introducing the Sint Maarten-inspired Gloves, blending awful style with local craftsmanship',
    public_name: 'Rustic Gold Mouse',
    tags: [
      'viridis',
      'deserunt',
      'comparo',
    ],
    type: Models::Shared::CommerceCollectionType::COLLECTION,
    updated_at: DateTime.iso8601('2025-04-03T11:05:11.016Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.collection.patch_commerce_collection(request: req)

unless res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::PatchCommerceCollectionRequest](../../models/operations/patchcommercecollectionrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::PatchCommerceCollectionResponse)](../../models/operations/patchcommercecollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_lms_collection

Updates the LmsCollection identified by `id`. Provide the unified LmsCollection fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsCollection" method="patch" path="/lms/{connection_id}/collection/{id}" example="lms_collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchLmsCollectionRequest.new(
  lms_collection: Models::Shared::LmsCollection.new(
    created_at: DateTime.iso8601('2019-08-19T14:40:29.227Z'),
    description: 'Defluo.',
    id: '44457881-827e-49a9-a1ef-0c9a04910e55',
    is_active: true,
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Sollers adeo caste brevis denuo attonbitus. Amita ducimus capillus claudeo vulgaris temporibus arbustum solium. Degusto suppono commodo fuga surculus tripudio doloribus. Quaerat cauda civitas carcer alveus alienus sperno vetus. Adulescens conspergo appositus arguo. Fugiat cimentarius depono angustus somniculosus tubineus terra beatae sui.',
        description: 'Alias sit careo vesco tollo.',
        languages: [
          'eo',
        ],
        name: 'aiunt',
        thumbnail_url: 'https://picsum.photos/seed/Iy2MXlem/2398/73',
        type: Models::Shared::LmsMediaType::HEADSHOT,
        url: 'https://picsum.photos/seed/5KfxRKbzo1/2699/3216'
      ),
    ],
    metadata: [],
    name: 'spargo',
    updated_at: DateTime.iso8601('2026-09-05T02:40:50.247Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.collection.patch_lms_collection(request: req)

unless res.lms_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchLmsCollectionRequest](../../models/operations/patchlmscollectionrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchLmsCollectionResponse)](../../models/operations/patchlmscollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_commerce_collection

Deletes the CommerceCollection identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceCollection" method="delete" path="/commerce/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.collection.remove_commerce_collection(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Collection |

### Response

**[T.nilable(Models::Operations::RemoveCommerceCollectionResponse)](../../models/operations/removecommercecollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_lms_collection

Deletes the LmsCollection identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsCollection" method="delete" path="/lms/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.collection.remove_lms_collection(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Collection |

### Response

**[T.nilable(Models::Operations::RemoveLmsCollectionResponse)](../../models/operations/removelmscollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_commerce_collection

Updates the CommerceCollection identified by `id`. Provide the unified CommerceCollection fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceCollection" method="put" path="/commerce/{connection_id}/collection/{id}" example="commerce_collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCommerceCollectionRequest.new(
  commerce_collection: Models::Shared::CommerceCollection.new(
    created_at: DateTime.iso8601('2023-07-14T00:42:54.742Z'),
    description: 'Ward - Hudson\'s most advanced Computer technology increases graceful capabilities',
    id: 'b376697b-edff-4994-ba7e-efb66cdf87eb',
    is_active: true,
    is_featured: false,
    is_visible: false,
    item_metadata: [],
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Armarium amiculum amet defendo.',
        height: 759.0,
        id: '0292b7b8-f483-440d-b523-77058aad6bf5',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '6f4ad79f-ceda-46e8-9d81-bc010d8e7209',
            slug: 'cernuus',
            value: 'torrens'
          ),
        ],
        position: 80.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/62m4msPNw/3209/1074',
        width: 40.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        id: '118157b8-e27d-410d-8b3f-058bc5e2f30f',
        slug: 'velit',
        value: 'aureus'
      ),
    ],
    name: 'Rustic Gold Mouse',
    public_description: 'Introducing the Sint Maarten-inspired Gloves, blending awful style with local craftsmanship',
    public_name: 'Rustic Gold Mouse',
    tags: [
      'viridis',
      'deserunt',
      'comparo',
    ],
    type: Models::Shared::CommerceCollectionType::COLLECTION,
    updated_at: DateTime.iso8601('2025-04-03T11:05:11.016Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.collection.update_commerce_collection(request: req)

unless res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::UpdateCommerceCollectionRequest](../../models/operations/updatecommercecollectionrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::UpdateCommerceCollectionResponse)](../../models/operations/updatecommercecollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_lms_collection

Updates the LmsCollection identified by `id`. Provide the unified LmsCollection fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsCollection" method="put" path="/lms/{connection_id}/collection/{id}" example="lms_collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateLmsCollectionRequest.new(
  lms_collection: Models::Shared::LmsCollection.new(
    created_at: DateTime.iso8601('2019-08-19T14:40:29.227Z'),
    description: 'Defluo.',
    id: '44457881-827e-49a9-a1ef-0c9a04910e55',
    is_active: true,
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Sollers adeo caste brevis denuo attonbitus. Amita ducimus capillus claudeo vulgaris temporibus arbustum solium. Degusto suppono commodo fuga surculus tripudio doloribus. Quaerat cauda civitas carcer alveus alienus sperno vetus. Adulescens conspergo appositus arguo. Fugiat cimentarius depono angustus somniculosus tubineus terra beatae sui.',
        description: 'Alias sit careo vesco tollo.',
        languages: [
          'eo',
        ],
        name: 'aiunt',
        thumbnail_url: 'https://picsum.photos/seed/Iy2MXlem/2398/73',
        type: Models::Shared::LmsMediaType::HEADSHOT,
        url: 'https://picsum.photos/seed/5KfxRKbzo1/2699/3216'
      ),
    ],
    metadata: [],
    name: 'spargo',
    updated_at: DateTime.iso8601('2026-09-05T02:40:50.247Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.collection.update_lms_collection(request: req)

unless res.lms_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateLmsCollectionRequest](../../models/operations/updatelmscollectionrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateLmsCollectionResponse)](../../models/operations/updatelmscollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |