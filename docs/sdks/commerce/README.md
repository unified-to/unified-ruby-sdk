# Commerce
(*commerce*)

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
* [get_commerce_review](#get_commerce_review) - Retrieve a review
* [get_commerce_saleschannel](#get_commerce_saleschannel) - Retrieve a saleschannel
* [list_commerce_availabilities](#list_commerce_availabilities) - List all availabilities
* [list_commerce_collections](#list_commerce_collections) - List all collections
* [list_commerce_inventories](#list_commerce_inventories) - List all inventories
* [list_commerce_items](#list_commerce_items) - List all items
* [list_commerce_itemvariants](#list_commerce_itemvariants) - List all itemvariants
* [list_commerce_locations](#list_commerce_locations) - List all locations
* [list_commerce_reservations](#list_commerce_reservations) - List all reservations
* [list_commerce_reviews](#list_commerce_reviews) - List all reviews
* [list_commerce_saleschannels](#list_commerce_saleschannels) - List all saleschannels
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

Create a collection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceCollection" method="post" path="/commerce/{connection_id}/collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.commerce.create_commerce_collection(commerce_collection: Models::Shared::CommerceCollection.new(
  created_at: DateTime.iso8601('2023-07-14T00:42:54.742Z'),
  description: 'The Integrated leading edge website Cheese offers reliable performance and productive design',
  id: 'd19dc245-2512-4f6e-bfaa-31589f6bae73',
  is_active: true,
  is_featured: false,
  is_visible: false,
  item_metadata: [],
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Defungo adopto thorax.',
      height: 759.0,
      id: '7b78f7ca-9ff0-490f-ad46-9f7bb4fc2461',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '39c0330d-0063-42f9-8555-6108457b509d',
          slug: 'censura',
          value: 'toties',
        ),
      ],
      position: 80.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://loremflickr.com/1319/1257?lock=7280448425732025',
      width: 40.0,
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      id: '1552f8d6-90a1-4687-bf95-9914842f0908',
      slug: 'aetas',
      value: 'consuasor',
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
  updated_at: DateTime.iso8601('2025-03-09T22:50:47.900Z'),
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

Create an inventory

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceInventory" method="post" path="/commerce/{connection_id}/inventory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.commerce.create_commerce_inventory(commerce_inventory: Models::Shared::CommerceInventory.new(
  available: 337.0,
  updated_at: DateTime.iso8601('2025-11-12T08:31:44.281Z'),
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

res = s.commerce.create_commerce_item(commerce_item: Models::Shared::CommerceItem.new(
  collections: [],
  created_at: DateTime.iso8601('2019-06-21T20:16:18.628Z'),
  description: 'Vulnero ustulo abeo.',
  duration: 87.0,
  global_code: 'calamitas',
  id: '41d7eebd-d447-45fb-8b37-ede133592538',
  is_active: false,
  is_featured: true,
  is_taxable: true,
  is_visible: true,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Caterva eveniet acies candidus.',
      height: 663.0,
      id: 'b5d9f924-beaf-4c8b-a1c1-4b0a30f58906',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '0d81242f-a73d-44ee-9675-36c63bdf9605',
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
      id: '6783982c-bcf4-42e7-a8e4-50970c361f1a',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '4003197f-7efd-48f5-92a6-3d274fbb99d6',
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
      id: '956e98d7-c54f-47f8-a31f-c962db726e1a',
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
  updated_at: DateTime.iso8601('2022-04-15T15:31:50.670Z'),
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

res = s.commerce.create_commerce_itemvariant(commerce_itemvariant: Models::Shared::CommerceItemvariant.new(
  available_at: DateTime.iso8601('2022-02-02T16:10:33.503Z'),
  created_at: DateTime.iso8601('2022-01-20T13:49:12.968Z'),
  description: 'Featuring Helium-enhanced technology, our Chips offers unparalleled helpful performance',
  height: 52.0,
  id: '5c490591-d2a1-470c-a016-2a6bc92b5377',
  is_active: false,
  is_featured: false,
  is_visible: false,
  length: 94.0,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Calcar delibero cursim summisse.',
      height: 394.0,
      id: 'adbef15f-8a7d-4e18-9ef1-afe5f9510c49',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '1ccc71f9-b4b2-4a6b-a857-a85c5ebacefa',
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
      id: 'c4f98acb-c50f-45a8-abab-3ea6a74d9a59',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'd3334b35-1a0e-44c0-a048-8e40794de17c',
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
      id: '06ff2d54-be89-434e-a272-0cb2cfa18c70',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'nihil',
    ),
  ],
  name: 'Keyboard',
  options: [
    Models::Shared::CommerceItemOption.new(
      id: 'f889225a-cbca-42ae-b96c-aa0e18aabed0',
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
  updated_at: DateTime.iso8601('2025-06-09T21:37:46.891Z'),
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

## create_commerce_location

Create a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceLocation" method="post" path="/commerce/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.commerce.create_commerce_location(commerce_location: Models::Shared::CommerceLocation.new(
  address: Models::Shared::PropertyCommerceLocationAddress.new(
    address1: '29896 The Limes',
    city: 'New Kenny',
    country_code: 'US',
    postal_code: '14490-0609',
    region: 'Virginia',
    region_code: 'MS',
  ),
  categories: [],
  created_at: DateTime.iso8601('2022-12-29T04:15:21.195Z'),
  currency: 'XCD',
  description: 'Adsidue audentia.',
  id: '3d7eb4c9-224d-4192-909a-ffee9511a2d6',
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
      id: '81a94236-8cdf-4d10-b3f3-892e5a415dd9',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '369a99a4-0314-496e-b8fb-b6dd2cc284e0',
          slug: 'abutor',
          value: 'damno',
        ),
      ],
      position: 40.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/QVh7ViTV/3964/1567',
      width: 1.0,
    ),
  ],
  name: 'Olson - Mraz',
  price_level: '',
  rating: 0.0,
  review_count: 0.0,
  telephones: [
    Models::Shared::CommerceTelephone.new(
      telephone: '(872) 522-3201',
      type: Models::Shared::CommerceTelephoneType::OTHER,
    ),
    Models::Shared::CommerceTelephone.new(
      telephone: '(236) 274-2445',
      type: Models::Shared::CommerceTelephoneType::MOBILE,
    ),
  ],
  updated_at: DateTime.iso8601('2024-04-17T07:27:52.972Z'),
  web_url: 'https://chilly-edge.info',
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

Create a reservation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceReservation" method="post" path="/commerce/{connection_id}/reservation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.commerce.create_commerce_reservation(commerce_reservation: Models::Shared::CommerceReservation.new(
  created_at: DateTime.iso8601('2021-12-14T19:50:31.151Z'),
  end_at: DateTime.iso8601('2022-01-01T22:00:17.868Z'),
  guest_email: 'Sunny.Strosin77@yahoo.com',
  guest_name: 'Annette Franecki',
  guest_phone: '(990) 317-6213',
  id: 'ebe310d2-aa75-4663-97e2-e5c9e5fee0c2',
  item_name: 'Practical Ceramic Shoes',
  notes: 'Adsum textilis ipsum despecto.',
  size: 10.0,
  staff_name: 'Vickie Fahey',
  start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
  status: Models::Shared::CommerceReservationStatus::PENDING,
  updated_at: DateTime.iso8601('2023-01-01T17:14:42.158Z'),
  url: 'https://cluttered-pine.info/',
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

Create a review

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceReview" method="post" path="/commerce/{connection_id}/review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.commerce.create_commerce_review(commerce_review: Models::Shared::CommerceReview.new(
  author_avatar_url: 'https://picsum.photos/seed/ix4Br3LA/2245/1245',
  author_email: 'Cleve_Yundt@hotmail.com',
  author_location: 'ipsum',
  author_name: 'Marsha Krajcik',
  comments: [],
  content: 'Taedium thymum adipiscor amicitia cui.',
  created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
  helpful_votes: 26.0,
  id: 'fd7121be-a6f1-4bef-890d-b3f73f898271',
  is_featured: true,
  is_public: true,
  is_verified: false,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Adulescens.',
      height: 519.0,
      id: '6a607c5a-6142-4703-8c08-7d661df55128',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'ccd08727-6809-4e9b-a1a1-1e1531dfb2e3',
          slug: 'aggero',
          value: 'tero',
        ),
      ],
      position: 72.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://loremflickr.com/882/1004?lock=7448492654002422',
      width: 75.0,
    ),
    Models::Shared::CommerceItemMedia.new(
      alt: 'Pauci timidus sol comburo thema.',
      height: 297.0,
      id: '3cc7dc1e-c754-4709-a88c-5faff6c4dc9d',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'c92c2e0d-341a-4a81-a7ce-34e5fbf57e5e',
          slug: 'vito',
          value: 'cuppedia',
        ),
      ],
      position: 61.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/3QDZ8/1208/2171',
      width: 96.0,
    ),
    Models::Shared::CommerceItemMedia.new(
      alt: 'Cuppedia vestrum patruus.',
      height: 6.0,
      id: '25eb1945-d795-448f-ae76-6ec2af088afb',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'c9c7dfb8-968d-482c-b1a4-791818153194',
          slug: 'arbitro',
          value: 'villa',
        ),
      ],
      position: 60.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://picsum.photos/seed/ytybC/2616/710',
      width: 74.0,
    ),
  ],
  metadata: [],
  rating: 3.0,
  status: Models::Shared::CommerceReviewStatus::APPROVED,
  title: 'Coepi adamo amicitia auxilium toties.',
  unhelpful_votes: 49.0,
  updated_at: DateTime.iso8601('2025-08-13T01:35:58.102Z'),
  url: 'https://excitable-underneath.com',
  verified_purchase: false,
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

Create a saleschannel

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCommerceSaleschannel" method="post" path="/commerce/{connection_id}/saleschannel" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.commerce.create_commerce_saleschannel(commerce_saleschannel: Models::Shared::CommerceSaleschannel.new(
  collections: [],
  created_at: DateTime.iso8601('2021-12-12T06:19:55.421Z'),
  description: 'Utroque denuncio solutio.',
  id: 'bc1e136d-b105-40eb-941d-a1910163aec3',
  is_active: false,
  slug: 'amiculum-congregatio-suspendo',
  updated_at: DateTime.iso8601('2025-01-21T13:29:09.421Z'),
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

Retrieve a collection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceCollection" method="get" path="/commerce/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve an inventory

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceInventory" method="get" path="/commerce/{connection_id}/inventory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceLocation" method="get" path="/commerce/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a reservation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceReservation" method="get" path="/commerce/{connection_id}/reservation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

## get_commerce_review

Retrieve a review

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceReview" method="get" path="/commerce/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a saleschannel

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCommerceSaleschannel" method="get" path="/commerce/{connection_id}/saleschannel/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

## list_commerce_availabilities

List all availabilities

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceAvailabilities" method="get" path="/commerce/{connection_id}/availability" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceAvailabilitiesRequest.new(
  connection_id: '<id>',
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

List all collections

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceCollections" method="get" path="/commerce/{connection_id}/collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceCollectionsRequest.new(
  connection_id: '<id>',
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

List all inventories

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceInventories" method="get" path="/commerce/{connection_id}/inventory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceInventoriesRequest.new(
  connection_id: '<id>',
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

List all locations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceLocations" method="get" path="/commerce/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceLocationsRequest.new(
  connection_id: '<id>',
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

List all reservations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceReservations" method="get" path="/commerce/{connection_id}/reservation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceReservationsRequest.new(
  connection_id: '<id>',
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

## list_commerce_reviews

List all reviews

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceReviews" method="get" path="/commerce/{connection_id}/review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceReviewsRequest.new(
  connection_id: '<id>',
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

List all saleschannels

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceSaleschannels" method="get" path="/commerce/{connection_id}/saleschannel" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceSaleschannelsRequest.new(
  connection_id: '<id>',
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

## patch_commerce_collection

Update a collection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceCollection" method="patch" path="/commerce/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCommerceCollectionRequest.new(
  commerce_collection: Models::Shared::CommerceCollection.new(
    created_at: DateTime.iso8601('2023-07-14T00:42:54.742Z'),
    description: 'The Integrated leading edge website Cheese offers reliable performance and productive design',
    id: '2a5ad4ae-7bf5-422d-a470-8e0767ec5b84',
    is_active: true,
    is_featured: false,
    is_visible: false,
    item_metadata: [],
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Defungo adopto thorax.',
        height: 759.0,
        id: '9233a17b-44ef-42e5-84f1-231b50f57468',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'a7616476-a3d2-4907-bb89-9d06e406db90',
            slug: 'censura',
            value: 'toties',
          ),
        ],
        position: 80.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://loremflickr.com/1319/1257?lock=7280448425732025',
        width: 40.0,
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        id: '597478d6-ab79-473b-bd41-817f9dfaebc7',
        slug: 'aetas',
        value: 'consuasor',
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
    updated_at: DateTime.iso8601('2025-03-09T22:50:47.915Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update an inventory

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceInventory" method="patch" path="/commerce/{connection_id}/inventory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCommerceInventoryRequest.new(
  commerce_inventory: Models::Shared::CommerceInventory.new(
    available: 337.0,
    updated_at: DateTime.iso8601('2025-11-12T08:31:44.286Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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
    id: 'c8bf1dc0-b5a4-4c28-a8bd-60c5d56d7a88',
    is_active: false,
    is_featured: true,
    is_taxable: true,
    is_visible: true,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Caterva eveniet acies candidus.',
        height: 663.0,
        id: 'e342898e-b8ff-4270-ad55-91b834b0cf94',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '3396bd5d-1f0c-4687-88be-4eb978a9f097',
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
        id: '21a77d36-4126-4aac-b304-9557a09f9167',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'c2efc8e7-3cc7-4873-8959-ca90b5198730',
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
        id: '91a1b635-18dc-40b0-99ba-d329dd0179ca',
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
    updated_at: DateTime.iso8601('2022-04-15T15:31:50.680Z'),
    vendor_name: 'Mayer - Flatley',
    weight: 22.0,
    weight_unit: Models::Shared::WeightUnit::KG,
  ),
  connection_id: '<id>',
  id: '<id>',
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
    id: '1e16a20d-5b27-4741-9336-be01a198bdf4',
    is_active: false,
    is_featured: false,
    is_visible: false,
    length: 94.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Calcar delibero cursim summisse.',
        height: 394.0,
        id: '63a8cf91-9c6f-44cf-8407-0d091259559d',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '4d748301-86bc-4b80-a72a-df88546c9736',
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
        id: 'a7773b2c-5552-4ffe-b159-ae2a43fd49ca',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '60134ea9-6179-4a4a-b2d3-9d1de0c36de0',
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
        id: '8a751d96-7b45-4f96-b698-b05f80be5677',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'nihil',
      ),
    ],
    name: 'Keyboard',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: '2909b676-0d4a-4229-bc9a-1fa00cffb292',
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
    updated_at: DateTime.iso8601('2025-06-09T21:37:46.912Z'),
    weight: 61.0,
    weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
    width: 26.0,
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceLocation" method="patch" path="/commerce/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCommerceLocationRequest.new(
  commerce_location: Models::Shared::CommerceLocation.new(
    address: Models::Shared::PropertyCommerceLocationAddress.new(
      address1: '29896 The Limes',
      city: 'New Kenny',
      country_code: 'US',
      postal_code: '14490-0609',
      region: 'Virginia',
      region_code: 'MS',
    ),
    categories: [],
    created_at: DateTime.iso8601('2022-12-29T04:15:21.195Z'),
    currency: 'XCD',
    description: 'Adsidue audentia.',
    id: '807edb13-f876-457a-98dd-258282cc6997',
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
        id: '4c1f73b2-fee9-4130-a73e-8e0f227a6cf0',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '0a9a7714-e2ce-49e5-9936-149141d0e05f',
            slug: 'abutor',
            value: 'damno',
          ),
        ],
        position: 40.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/QVh7ViTV/3964/1567',
        width: 1.0,
      ),
    ],
    name: 'Olson - Mraz',
    price_level: '',
    rating: 0.0,
    review_count: 0.0,
    telephones: [
      Models::Shared::CommerceTelephone.new(
        telephone: '(872) 522-3201',
        type: Models::Shared::CommerceTelephoneType::OTHER,
      ),
      Models::Shared::CommerceTelephone.new(
        telephone: '(236) 274-2445',
        type: Models::Shared::CommerceTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2024-04-17T07:27:52.982Z'),
    web_url: 'https://chilly-edge.info',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a reservation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceReservation" method="patch" path="/commerce/{connection_id}/reservation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCommerceReservationRequest.new(
  commerce_reservation: Models::Shared::CommerceReservation.new(
    created_at: DateTime.iso8601('2021-12-14T19:50:31.151Z'),
    end_at: DateTime.iso8601('2022-01-01T22:00:17.868Z'),
    guest_email: 'Sunny.Strosin77@yahoo.com',
    guest_name: 'Annette Franecki',
    guest_phone: '(990) 317-6213',
    id: 'de4c485b-ef42-41c2-ac84-7342c0b43d27',
    item_name: 'Practical Ceramic Shoes',
    notes: 'Adsum textilis ipsum despecto.',
    size: 10.0,
    staff_name: 'Vickie Fahey',
    start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
    status: Models::Shared::CommerceReservationStatus::PENDING,
    updated_at: DateTime.iso8601('2023-01-01T17:14:42.160Z'),
    url: 'https://cluttered-pine.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a review

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceReview" method="patch" path="/commerce/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCommerceReviewRequest.new(
  commerce_review: Models::Shared::CommerceReview.new(
    author_avatar_url: 'https://picsum.photos/seed/ix4Br3LA/2245/1245',
    author_email: 'Cleve_Yundt@hotmail.com',
    author_location: 'ipsum',
    author_name: 'Marsha Krajcik',
    comments: [],
    content: 'Taedium thymum adipiscor amicitia cui.',
    created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
    helpful_votes: 26.0,
    id: '3f58fd9a-75ea-469b-b4d7-07914996172b',
    is_featured: true,
    is_public: true,
    is_verified: false,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Adulescens.',
        height: 519.0,
        id: 'b5bf3f6b-fe05-4022-8d58-0a429cc56d29',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '61dba2b4-7fc3-48a5-9ed8-e41f1efb58a5',
            slug: 'aggero',
            value: 'tero',
          ),
        ],
        position: 72.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://loremflickr.com/882/1004?lock=7448492654002422',
        width: 75.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Pauci timidus sol comburo thema.',
        height: 297.0,
        id: '9986cb81-76aa-4a52-abf1-9425fb0984bd',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '6fd4a501-e33b-4fd9-a4e5-8f3695fa0c5a',
            slug: 'vito',
            value: 'cuppedia',
          ),
        ],
        position: 61.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/3QDZ8/1208/2171',
        width: 96.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Cuppedia vestrum patruus.',
        height: 6.0,
        id: '2980102d-91d1-4f60-89c1-e7336cbc2729',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'd71d1f64-bbad-4f2b-9022-d71f2db218d8',
            slug: 'arbitro',
            value: 'villa',
          ),
        ],
        position: 60.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/ytybC/2616/710',
        width: 74.0,
      ),
    ],
    metadata: [],
    rating: 3.0,
    status: Models::Shared::CommerceReviewStatus::APPROVED,
    title: 'Coepi adamo amicitia auxilium toties.',
    unhelpful_votes: 49.0,
    updated_at: DateTime.iso8601('2025-08-13T01:35:58.134Z'),
    url: 'https://excitable-underneath.com',
    verified_purchase: false,
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a saleschannel

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCommerceSaleschannel" method="patch" path="/commerce/{connection_id}/saleschannel/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCommerceSaleschannelRequest.new(
  commerce_saleschannel: Models::Shared::CommerceSaleschannel.new(
    collections: [],
    created_at: DateTime.iso8601('2021-12-12T06:19:55.421Z'),
    description: 'Utroque denuncio solutio.',
    id: '7a0cc0ec-0370-4559-9d24-cc3399fbfe68',
    is_active: false,
    slug: 'amiculum-congregatio-suspendo',
    updated_at: DateTime.iso8601('2025-01-21T13:29:09.425Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Remove a collection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceCollection" method="delete" path="/commerce/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove an inventory

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceInventory" method="delete" path="/commerce/{connection_id}/inventory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceLocation" method="delete" path="/commerce/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a reservation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceReservation" method="delete" path="/commerce/{connection_id}/reservation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a review

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceReview" method="delete" path="/commerce/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a saleschannel

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCommerceSaleschannel" method="delete" path="/commerce/{connection_id}/saleschannel/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Update a collection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceCollection" method="put" path="/commerce/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCommerceCollectionRequest.new(
  commerce_collection: Models::Shared::CommerceCollection.new(
    created_at: DateTime.iso8601('2023-07-14T00:42:54.742Z'),
    description: 'The Integrated leading edge website Cheese offers reliable performance and productive design',
    id: '2a5ad4ae-7bf5-422d-a470-8e0767ec5b84',
    is_active: true,
    is_featured: false,
    is_visible: false,
    item_metadata: [],
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Defungo adopto thorax.',
        height: 759.0,
        id: '9233a17b-44ef-42e5-84f1-231b50f57468',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'a7616476-a3d2-4907-bb89-9d06e406db90',
            slug: 'censura',
            value: 'toties',
          ),
        ],
        position: 80.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://loremflickr.com/1319/1257?lock=7280448425732025',
        width: 40.0,
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        id: '597478d6-ab79-473b-bd41-817f9dfaebc7',
        slug: 'aetas',
        value: 'consuasor',
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
    updated_at: DateTime.iso8601('2025-03-09T22:50:47.915Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update an inventory

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceInventory" method="put" path="/commerce/{connection_id}/inventory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCommerceInventoryRequest.new(
  commerce_inventory: Models::Shared::CommerceInventory.new(
    available: 337.0,
    updated_at: DateTime.iso8601('2025-11-12T08:31:44.286Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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
    id: 'c8bf1dc0-b5a4-4c28-a8bd-60c5d56d7a88',
    is_active: false,
    is_featured: true,
    is_taxable: true,
    is_visible: true,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Caterva eveniet acies candidus.',
        height: 663.0,
        id: 'e342898e-b8ff-4270-ad55-91b834b0cf94',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '3396bd5d-1f0c-4687-88be-4eb978a9f097',
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
        id: '21a77d36-4126-4aac-b304-9557a09f9167',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'c2efc8e7-3cc7-4873-8959-ca90b5198730',
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
        id: '91a1b635-18dc-40b0-99ba-d329dd0179ca',
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
    updated_at: DateTime.iso8601('2022-04-15T15:31:50.680Z'),
    vendor_name: 'Mayer - Flatley',
    weight: 22.0,
    weight_unit: Models::Shared::WeightUnit::KG,
  ),
  connection_id: '<id>',
  id: '<id>',
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
    id: '1e16a20d-5b27-4741-9336-be01a198bdf4',
    is_active: false,
    is_featured: false,
    is_visible: false,
    length: 94.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Calcar delibero cursim summisse.',
        height: 394.0,
        id: '63a8cf91-9c6f-44cf-8407-0d091259559d',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '4d748301-86bc-4b80-a72a-df88546c9736',
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
        id: 'a7773b2c-5552-4ffe-b159-ae2a43fd49ca',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '60134ea9-6179-4a4a-b2d3-9d1de0c36de0',
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
        id: '8a751d96-7b45-4f96-b698-b05f80be5677',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'nihil',
      ),
    ],
    name: 'Keyboard',
    options: [
      Models::Shared::CommerceItemOption.new(
        id: '2909b676-0d4a-4229-bc9a-1fa00cffb292',
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
    updated_at: DateTime.iso8601('2025-06-09T21:37:46.912Z'),
    weight: 61.0,
    weight_unit: Models::Shared::CommerceItemvariantWeightUnit::OZ,
    width: 26.0,
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a location

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceLocation" method="put" path="/commerce/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCommerceLocationRequest.new(
  commerce_location: Models::Shared::CommerceLocation.new(
    address: Models::Shared::PropertyCommerceLocationAddress.new(
      address1: '29896 The Limes',
      city: 'New Kenny',
      country_code: 'US',
      postal_code: '14490-0609',
      region: 'Virginia',
      region_code: 'MS',
    ),
    categories: [],
    created_at: DateTime.iso8601('2022-12-29T04:15:21.195Z'),
    currency: 'XCD',
    description: 'Adsidue audentia.',
    id: '807edb13-f876-457a-98dd-258282cc6997',
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
        id: '4c1f73b2-fee9-4130-a73e-8e0f227a6cf0',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '0a9a7714-e2ce-49e5-9936-149141d0e05f',
            slug: 'abutor',
            value: 'damno',
          ),
        ],
        position: 40.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/QVh7ViTV/3964/1567',
        width: 1.0,
      ),
    ],
    name: 'Olson - Mraz',
    price_level: '',
    rating: 0.0,
    review_count: 0.0,
    telephones: [
      Models::Shared::CommerceTelephone.new(
        telephone: '(872) 522-3201',
        type: Models::Shared::CommerceTelephoneType::OTHER,
      ),
      Models::Shared::CommerceTelephone.new(
        telephone: '(236) 274-2445',
        type: Models::Shared::CommerceTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2024-04-17T07:27:52.982Z'),
    web_url: 'https://chilly-edge.info',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a reservation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceReservation" method="put" path="/commerce/{connection_id}/reservation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCommerceReservationRequest.new(
  commerce_reservation: Models::Shared::CommerceReservation.new(
    created_at: DateTime.iso8601('2021-12-14T19:50:31.151Z'),
    end_at: DateTime.iso8601('2022-01-01T22:00:17.868Z'),
    guest_email: 'Sunny.Strosin77@yahoo.com',
    guest_name: 'Annette Franecki',
    guest_phone: '(990) 317-6213',
    id: 'de4c485b-ef42-41c2-ac84-7342c0b43d27',
    item_name: 'Practical Ceramic Shoes',
    notes: 'Adsum textilis ipsum despecto.',
    size: 10.0,
    staff_name: 'Vickie Fahey',
    start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
    status: Models::Shared::CommerceReservationStatus::PENDING,
    updated_at: DateTime.iso8601('2023-01-01T17:14:42.160Z'),
    url: 'https://cluttered-pine.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a review

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceReview" method="put" path="/commerce/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCommerceReviewRequest.new(
  commerce_review: Models::Shared::CommerceReview.new(
    author_avatar_url: 'https://picsum.photos/seed/ix4Br3LA/2245/1245',
    author_email: 'Cleve_Yundt@hotmail.com',
    author_location: 'ipsum',
    author_name: 'Marsha Krajcik',
    comments: [],
    content: 'Taedium thymum adipiscor amicitia cui.',
    created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
    helpful_votes: 26.0,
    id: '3f58fd9a-75ea-469b-b4d7-07914996172b',
    is_featured: true,
    is_public: true,
    is_verified: false,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Adulescens.',
        height: 519.0,
        id: 'b5bf3f6b-fe05-4022-8d58-0a429cc56d29',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '61dba2b4-7fc3-48a5-9ed8-e41f1efb58a5',
            slug: 'aggero',
            value: 'tero',
          ),
        ],
        position: 72.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://loremflickr.com/882/1004?lock=7448492654002422',
        width: 75.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Pauci timidus sol comburo thema.',
        height: 297.0,
        id: '9986cb81-76aa-4a52-abf1-9425fb0984bd',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '6fd4a501-e33b-4fd9-a4e5-8f3695fa0c5a',
            slug: 'vito',
            value: 'cuppedia',
          ),
        ],
        position: 61.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/3QDZ8/1208/2171',
        width: 96.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Cuppedia vestrum patruus.',
        height: 6.0,
        id: '2980102d-91d1-4f60-89c1-e7336cbc2729',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'd71d1f64-bbad-4f2b-9022-d71f2db218d8',
            slug: 'arbitro',
            value: 'villa',
          ),
        ],
        position: 60.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/ytybC/2616/710',
        width: 74.0,
      ),
    ],
    metadata: [],
    rating: 3.0,
    status: Models::Shared::CommerceReviewStatus::APPROVED,
    title: 'Coepi adamo amicitia auxilium toties.',
    unhelpful_votes: 49.0,
    updated_at: DateTime.iso8601('2025-08-13T01:35:58.134Z'),
    url: 'https://excitable-underneath.com',
    verified_purchase: false,
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a saleschannel

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCommerceSaleschannel" method="put" path="/commerce/{connection_id}/saleschannel/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCommerceSaleschannelRequest.new(
  commerce_saleschannel: Models::Shared::CommerceSaleschannel.new(
    collections: [],
    created_at: DateTime.iso8601('2021-12-12T06:19:55.421Z'),
    description: 'Utroque denuncio solutio.',
    id: '7a0cc0ec-0370-4559-9d24-cc3399fbfe68',
    is_active: false,
    slug: 'amiculum-congregatio-suspendo',
    updated_at: DateTime.iso8601('2025-01-21T13:29:09.425Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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