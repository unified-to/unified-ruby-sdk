# Commerce

## Overview

### Available Operations

* [create_commerce_collection](#create_commerce_collection) - Create a collection
* [create_commerce_inventory](#create_commerce_inventory) - Create an inventory
* [create_commerce_item](#create_commerce_item) - Create an item
* [create_commerce_itemvariant](#create_commerce_itemvariant) - Create an itemvariant
* [create_commerce_location](#create_commerce_location) - Create a location
* [create_commerce_reservation](#create_commerce_reservation) - Create a reservation
* [create_commerce_review](#create_commerce_review) - Create a review
* [create_commerce_saleschannel](#create_commerce_saleschannel) - Create a saleschannel
* [get_commerce_collection](#get_commerce_collection) - Retrieve a collection
* [get_commerce_inventory](#get_commerce_inventory) - Retrieve an inventory
* [get_commerce_item](#get_commerce_item) - Retrieve an item
* [get_commerce_itemvariant](#get_commerce_itemvariant) - Retrieve an itemvariant
* [get_commerce_location](#get_commerce_location) - Retrieve a location
* [get_commerce_reservation](#get_commerce_reservation) - Retrieve a reservation
* [get_commerce_return](#get_commerce_return) - Retrieve a return
* [get_commerce_review](#get_commerce_review) - Retrieve a review
* [get_commerce_saleschannel](#get_commerce_saleschannel) - Retrieve a saleschannel
* [get_commerce_table](#get_commerce_table) - Retrieve a table
* [list_commerce_availabilities](#list_commerce_availabilities) - List all availabilities
* [list_commerce_collections](#list_commerce_collections) - List all collections
* [list_commerce_inventories](#list_commerce_inventories) - List all inventories
* [list_commerce_items](#list_commerce_items) - List all items
* [list_commerce_itemvariants](#list_commerce_itemvariants) - List all itemvariants
* [list_commerce_locations](#list_commerce_locations) - List all locations
* [list_commerce_reservations](#list_commerce_reservations) - List all reservations
* [list_commerce_returns](#list_commerce_returns) - List all returns
* [list_commerce_reviews](#list_commerce_reviews) - List all reviews
* [list_commerce_saleschannels](#list_commerce_saleschannels) - List all saleschannels
* [list_commerce_tables](#list_commerce_tables) - List all tables
* [patch_commerce_collection](#patch_commerce_collection) - Update a collection
* [patch_commerce_inventory](#patch_commerce_inventory) - Update an inventory
* [patch_commerce_item](#patch_commerce_item) - Update an item
* [patch_commerce_itemvariant](#patch_commerce_itemvariant) - Update an itemvariant
* [patch_commerce_location](#patch_commerce_location) - Update a location
* [patch_commerce_reservation](#patch_commerce_reservation) - Update a reservation
* [patch_commerce_review](#patch_commerce_review) - Update a review
* [patch_commerce_saleschannel](#patch_commerce_saleschannel) - Update a saleschannel
* [remove_commerce_collection](#remove_commerce_collection) - Remove a collection
* [remove_commerce_inventory](#remove_commerce_inventory) - Remove an inventory
* [remove_commerce_item](#remove_commerce_item) - Remove an item
* [remove_commerce_itemvariant](#remove_commerce_itemvariant) - Remove an itemvariant
* [remove_commerce_location](#remove_commerce_location) - Remove a location
* [remove_commerce_reservation](#remove_commerce_reservation) - Remove a reservation
* [remove_commerce_review](#remove_commerce_review) - Remove a review
* [remove_commerce_saleschannel](#remove_commerce_saleschannel) - Remove a saleschannel
* [update_commerce_collection](#update_commerce_collection) - Update a collection
* [update_commerce_inventory](#update_commerce_inventory) - Update an inventory
* [update_commerce_item](#update_commerce_item) - Update an item
* [update_commerce_itemvariant](#update_commerce_itemvariant) - Update an itemvariant
* [update_commerce_location](#update_commerce_location) - Update a location
* [update_commerce_reservation](#update_commerce_reservation) - Update a reservation
* [update_commerce_review](#update_commerce_review) - Update a review
* [update_commerce_saleschannel](#update_commerce_saleschannel) - Update a saleschannel

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
res = s.commerce.create_commerce_collection(commerce_collection: Models::Shared::CommerceCollection.new(
  created_at: DateTime.iso8601('2023-07-14T00:42:54.742Z'),
  description: 'The Integrated leading edge website Cheese offers reliable performance and productive design',
  id: 'cbd3c810-54e0-4706-8bd3-06f0d54bc584',
  is_active: true,
  is_featured: false,
  is_visible: false,
  item_metadata: [],
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Defungo adopto thorax.',
      height: 759.0,
      id: '75a71f7c-4b73-4e5a-b5df-1f59218bba00',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'fdbf6592-fbfb-422f-b0af-1fcbfa634d0e',
          slug: 'censura',
          value: 'toties'
        ),
      ],
      position: 80.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://loremflickr.com/1319/1257?lock=7280448425732025',
      width: 40.0
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      id: '1af8e7ca-6abb-4784-8966-3233cb17fe83',
      slug: 'aetas',
      value: 'consuasor'
    ),
  ],
  name: 'Small Marble Chips',
  public_description: 'Generic Gloves designed with Cotton for miserable performance',
  public_name: 'Small Marble Chips',
  tags: [
    'ambulo',
    'adeptio',
    'contego',
  ],
  type: Models::Shared::CommerceCollectionType::COLLECTION,
  updated_at: DateTime.iso8601('2025-03-25T16:21:53.552Z')
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

## create_commerce_inventory

Creates a CommerceInventory. Provide the unified CommerceInventory fields in the request body; they are mapped to the provider's API. Returns the created CommerceInventory.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceInventory" method="post" path="/commerce/{connection_id}/inventory" example="commerce_inventory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.create_commerce_inventory(commerce_inventory: Models::Shared::CommerceInventory.new(
  available: 337.0,
  id: 'a97dda07-1541-46a7-a2be-18100185346c',
  metadata: [],
  updated_at: DateTime.iso8601('2025-12-07T04:22:45.989Z')
), connection_id: '<id>')

unless res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `commerce_inventory`                                                                                                                             | [Models::Shared::CommerceInventory](../../models/shared/commerceinventory.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCommerceInventoryQueryParamFields](../../models/operations/createcommerceinventoryqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCommerceInventoryResponse)](../../models/operations/createcommerceinventoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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
res = s.commerce.create_commerce_item(commerce_item: Models::Shared::CommerceItem.new(
  collections: [],
  created_at: DateTime.iso8601('2019-06-21T20:16:18.628Z'),
  description: 'Decretum vulnero ustulo abeo.',
  duration: 104.0,
  global_code: '978-0-85270-680-0',
  id: '99a37033-365d-44bb-b65d-be793ad2d8aa',
  is_active: false,
  is_featured: false,
  is_taxable: true,
  is_visible: true,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Caterva eveniet acies candidus.',
      height: 876.0,
      id: '62078841-3e5d-43b4-a463-989be6ea8410',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'e3df7f15-8712-4823-938d-bc49d8ad9b70',
          slug: 'doloremque',
          value: 'allatus'
        ),
      ],
      position: 21.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://picsum.photos/seed/v73y0uzyK/3001/972',
      width: 67.0
    ),
    Models::Shared::CommerceItemMedia.new(
      alt: 'Comedo.',
      height: 651.0,
      id: 'bfa00e5f-b536-421e-9b40-19aab8086857',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'cbdb7e2f-56c6-473b-b3d0-62c5a7392dcd',
          slug: 'bis',
          value: 'somniculosus'
        ),
      ],
      position: 51.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/Ao4iatfO/771/3906',
      width: 3.0
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      extra_data: {
        'display_name' => 'Custom Property',
      },
      format: Models::Shared::CommerceMetadataFormat::TEXT,
      id: '4e2c78b0-9187-4eed-981f-33489823b218',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'abstergo'
    ),
  ],
  name: 'Handcrafted Rubber Tuna',
  prices: [
    Models::Shared::CommerceItemPrice.new(
      currency: 'USD',
      price: 78.11
    ),
  ],
  public_description: 'Custodia ventus solio compono.',
  public_name: 'Handcrafted Rubber Tuna',
  requires_shipping: true,
  slug: 'handcrafted-rubber-tuna',
  tags: [
    'beatae',
    'blanditiis',
  ],
  total_stock: 682.0,
  type: 'SERVICE',
  updated_at: DateTime.iso8601('2022-04-27T12:40:30.757Z'),
  vendor_name: 'Mayer - Flatley',
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
res = s.commerce.create_commerce_itemvariant(commerce_itemvariant: Models::Shared::CommerceItemvariant.new(
  available_at: DateTime.iso8601('2022-02-06T18:14:41.644Z'),
  created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
  description: 'Stylish Salad designed to make you stand out with little looks',
  height: 54.0,
  id: '648313d4-8589-4e84-94f8-9dc67696d0a9',
  is_active: true,
  is_featured: false,
  is_visible: false,
  length: 92.0,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Hic desipio thorax.',
      height: 961.0,
      id: '4974333c-2ff7-4b48-b334-fdc1e63df2a2',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'a16bb53a-f131-4532-9e0a-18d3e382826b',
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
      id: '964f49d9-6343-45c2-877f-0fb24fb887fb',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'absens'
    ),
  ],
  name: 'Chair',
  options: [
    Models::Shared::CommerceItemOption.new(
      id: 'e004d640-a16d-4b74-9c35-834509f3531f',
      name: 'Color',
      position: 1.0,
      values: [
        'olive',
      ]
    ),
    Models::Shared::CommerceItemOption.new(
      id: 'e8457192-2cf1-4ace-b12c-1fac7d8d7380',
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
  updated_at: DateTime.iso8601('2026-03-27T19:04:07.867Z'),
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

## create_commerce_location

Creates a CommerceLocation. Provide the unified CommerceLocation fields in the request body; they are mapped to the provider's API. Returns the created CommerceLocation.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceLocation" method="post" path="/commerce/{connection_id}/location" example="commerce_location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.create_commerce_location(commerce_location: Models::Shared::CommerceLocation.new(
  address: Models::Shared::PropertyCommerceLocationAddress.new(
    address1: '29896 The Limes',
    city: 'New Kenny',
    country_code: 'US',
    postal_code: '14490-0609',
    region: 'Virginia',
    region_code: 'MS'
  ),
  categories: [],
  created_at: DateTime.iso8601('2022-12-29T04:15:21.195Z'),
  currency: 'XCD',
  description: 'Adsidue audentia.',
  id: '8ea1417f-ba69-419e-b3a5-5dcb0d5e03e8',
  image_url: 'https://picsum.photos/seed/hjFt1/1036/2220',
  is_active: false,
  language_locale: 'vulgaris',
  latitude: 0.0,
  location_type: Models::Shared::LocationType::RESTAURANT,
  longitude: 0.0,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Addo.',
      height: 283.0,
      id: '28b8564a-f949-4674-b691-cd40c97ec913',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'e38439bc-fe13-4c43-96ec-d66a4dba5b9d',
          slug: 'abutor',
          value: 'damno'
        ),
      ],
      position: 40.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/QVh7ViTV/3964/1567',
      width: 1.0
    ),
  ],
  metadata: [],
  name: 'Olson - Mraz',
  price_level: '',
  rating: 0.0,
  review_count: 0.0,
  telephones: [
    Models::Shared::CommerceTelephone.new(
      telephone: '(872) 522-3201',
      type: Models::Shared::CommerceTelephoneType::OTHER
    ),
    Models::Shared::CommerceTelephone.new(
      telephone: '(236) 274-2445',
      type: Models::Shared::CommerceTelephoneType::MOBILE
    ),
  ],
  updated_at: DateTime.iso8601('2024-04-27T21:44:34.103Z'),
  web_url: 'https://chilly-edge.info'
), connection_id: '<id>')

unless res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `commerce_location`                                                                                                                              | [Models::Shared::CommerceLocation](../../models/shared/commercelocation.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCommerceLocationQueryParamFields](../../models/operations/createcommercelocationqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCommerceLocationResponse)](../../models/operations/createcommercelocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_commerce_reservation

Creates a CommerceReservation. Provide the unified CommerceReservation fields in the request body; they are mapped to the provider's API. Returns the created CommerceReservation.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceReservation" method="post" path="/commerce/{connection_id}/reservation" example="commerce_reservation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.create_commerce_reservation(commerce_reservation: Models::Shared::CommerceReservation.new(
  created_at: DateTime.iso8601('2021-12-14T19:50:31.151Z'),
  end_at: DateTime.iso8601('2022-01-01T22:00:17.868Z'),
  guest_email: 'julien.bartoletti@icloud.com',
  guest_name: 'Julien Bartoletti',
  guest_phone: '(728) 596-2620',
  id: 'e9303be1-afb9-40ea-95fe-00acf3da31b1',
  metadata: [],
  notes: 'Adsum textilis ipsum despecto.',
  size: 10.0,
  start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
  status: Models::Shared::CommerceReservationStatus::PENDING,
  updated_at: DateTime.iso8601('2023-01-08T10:01:12.538Z'),
  url: 'https://expensive-gift.org'
), connection_id: '<id>')

unless res.commerce_reservation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `commerce_reservation`                                                                                                                           | [Models::Shared::CommerceReservation](../../models/shared/commercereservation.md)                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCommerceReservationQueryParamFields](../../models/operations/createcommercereservationqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCommerceReservationResponse)](../../models/operations/createcommercereservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_commerce_review

Creates a CommerceReview. Provide the unified CommerceReview fields in the request body; they are mapped to the provider's API. Returns the created CommerceReview.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceReview" method="post" path="/commerce/{connection_id}/review" example="commerce_review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.create_commerce_review(commerce_review: Models::Shared::CommerceReview.new(
  author_avatar_url: 'https://loremflickr.com/7/2660?lock=4279109054086693',
  author_email: 'nyasia.macgyver@hotmail.com',
  author_location: 'denique',
  author_name: 'Nyasia MacGyver',
  comments: [],
  content: 'Taedium thymum adipiscor amicitia cui.',
  created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
  helpful_votes: 66.0,
  id: '10bf94f0-700d-4dc0-bffa-90279138216b',
  is_featured: false,
  is_public: true,
  is_verified: false,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Desipio carpo sol laudantium colo.',
      height: 749.0,
      id: 'bc97e312-52da-4f29-b10c-9cf9f9b9a574',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '5af165ad-5022-43a0-8937-a878deba18e0',
          slug: 'textor',
          value: 'quos'
        ),
      ],
      position: 29.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://loremflickr.com/196/2041?lock=5845524773114807',
      width: 72.0
    ),
    Models::Shared::CommerceItemMedia.new(
      alt: 'Adopto teneo numquam.',
      height: 957.0,
      id: '6f2f28d2-5166-4483-8cdb-630ebeba8ba4',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '61f0d1ec-9ee0-4c8f-b79c-b696b37204b2',
          slug: 'bos',
          value: 'casso'
        ),
      ],
      position: 69.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://loremflickr.com/1178/2175?lock=5466640101053206',
      width: 61.0
    ),
  ],
  metadata: [],
  rating: 3.0,
  status: Models::Shared::CommerceReviewStatus::APPROVED,
  title: 'Coepi adamo amicitia auxilium toties.',
  unhelpful_votes: 88.0,
  updated_at: DateTime.iso8601('2025-09-07T15:25:08.471Z'),
  url: 'https://diligent-bandwidth.biz',
  verified_purchase: true
), connection_id: '<id>')

unless res.commerce_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `commerce_review`                                                                                                                                | [Models::Shared::CommerceReview](../../models/shared/commercereview.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCommerceReviewQueryParamFields](../../models/operations/createcommercereviewqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCommerceReviewResponse)](../../models/operations/createcommercereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_commerce_saleschannel

Creates a CommerceSaleschannel. Provide the unified CommerceSaleschannel fields in the request body; they are mapped to the provider's API. Returns the created CommerceSaleschannel.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceSaleschannel" method="post" path="/commerce/{connection_id}/saleschannel" example="commerce_saleschannel" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.create_commerce_saleschannel(commerce_saleschannel: Models::Shared::CommerceSaleschannel.new(
  collections: [],
  created_at: DateTime.iso8601('2021-12-12T06:19:55.421Z'),
  description: 'Utroque denuncio solutio.',
  id: '9df0d3de-a540-42f2-b168-4ac0f2699106',
  is_active: false,
  metadata: [],
  slug: 'amiculum-congregatio-suspendo',
  updated_at: DateTime.iso8601('2025-02-10T09:55:14.716Z')
), connection_id: '<id>')

unless res.commerce_saleschannel.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `commerce_saleschannel`                                                                                                                           | [Models::Shared::CommerceSaleschannel](../../models/shared/commercesaleschannel.md)                                                               | :heavy_check_mark:                                                                                                                                | N/A                                                                                                                                               |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::CreateCommerceSaleschannelQueryParamFields](../../models/operations/createcommercesaleschannelqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::CreateCommerceSaleschannelResponse)](../../models/operations/createcommercesaleschannelresponse.md)**

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
res = s.commerce.get_commerce_collection(connection_id: '<id>', id: '<id>')

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

## get_commerce_inventory

Retrieves a single CommerceInventory by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceInventory" method="get" path="/commerce/{connection_id}/inventory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.get_commerce_inventory(connection_id: '<id>', id: '<id>')

unless res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Inventory                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceInventoryQueryParamFields](../../models/operations/getcommerceinventoryqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceInventoryResponse)](../../models/operations/getcommerceinventoryresponse.md)**

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
res = s.commerce.get_commerce_item(connection_id: '<id>', id: '<id>')

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
res = s.commerce.get_commerce_itemvariant(connection_id: '<id>', id: '<id>')

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

## get_commerce_location

Retrieves a single CommerceLocation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceLocation" method="get" path="/commerce/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.get_commerce_location(connection_id: '<id>', id: '<id>')

unless res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Location                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceLocationQueryParamFields](../../models/operations/getcommercelocationqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceLocationResponse)](../../models/operations/getcommercelocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_commerce_reservation

Retrieves a single CommerceReservation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceReservation" method="get" path="/commerce/{connection_id}/reservation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.get_commerce_reservation(connection_id: '<id>', id: '<id>')

unless res.commerce_reservation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Reservation                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceReservationQueryParamFields](../../models/operations/getcommercereservationqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceReservationResponse)](../../models/operations/getcommercereservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_commerce_return

Retrieves a single CommerceReturn by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceReturn" method="get" path="/commerce/{connection_id}/return/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.get_commerce_return(connection_id: '<id>', id: '<id>')

unless res.commerce_return.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Return                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceReturnQueryParamFields](../../models/operations/getcommercereturnqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceReturnResponse)](../../models/operations/getcommercereturnresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_commerce_review

Retrieves a single CommerceReview by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceReview" method="get" path="/commerce/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.get_commerce_review(connection_id: '<id>', id: '<id>')

unless res.commerce_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Review                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceReviewQueryParamFields](../../models/operations/getcommercereviewqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceReviewResponse)](../../models/operations/getcommercereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_commerce_saleschannel

Retrieves a single CommerceSaleschannel by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceSaleschannel" method="get" path="/commerce/{connection_id}/saleschannel/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.get_commerce_saleschannel(connection_id: '<id>', id: '<id>')

unless res.commerce_saleschannel.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Saleschannel                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceSaleschannelQueryParamFields](../../models/operations/getcommercesaleschannelqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceSaleschannelResponse)](../../models/operations/getcommercesaleschannelresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_commerce_table

Retrieves a single CommerceTable by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceTable" method="get" path="/commerce/{connection_id}/table/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.get_commerce_table(connection_id: '<id>', id: '<id>')

unless res.commerce_table.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Table                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCommerceTableQueryParamFields](../../models/operations/getcommercetablequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCommerceTableResponse)](../../models/operations/getcommercetableresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_availabilities

Returns a list of CommerceAvailabilities. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceAvailabilities" method="get" path="/commerce/{connection_id}/availability" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceAvailabilitiesRequest.new(
  connection_id: '<id>'
)
res = s.commerce.list_commerce_availabilities(request: req)

unless res.commerce_availabilities.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListCommerceAvailabilitiesRequest](../../models/operations/listcommerceavailabilitiesrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListCommerceAvailabilitiesResponse)](../../models/operations/listcommerceavailabilitiesresponse.md)**

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
res = s.commerce.list_commerce_collections(request: req)

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

## list_commerce_inventories

Returns a list of CommerceInventories. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceInventories" method="get" path="/commerce/{connection_id}/inventory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceInventoriesRequest.new(
  connection_id: '<id>'
)
res = s.commerce.list_commerce_inventories(request: req)

unless res.commerce_inventories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListCommerceInventoriesRequest](../../models/operations/listcommerceinventoriesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListCommerceInventoriesResponse)](../../models/operations/listcommerceinventoriesresponse.md)**

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
res = s.commerce.list_commerce_items(request: req)

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
res = s.commerce.list_commerce_itemvariants(request: req)

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

## list_commerce_locations

Returns a list of CommerceLocations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceLocations" method="get" path="/commerce/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceLocationsRequest.new(
  connection_id: '<id>'
)
res = s.commerce.list_commerce_locations(request: req)

unless res.commerce_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListCommerceLocationsRequest](../../models/operations/listcommercelocationsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListCommerceLocationsResponse)](../../models/operations/listcommercelocationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_reservations

Returns a list of CommerceReservations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceReservations" method="get" path="/commerce/{connection_id}/reservation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceReservationsRequest.new(
  connection_id: '<id>'
)
res = s.commerce.list_commerce_reservations(request: req)

unless res.commerce_reservations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListCommerceReservationsRequest](../../models/operations/listcommercereservationsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListCommerceReservationsResponse)](../../models/operations/listcommercereservationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_returns

Returns a list of CommerceReturns. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceReturns" method="get" path="/commerce/{connection_id}/return" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceReturnsRequest.new(
  connection_id: '<id>'
)
res = s.commerce.list_commerce_returns(request: req)

unless res.commerce_returns.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListCommerceReturnsRequest](../../models/operations/listcommercereturnsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListCommerceReturnsResponse)](../../models/operations/listcommercereturnsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_reviews

Returns a list of CommerceReviews. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceReviews" method="get" path="/commerce/{connection_id}/review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceReviewsRequest.new(
  connection_id: '<id>'
)
res = s.commerce.list_commerce_reviews(request: req)

unless res.commerce_reviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListCommerceReviewsRequest](../../models/operations/listcommercereviewsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListCommerceReviewsResponse)](../../models/operations/listcommercereviewsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_saleschannels

Returns a list of CommerceSaleschannels. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceSaleschannels" method="get" path="/commerce/{connection_id}/saleschannel" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceSaleschannelsRequest.new(
  connection_id: '<id>'
)
res = s.commerce.list_commerce_saleschannels(request: req)

unless res.commerce_saleschannels.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::ListCommerceSaleschannelsRequest](../../models/operations/listcommercesaleschannelsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::ListCommerceSaleschannelsResponse)](../../models/operations/listcommercesaleschannelsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_commerce_tables

Returns a list of CommerceTables. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceTables" method="get" path="/commerce/{connection_id}/table" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCommerceTablesRequest.new(
  connection_id: '<id>'
)
res = s.commerce.list_commerce_tables(request: req)

unless res.commerce_tables.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListCommerceTablesRequest](../../models/operations/listcommercetablesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListCommerceTablesResponse)](../../models/operations/listcommercetablesresponse.md)**

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
    description: 'The Integrated leading edge website Cheese offers reliable performance and productive design',
    id: 'da08e1f4-c3a9-4c5e-b2b6-fc9948e363cf',
    is_active: true,
    is_featured: false,
    is_visible: false,
    item_metadata: [],
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Defungo adopto thorax.',
        height: 759.0,
        id: '775fbdb0-99b8-4026-b265-d42dd8d5f48a',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '3da280f3-cd8d-4371-b2df-e433afc01a39',
            slug: 'censura',
            value: 'toties'
          ),
        ],
        position: 80.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://loremflickr.com/1319/1257?lock=7280448425732025',
        width: 40.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        id: '97e9d29c-ca5b-4244-accb-8600a9a114e7',
        slug: 'aetas',
        value: 'consuasor'
      ),
    ],
    name: 'Small Marble Chips',
    public_description: 'Generic Gloves designed with Cotton for miserable performance',
    public_name: 'Small Marble Chips',
    tags: [
      'ambulo',
      'adeptio',
      'contego',
    ],
    type: Models::Shared::CommerceCollectionType::COLLECTION,
    updated_at: DateTime.iso8601('2025-03-25T16:21:53.568Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.patch_commerce_collection(request: req)

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

## patch_commerce_inventory

Updates the CommerceInventory identified by `id`. Provide the unified CommerceInventory fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceInventory" method="patch" path="/commerce/{connection_id}/inventory/{id}" example="commerce_inventory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCommerceInventoryRequest.new(
  commerce_inventory: Models::Shared::CommerceInventory.new(
    available: 337.0,
    id: '37230535-1a78-4f73-ba3d-e15a6c20ac7d',
    metadata: [],
    updated_at: DateTime.iso8601('2025-12-07T04:22:45.998Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.patch_commerce_inventory(request: req)

unless res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchCommerceInventoryRequest](../../models/operations/patchcommerceinventoryrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchCommerceInventoryResponse)](../../models/operations/patchcommerceinventoryresponse.md)**

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
    description: 'Decretum vulnero ustulo abeo.',
    duration: 104.0,
    global_code: '978-0-85270-680-0',
    id: 'c332d566-de63-4eb1-ad4a-f743f5d7481a',
    is_active: false,
    is_featured: false,
    is_taxable: true,
    is_visible: true,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Caterva eveniet acies candidus.',
        height: 876.0,
        id: 'b412f9db-e685-4b32-b1e0-d99f58b4de2a',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '8b2499cc-07ee-462e-80c7-a6d174dcfdb4',
            slug: 'doloremque',
            value: 'allatus'
          ),
        ],
        position: 21.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/v73y0uzyK/3001/972',
        width: 67.0
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Comedo.',
        height: 651.0,
        id: 'cb503d00-431a-4ed7-be84-b17f3b658fb2',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'b4dfbc34-4173-4431-987e-3d64337f4e9c',
            slug: 'bis',
            value: 'somniculosus'
          ),
        ],
        position: 51.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/Ao4iatfO/771/3906',
        width: 3.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '7813bf39-28d8-4bd9-b361-5fef8ce434e9',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'abstergo'
      ),
    ],
    name: 'Handcrafted Rubber Tuna',
    prices: [
      Models::Shared::CommerceItemPrice.new(
        currency: 'USD',
        price: 78.11
      ),
    ],
    public_description: 'Custodia ventus solio compono.',
    public_name: 'Handcrafted Rubber Tuna',
    requires_shipping: true,
    slug: 'handcrafted-rubber-tuna',
    tags: [
      'beatae',
      'blanditiis',
    ],
    total_stock: 682.0,
    type: 'SERVICE',
    updated_at: DateTime.iso8601('2022-04-27T12:40:30.770Z'),
    vendor_name: 'Mayer - Flatley',
    weight: 37.0,
    weight_unit: Models::Shared::WeightUnit::OZ
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.patch_commerce_item(request: req)

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
    id: '6d9880a6-352e-4974-b2f5-63363e9ad8d3',
    is_active: true,
    is_featured: false,
    is_visible: false,
    length: 92.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Hic desipio thorax.',
        height: 961.0,
        id: 'db7daa32-9cae-427d-a031-9447a9127883',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'ebe77c96-9bc0-41e5-9460-6c3f06bd6af8',
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
        id: '15de8117-b334-4d18-9926-aa1d6d097183',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'absens'
      ),
    ],
    name: 'Chair',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: 'c83fe375-6143-4c77-b138-bcc323c24547',
        name: 'Color',
        position: 1.0,
        values: [
          'olive',
        ]
      ),
      Models::Shared::CommerceItemOption.new(
        id: 'ecc2216b-c19b-427e-91d7-21824cc81620',
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
    updated_at: DateTime.iso8601('2026-03-27T19:04:07.898Z'),
    weight: 46.0,
    weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
    width: 40.0
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.patch_commerce_itemvariant(request: req)

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

## patch_commerce_location

Updates the CommerceLocation identified by `id`. Provide the unified CommerceLocation fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceLocation" method="patch" path="/commerce/{connection_id}/location/{id}" example="commerce_location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCommerceLocationRequest.new(
  commerce_location: Models::Shared::CommerceLocation.new(
    address: Models::Shared::PropertyCommerceLocationAddress.new(
      address1: '29896 The Limes',
      city: 'New Kenny',
      country_code: 'US',
      postal_code: '14490-0609',
      region: 'Virginia',
      region_code: 'MS'
    ),
    categories: [],
    created_at: DateTime.iso8601('2022-12-29T04:15:21.195Z'),
    currency: 'XCD',
    description: 'Adsidue audentia.',
    id: '2566a3e3-18ec-43cf-810a-c23426a62898',
    image_url: 'https://picsum.photos/seed/hjFt1/1036/2220',
    is_active: false,
    language_locale: 'vulgaris',
    latitude: 0.0,
    location_type: Models::Shared::LocationType::RESTAURANT,
    longitude: 0.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Addo.',
        height: 283.0,
        id: '4d54bf7c-e4a7-496f-9f70-e1bb4566c775',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '3cc6d5c9-dcc5-4a81-b136-22939328abae',
            slug: 'abutor',
            value: 'damno'
          ),
        ],
        position: 40.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/QVh7ViTV/3964/1567',
        width: 1.0
      ),
    ],
    metadata: [],
    name: 'Olson - Mraz',
    price_level: '',
    rating: 0.0,
    review_count: 0.0,
    telephones: [
      Models::Shared::CommerceTelephone.new(
        telephone: '(872) 522-3201',
        type: Models::Shared::CommerceTelephoneType::OTHER
      ),
      Models::Shared::CommerceTelephone.new(
        telephone: '(236) 274-2445',
        type: Models::Shared::CommerceTelephoneType::MOBILE
      ),
    ],
    updated_at: DateTime.iso8601('2024-04-27T21:44:34.116Z'),
    web_url: 'https://chilly-edge.info'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.patch_commerce_location(request: req)

unless res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchCommerceLocationRequest](../../models/operations/patchcommercelocationrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchCommerceLocationResponse)](../../models/operations/patchcommercelocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_commerce_reservation

Updates the CommerceReservation identified by `id`. Provide the unified CommerceReservation fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceReservation" method="patch" path="/commerce/{connection_id}/reservation/{id}" example="commerce_reservation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCommerceReservationRequest.new(
  commerce_reservation: Models::Shared::CommerceReservation.new(
    created_at: DateTime.iso8601('2021-12-14T19:50:31.151Z'),
    end_at: DateTime.iso8601('2022-01-01T22:00:17.868Z'),
    guest_email: 'julien.bartoletti@icloud.com',
    guest_name: 'Julien Bartoletti',
    guest_phone: '(728) 596-2620',
    id: 'bb81432a-d999-4bce-9437-61dbd9317c9d',
    metadata: [],
    notes: 'Adsum textilis ipsum despecto.',
    size: 10.0,
    start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
    status: Models::Shared::CommerceReservationStatus::PENDING,
    updated_at: DateTime.iso8601('2023-01-08T10:01:12.541Z'),
    url: 'https://expensive-gift.org'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.patch_commerce_reservation(request: req)

unless res.commerce_reservation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::PatchCommerceReservationRequest](../../models/operations/patchcommercereservationrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::PatchCommerceReservationResponse)](../../models/operations/patchcommercereservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_commerce_review

Updates the CommerceReview identified by `id`. Provide the unified CommerceReview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceReview" method="patch" path="/commerce/{connection_id}/review/{id}" example="commerce_review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCommerceReviewRequest.new(
  commerce_review: Models::Shared::CommerceReview.new(
    author_avatar_url: 'https://loremflickr.com/7/2660?lock=4279109054086693',
    author_email: 'nyasia.macgyver@hotmail.com',
    author_location: 'denique',
    author_name: 'Nyasia MacGyver',
    comments: [],
    content: 'Taedium thymum adipiscor amicitia cui.',
    created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
    helpful_votes: 66.0,
    id: 'a1d8561b-58c4-403f-9b40-8fb4e87aac81',
    is_featured: false,
    is_public: true,
    is_verified: false,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Desipio carpo sol laudantium colo.',
        height: 749.0,
        id: '0b6d3d1e-c8cb-4ca3-a5b9-5a36e88d447d',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '7c9a57b5-58ab-4ed1-a8c2-330b0631b6d4',
            slug: 'textor',
            value: 'quos'
          ),
        ],
        position: 29.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://loremflickr.com/196/2041?lock=5845524773114807',
        width: 72.0
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Adopto teneo numquam.',
        height: 957.0,
        id: 'b34d07c7-f35c-466a-8a1c-9883fe4ea91a',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '32b57373-e568-4e20-bef7-b26aee1f30a7',
            slug: 'bos',
            value: 'casso'
          ),
        ],
        position: 69.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://loremflickr.com/1178/2175?lock=5466640101053206',
        width: 61.0
      ),
    ],
    metadata: [],
    rating: 3.0,
    status: Models::Shared::CommerceReviewStatus::APPROVED,
    title: 'Coepi adamo amicitia auxilium toties.',
    unhelpful_votes: 88.0,
    updated_at: DateTime.iso8601('2025-09-07T15:25:08.504Z'),
    url: 'https://diligent-bandwidth.biz',
    verified_purchase: true
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.patch_commerce_review(request: req)

unless res.commerce_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchCommerceReviewRequest](../../models/operations/patchcommercereviewrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchCommerceReviewResponse)](../../models/operations/patchcommercereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_commerce_saleschannel

Updates the CommerceSaleschannel identified by `id`. Provide the unified CommerceSaleschannel fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceSaleschannel" method="patch" path="/commerce/{connection_id}/saleschannel/{id}" example="commerce_saleschannel" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCommerceSaleschannelRequest.new(
  commerce_saleschannel: Models::Shared::CommerceSaleschannel.new(
    collections: [],
    created_at: DateTime.iso8601('2021-12-12T06:19:55.421Z'),
    description: 'Utroque denuncio solutio.',
    id: '1defce6c-dd74-4625-b2d6-63ee3e86044a',
    is_active: false,
    metadata: [],
    slug: 'amiculum-congregatio-suspendo',
    updated_at: DateTime.iso8601('2025-02-10T09:55:14.724Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.patch_commerce_saleschannel(request: req)

unless res.commerce_saleschannel.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::PatchCommerceSaleschannelRequest](../../models/operations/patchcommercesaleschannelrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::PatchCommerceSaleschannelResponse)](../../models/operations/patchcommercesaleschannelresponse.md)**

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
res = s.commerce.remove_commerce_collection(connection_id: '<id>', id: '<id>')

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

## remove_commerce_inventory

Deletes the CommerceInventory identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceInventory" method="delete" path="/commerce/{connection_id}/inventory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.remove_commerce_inventory(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Inventory  |

### Response

**[T.nilable(Models::Operations::RemoveCommerceInventoryResponse)](../../models/operations/removecommerceinventoryresponse.md)**

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
res = s.commerce.remove_commerce_item(connection_id: '<id>', id: '<id>')

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
res = s.commerce.remove_commerce_itemvariant(connection_id: '<id>', id: '<id>')

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

## remove_commerce_location

Deletes the CommerceLocation identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceLocation" method="delete" path="/commerce/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.remove_commerce_location(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Location   |

### Response

**[T.nilable(Models::Operations::RemoveCommerceLocationResponse)](../../models/operations/removecommercelocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_commerce_reservation

Deletes the CommerceReservation identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceReservation" method="delete" path="/commerce/{connection_id}/reservation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.remove_commerce_reservation(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Reservation |

### Response

**[T.nilable(Models::Operations::RemoveCommerceReservationResponse)](../../models/operations/removecommercereservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_commerce_review

Deletes the CommerceReview identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceReview" method="delete" path="/commerce/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.remove_commerce_review(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Review     |

### Response

**[T.nilable(Models::Operations::RemoveCommerceReviewResponse)](../../models/operations/removecommercereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_commerce_saleschannel

Deletes the CommerceSaleschannel identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceSaleschannel" method="delete" path="/commerce/{connection_id}/saleschannel/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.commerce.remove_commerce_saleschannel(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Saleschannel |

### Response

**[T.nilable(Models::Operations::RemoveCommerceSaleschannelResponse)](../../models/operations/removecommercesaleschannelresponse.md)**

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
    description: 'The Integrated leading edge website Cheese offers reliable performance and productive design',
    id: 'da08e1f4-c3a9-4c5e-b2b6-fc9948e363cf',
    is_active: true,
    is_featured: false,
    is_visible: false,
    item_metadata: [],
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Defungo adopto thorax.',
        height: 759.0,
        id: '775fbdb0-99b8-4026-b265-d42dd8d5f48a',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '3da280f3-cd8d-4371-b2df-e433afc01a39',
            slug: 'censura',
            value: 'toties'
          ),
        ],
        position: 80.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://loremflickr.com/1319/1257?lock=7280448425732025',
        width: 40.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        id: '97e9d29c-ca5b-4244-accb-8600a9a114e7',
        slug: 'aetas',
        value: 'consuasor'
      ),
    ],
    name: 'Small Marble Chips',
    public_description: 'Generic Gloves designed with Cotton for miserable performance',
    public_name: 'Small Marble Chips',
    tags: [
      'ambulo',
      'adeptio',
      'contego',
    ],
    type: Models::Shared::CommerceCollectionType::COLLECTION,
    updated_at: DateTime.iso8601('2025-03-25T16:21:53.568Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.update_commerce_collection(request: req)

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

## update_commerce_inventory

Updates the CommerceInventory identified by `id`. Provide the unified CommerceInventory fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceInventory" method="put" path="/commerce/{connection_id}/inventory/{id}" example="commerce_inventory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCommerceInventoryRequest.new(
  commerce_inventory: Models::Shared::CommerceInventory.new(
    available: 337.0,
    id: '37230535-1a78-4f73-ba3d-e15a6c20ac7d',
    metadata: [],
    updated_at: DateTime.iso8601('2025-12-07T04:22:45.998Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.update_commerce_inventory(request: req)

unless res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateCommerceInventoryRequest](../../models/operations/updatecommerceinventoryrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateCommerceInventoryResponse)](../../models/operations/updatecommerceinventoryresponse.md)**

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
    description: 'Decretum vulnero ustulo abeo.',
    duration: 104.0,
    global_code: '978-0-85270-680-0',
    id: 'c332d566-de63-4eb1-ad4a-f743f5d7481a',
    is_active: false,
    is_featured: false,
    is_taxable: true,
    is_visible: true,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Caterva eveniet acies candidus.',
        height: 876.0,
        id: 'b412f9db-e685-4b32-b1e0-d99f58b4de2a',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '8b2499cc-07ee-462e-80c7-a6d174dcfdb4',
            slug: 'doloremque',
            value: 'allatus'
          ),
        ],
        position: 21.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/v73y0uzyK/3001/972',
        width: 67.0
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Comedo.',
        height: 651.0,
        id: 'cb503d00-431a-4ed7-be84-b17f3b658fb2',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'b4dfbc34-4173-4431-987e-3d64337f4e9c',
            slug: 'bis',
            value: 'somniculosus'
          ),
        ],
        position: 51.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/Ao4iatfO/771/3906',
        width: 3.0
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '7813bf39-28d8-4bd9-b361-5fef8ce434e9',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'abstergo'
      ),
    ],
    name: 'Handcrafted Rubber Tuna',
    prices: [
      Models::Shared::CommerceItemPrice.new(
        currency: 'USD',
        price: 78.11
      ),
    ],
    public_description: 'Custodia ventus solio compono.',
    public_name: 'Handcrafted Rubber Tuna',
    requires_shipping: true,
    slug: 'handcrafted-rubber-tuna',
    tags: [
      'beatae',
      'blanditiis',
    ],
    total_stock: 682.0,
    type: 'SERVICE',
    updated_at: DateTime.iso8601('2022-04-27T12:40:30.770Z'),
    vendor_name: 'Mayer - Flatley',
    weight: 37.0,
    weight_unit: Models::Shared::WeightUnit::OZ
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.update_commerce_item(request: req)

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
    id: '6d9880a6-352e-4974-b2f5-63363e9ad8d3',
    is_active: true,
    is_featured: false,
    is_visible: false,
    length: 92.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Hic desipio thorax.',
        height: 961.0,
        id: 'db7daa32-9cae-427d-a031-9447a9127883',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'ebe77c96-9bc0-41e5-9460-6c3f06bd6af8',
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
        id: '15de8117-b334-4d18-9926-aa1d6d097183',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'absens'
      ),
    ],
    name: 'Chair',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: 'c83fe375-6143-4c77-b138-bcc323c24547',
        name: 'Color',
        position: 1.0,
        values: [
          'olive',
        ]
      ),
      Models::Shared::CommerceItemOption.new(
        id: 'ecc2216b-c19b-427e-91d7-21824cc81620',
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
    updated_at: DateTime.iso8601('2026-03-27T19:04:07.898Z'),
    weight: 46.0,
    weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
    width: 40.0
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.update_commerce_itemvariant(request: req)

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

## update_commerce_location

Updates the CommerceLocation identified by `id`. Provide the unified CommerceLocation fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceLocation" method="put" path="/commerce/{connection_id}/location/{id}" example="commerce_location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCommerceLocationRequest.new(
  commerce_location: Models::Shared::CommerceLocation.new(
    address: Models::Shared::PropertyCommerceLocationAddress.new(
      address1: '29896 The Limes',
      city: 'New Kenny',
      country_code: 'US',
      postal_code: '14490-0609',
      region: 'Virginia',
      region_code: 'MS'
    ),
    categories: [],
    created_at: DateTime.iso8601('2022-12-29T04:15:21.195Z'),
    currency: 'XCD',
    description: 'Adsidue audentia.',
    id: '2566a3e3-18ec-43cf-810a-c23426a62898',
    image_url: 'https://picsum.photos/seed/hjFt1/1036/2220',
    is_active: false,
    language_locale: 'vulgaris',
    latitude: 0.0,
    location_type: Models::Shared::LocationType::RESTAURANT,
    longitude: 0.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Addo.',
        height: 283.0,
        id: '4d54bf7c-e4a7-496f-9f70-e1bb4566c775',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '3cc6d5c9-dcc5-4a81-b136-22939328abae',
            slug: 'abutor',
            value: 'damno'
          ),
        ],
        position: 40.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/QVh7ViTV/3964/1567',
        width: 1.0
      ),
    ],
    metadata: [],
    name: 'Olson - Mraz',
    price_level: '',
    rating: 0.0,
    review_count: 0.0,
    telephones: [
      Models::Shared::CommerceTelephone.new(
        telephone: '(872) 522-3201',
        type: Models::Shared::CommerceTelephoneType::OTHER
      ),
      Models::Shared::CommerceTelephone.new(
        telephone: '(236) 274-2445',
        type: Models::Shared::CommerceTelephoneType::MOBILE
      ),
    ],
    updated_at: DateTime.iso8601('2024-04-27T21:44:34.116Z'),
    web_url: 'https://chilly-edge.info'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.update_commerce_location(request: req)

unless res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateCommerceLocationRequest](../../models/operations/updatecommercelocationrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateCommerceLocationResponse)](../../models/operations/updatecommercelocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_commerce_reservation

Updates the CommerceReservation identified by `id`. Provide the unified CommerceReservation fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceReservation" method="put" path="/commerce/{connection_id}/reservation/{id}" example="commerce_reservation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCommerceReservationRequest.new(
  commerce_reservation: Models::Shared::CommerceReservation.new(
    created_at: DateTime.iso8601('2021-12-14T19:50:31.151Z'),
    end_at: DateTime.iso8601('2022-01-01T22:00:17.868Z'),
    guest_email: 'julien.bartoletti@icloud.com',
    guest_name: 'Julien Bartoletti',
    guest_phone: '(728) 596-2620',
    id: 'bb81432a-d999-4bce-9437-61dbd9317c9d',
    metadata: [],
    notes: 'Adsum textilis ipsum despecto.',
    size: 10.0,
    start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
    status: Models::Shared::CommerceReservationStatus::PENDING,
    updated_at: DateTime.iso8601('2023-01-08T10:01:12.541Z'),
    url: 'https://expensive-gift.org'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.update_commerce_reservation(request: req)

unless res.commerce_reservation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::UpdateCommerceReservationRequest](../../models/operations/updatecommercereservationrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::UpdateCommerceReservationResponse)](../../models/operations/updatecommercereservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_commerce_review

Updates the CommerceReview identified by `id`. Provide the unified CommerceReview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceReview" method="put" path="/commerce/{connection_id}/review/{id}" example="commerce_review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCommerceReviewRequest.new(
  commerce_review: Models::Shared::CommerceReview.new(
    author_avatar_url: 'https://loremflickr.com/7/2660?lock=4279109054086693',
    author_email: 'nyasia.macgyver@hotmail.com',
    author_location: 'denique',
    author_name: 'Nyasia MacGyver',
    comments: [],
    content: 'Taedium thymum adipiscor amicitia cui.',
    created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
    helpful_votes: 66.0,
    id: 'a1d8561b-58c4-403f-9b40-8fb4e87aac81',
    is_featured: false,
    is_public: true,
    is_verified: false,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Desipio carpo sol laudantium colo.',
        height: 749.0,
        id: '0b6d3d1e-c8cb-4ca3-a5b9-5a36e88d447d',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '7c9a57b5-58ab-4ed1-a8c2-330b0631b6d4',
            slug: 'textor',
            value: 'quos'
          ),
        ],
        position: 29.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://loremflickr.com/196/2041?lock=5845524773114807',
        width: 72.0
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Adopto teneo numquam.',
        height: 957.0,
        id: 'b34d07c7-f35c-466a-8a1c-9883fe4ea91a',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '32b57373-e568-4e20-bef7-b26aee1f30a7',
            slug: 'bos',
            value: 'casso'
          ),
        ],
        position: 69.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://loremflickr.com/1178/2175?lock=5466640101053206',
        width: 61.0
      ),
    ],
    metadata: [],
    rating: 3.0,
    status: Models::Shared::CommerceReviewStatus::APPROVED,
    title: 'Coepi adamo amicitia auxilium toties.',
    unhelpful_votes: 88.0,
    updated_at: DateTime.iso8601('2025-09-07T15:25:08.504Z'),
    url: 'https://diligent-bandwidth.biz',
    verified_purchase: true
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.update_commerce_review(request: req)

unless res.commerce_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateCommerceReviewRequest](../../models/operations/updatecommercereviewrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateCommerceReviewResponse)](../../models/operations/updatecommercereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_commerce_saleschannel

Updates the CommerceSaleschannel identified by `id`. Provide the unified CommerceSaleschannel fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceSaleschannel" method="put" path="/commerce/{connection_id}/saleschannel/{id}" example="commerce_saleschannel" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCommerceSaleschannelRequest.new(
  commerce_saleschannel: Models::Shared::CommerceSaleschannel.new(
    collections: [],
    created_at: DateTime.iso8601('2021-12-12T06:19:55.421Z'),
    description: 'Utroque denuncio solutio.',
    id: '1defce6c-dd74-4625-b2d6-63ee3e86044a',
    is_active: false,
    metadata: [],
    slug: 'amiculum-congregatio-suspendo',
    updated_at: DateTime.iso8601('2025-02-10T09:55:14.724Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.commerce.update_commerce_saleschannel(request: req)

unless res.commerce_saleschannel.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::UpdateCommerceSaleschannelRequest](../../models/operations/updatecommercesaleschannelrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::UpdateCommerceSaleschannelResponse)](../../models/operations/updatecommercesaleschannelresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |