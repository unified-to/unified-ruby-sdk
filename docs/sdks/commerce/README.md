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

Creates a CommerceCollection. Provide the unified CommerceCollection fields in the request body; they are mapped to the provider's API. Returns the created CommerceCollection.

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
  id: '70675854-4d1f-4735-a806-026a828457f6',
  is_active: true,
  is_featured: false,
  is_visible: false,
  item_metadata: [],
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Defungo adopto thorax.',
      height: 759.0,
      id: '9f2f9fc7-a35e-40e4-893f-6df582960901',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'df3fb925-f816-4278-863d-c4f4d48c0070',
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
      id: '1c7d1b9a-f6aa-4394-a93f-04eaa54eba8c',
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
  updated_at: DateTime.iso8601('2025-03-17T12:23:11.605Z'),
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
  id: '616b78e5-a64c-4dd4-9847-8124ba15ebee',
  metadata: [],
  updated_at: DateTime.iso8601('2025-11-24T07:03:35.595Z'),
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
  description: 'Decretum vulnero ustulo abeo.',
  duration: 104.0,
  global_code: '978-0-85270-680-0',
  id: 'c56c85e5-4f96-4204-bed8-647eb94c6c40',
  is_active: false,
  is_featured: false,
  is_taxable: true,
  is_visible: true,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Caterva eveniet acies candidus.',
      height: 876.0,
      id: '576eb0db-11fd-42fe-8be4-a37bce2c7854',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '08d1076c-b2f9-4ec3-bdca-960ae68a8cd0',
          slug: 'doloremque',
          value: 'allatus',
        ),
      ],
      position: 21.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://picsum.photos/seed/v73y0uzyK/3001/972',
      width: 67.0,
    ),
    Models::Shared::CommerceItemMedia.new(
      alt: 'Comedo.',
      height: 651.0,
      id: 'c0c39284-4064-4a89-98bd-e4b4916686fa',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: 'ac0b67d0-c9f3-4944-8468-24410f546e6c',
          slug: 'bis',
          value: 'somniculosus',
        ),
      ],
      position: 51.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/Ao4iatfO/771/3906',
      width: 3.0,
    ),
  ],
  metadata: [
    Models::Shared::CommerceMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CommerceMetadataFormat::TEXT,
      id: '96f3dddb-a3ca-464e-adda-5ac057c63e47',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'abstergo',
    ),
  ],
  name: 'Handcrafted Rubber Tuna',
  prices: [
    Models::Shared::CommerceItemPrice.new(
      currency: 'USD',
      price: 78.11,
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
  updated_at: DateTime.iso8601('2022-04-21T08:39:00.774Z'),
  vendor_name: 'Mayer - Flatley',
  weight: 37.0,
  weight_unit: Models::Shared::WeightUnit::OZ,
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

## create_commerce_location

Creates a CommerceLocation. Provide the unified CommerceLocation fields in the request body; they are mapped to the provider's API. Returns the created CommerceLocation.

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
  id: 'b789cdaa-fc99-4912-8cd6-48dda7445490',
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
      id: '1ab7ad3e-9c8f-4cd1-9567-e6e271a5ca68',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '962d501f-a16d-4186-83f0-034a64af76fc',
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
  metadata: [],
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
  updated_at: DateTime.iso8601('2024-04-22T09:44:28.532Z'),
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

Creates a CommerceReservation. Provide the unified CommerceReservation fields in the request body; they are mapped to the provider's API. Returns the created CommerceReservation.

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
  guest_email: 'julien.bartoletti@icloud.com',
  guest_name: 'Julien Bartoletti',
  guest_phone: '(728) 596-2620',
  id: '8ff3d6ff-2dd5-4c5d-89d8-75f4e62724b6',
  metadata: [],
  notes: 'Adsum textilis ipsum despecto.',
  size: 10.0,
  start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
  status: Models::Shared::CommerceReservationStatus::PENDING,
  updated_at: DateTime.iso8601('2023-01-04T22:33:29.282Z'),
  url: 'https://expensive-gift.org',
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
  author_avatar_url: 'https://loremflickr.com/7/2660?lock=4279109054086693',
  author_email: 'nyasia.macgyver@hotmail.com',
  author_location: 'denique',
  author_name: 'Nyasia MacGyver',
  comments: [],
  content: 'Taedium thymum adipiscor amicitia cui.',
  created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
  helpful_votes: 66.0,
  id: 'f942952b-aae4-4c33-9502-b723aad34d11',
  is_featured: false,
  is_public: true,
  is_verified: false,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Desipio carpo sol laudantium colo.',
      height: 749.0,
      id: 'd2bed21f-72f7-44d2-8c3c-0fcb31401f67',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '5b669228-bf15-4413-a9d9-29235a2658cc',
          slug: 'textor',
          value: 'quos',
        ),
      ],
      position: 29.0,
      type: Models::Shared::CommerceItemMediaType::VIDEO,
      url: 'https://loremflickr.com/196/2041?lock=5845524773114807',
      width: 72.0,
    ),
    Models::Shared::CommerceItemMedia.new(
      alt: 'Adopto teneo numquam.',
      height: 957.0,
      id: '5cd3503f-4cf2-44e8-a7f3-64d621a90152',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '831fcbae-2881-4ead-9faa-6fb32ffc2b82',
          slug: 'bos',
          value: 'casso',
        ),
      ],
      position: 69.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://loremflickr.com/1178/2175?lock=5466640101053206',
      width: 61.0,
    ),
  ],
  metadata: [],
  rating: 3.0,
  status: Models::Shared::CommerceReviewStatus::APPROVED,
  title: 'Coepi adamo amicitia auxilium toties.',
  unhelpful_votes: 88.0,
  updated_at: DateTime.iso8601('2025-08-25T08:46:16.762Z'),
  url: 'https://diligent-bandwidth.biz',
  verified_purchase: true,
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
  id: 'f1b1a097-b82c-40f8-93ad-8539f4c29203',
  is_active: false,
  metadata: [],
  slug: 'amiculum-congregatio-suspendo',
  updated_at: DateTime.iso8601('2025-01-31T02:35:33.396Z'),
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

Retrieves a single CommerceInventory by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Retrieves a single CommerceItem by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Retrieves a single CommerceReservation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Retrieves a single CommerceReview by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Retrieves a single CommerceSaleschannel by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Returns a list of CommerceAvailabilities. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Returns a list of CommerceCollections. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Returns a list of CommerceInventories. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Returns a list of CommerceItems. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Returns a list of CommerceReservations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Returns a list of CommerceReviews. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Returns a list of CommerceSaleschannels. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Updates the CommerceCollection identified by `id`. Provide the unified CommerceCollection fields to change in the request body.

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
    id: '11283b30-3da7-4831-9fbb-e0b0221609bb',
    is_active: true,
    is_featured: false,
    is_visible: false,
    item_metadata: [],
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Defungo adopto thorax.',
        height: 759.0,
        id: '8585bce9-9470-4bfa-a0c3-561e42c141b2',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '7264e62c-93d1-41d9-857e-7c70515f2bd2',
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
        id: 'e26eff40-820c-44a0-b17f-e904062f2060',
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
    updated_at: DateTime.iso8601('2025-03-17T12:23:11.625Z'),
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

Updates the CommerceInventory identified by `id`. Provide the unified CommerceInventory fields to change in the request body.

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
    id: 'bd807e41-cdb5-498d-8bfe-7ac1558ba3c1',
    metadata: [],
    updated_at: DateTime.iso8601('2025-11-24T07:03:35.607Z'),
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

Updates the CommerceItem identified by `id`. Provide the unified CommerceItem fields to change in the request body.

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
    description: 'Decretum vulnero ustulo abeo.',
    duration: 104.0,
    global_code: '978-0-85270-680-0',
    id: '08b1cf01-fb61-4139-bfba-b409f528c49f',
    is_active: false,
    is_featured: false,
    is_taxable: true,
    is_visible: true,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Caterva eveniet acies candidus.',
        height: 876.0,
        id: '60054643-a034-4ad3-bbd5-0c893e9c7047',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '687c53fb-be53-4e8d-8337-606109f2ab37',
            slug: 'doloremque',
            value: 'allatus',
          ),
        ],
        position: 21.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/v73y0uzyK/3001/972',
        width: 67.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Comedo.',
        height: 651.0,
        id: 'be97c586-66f3-43db-aa10-c46eeaa9d0c4',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'e825ab5b-8de2-425a-9f8d-69a9d52b28e5',
            slug: 'bis',
            value: 'somniculosus',
          ),
        ],
        position: 51.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/Ao4iatfO/771/3906',
        width: 3.0,
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '8b5c77eb-1ff2-4dc0-bafc-707384b605e0',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'abstergo',
      ),
    ],
    name: 'Handcrafted Rubber Tuna',
    prices: [
      Models::Shared::CommerceItemPrice.new(
        currency: 'USD',
        price: 78.11,
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
    updated_at: DateTime.iso8601('2022-04-21T08:39:00.795Z'),
    vendor_name: 'Mayer - Flatley',
    weight: 37.0,
    weight_unit: Models::Shared::WeightUnit::OZ,
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
    id: '3aa6ff45-6917-4a29-85c1-cf7aebbb84af',
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
        id: 'ad93b150-9898-449c-a19a-34d8761580be',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'a00dbbf0-0c2e-41c7-9e80-f59496f772d0',
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
    metadata: [],
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
    updated_at: DateTime.iso8601('2024-04-22T09:44:28.548Z'),
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

Updates the CommerceReservation identified by `id`. Provide the unified CommerceReservation fields to change in the request body.

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
    guest_email: 'julien.bartoletti@icloud.com',
    guest_name: 'Julien Bartoletti',
    guest_phone: '(728) 596-2620',
    id: '6632cce6-6893-4694-955f-6c48a58f211e',
    metadata: [],
    notes: 'Adsum textilis ipsum despecto.',
    size: 10.0,
    start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
    status: Models::Shared::CommerceReservationStatus::PENDING,
    updated_at: DateTime.iso8601('2023-01-04T22:33:29.288Z'),
    url: 'https://expensive-gift.org',
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

Updates the CommerceReview identified by `id`. Provide the unified CommerceReview fields to change in the request body.

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
    author_avatar_url: 'https://loremflickr.com/7/2660?lock=4279109054086693',
    author_email: 'nyasia.macgyver@hotmail.com',
    author_location: 'denique',
    author_name: 'Nyasia MacGyver',
    comments: [],
    content: 'Taedium thymum adipiscor amicitia cui.',
    created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
    helpful_votes: 66.0,
    id: '826fb264-1807-48fd-abed-4f0761fab63d',
    is_featured: false,
    is_public: true,
    is_verified: false,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Desipio carpo sol laudantium colo.',
        height: 749.0,
        id: 'e1cbaaab-7534-461e-8a8c-6b4c14dc53e2',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'b3a8d084-bc55-41f9-9558-a476fdd4d1f5',
            slug: 'textor',
            value: 'quos',
          ),
        ],
        position: 29.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://loremflickr.com/196/2041?lock=5845524773114807',
        width: 72.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Adopto teneo numquam.',
        height: 957.0,
        id: 'f6feda4f-a7db-402b-adc3-f1c0f96c73d7',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '09260191-58fd-4833-938d-735be93bdada',
            slug: 'bos',
            value: 'casso',
          ),
        ],
        position: 69.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://loremflickr.com/1178/2175?lock=5466640101053206',
        width: 61.0,
      ),
    ],
    metadata: [],
    rating: 3.0,
    status: Models::Shared::CommerceReviewStatus::APPROVED,
    title: 'Coepi adamo amicitia auxilium toties.',
    unhelpful_votes: 88.0,
    updated_at: DateTime.iso8601('2025-08-25T08:46:16.806Z'),
    url: 'https://diligent-bandwidth.biz',
    verified_purchase: true,
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

Updates the CommerceSaleschannel identified by `id`. Provide the unified CommerceSaleschannel fields to change in the request body.

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
    id: '8d478109-f211-4419-b47c-615f9d801118',
    is_active: false,
    metadata: [],
    slug: 'amiculum-congregatio-suspendo',
    updated_at: DateTime.iso8601('2025-01-31T02:35:33.407Z'),
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

Deletes the CommerceCollection identified by `id`.

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

Deletes the CommerceInventory identified by `id`.

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

Deletes the CommerceItem identified by `id`.

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

Deletes the CommerceReservation identified by `id`.

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

Deletes the CommerceReview identified by `id`.

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

Deletes the CommerceSaleschannel identified by `id`.

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

Updates the CommerceCollection identified by `id`. Provide the unified CommerceCollection fields to change in the request body.

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
    id: '11283b30-3da7-4831-9fbb-e0b0221609bb',
    is_active: true,
    is_featured: false,
    is_visible: false,
    item_metadata: [],
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Defungo adopto thorax.',
        height: 759.0,
        id: '8585bce9-9470-4bfa-a0c3-561e42c141b2',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '7264e62c-93d1-41d9-857e-7c70515f2bd2',
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
        id: 'e26eff40-820c-44a0-b17f-e904062f2060',
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
    updated_at: DateTime.iso8601('2025-03-17T12:23:11.625Z'),
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

Updates the CommerceInventory identified by `id`. Provide the unified CommerceInventory fields to change in the request body.

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
    id: 'bd807e41-cdb5-498d-8bfe-7ac1558ba3c1',
    metadata: [],
    updated_at: DateTime.iso8601('2025-11-24T07:03:35.607Z'),
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

Updates the CommerceItem identified by `id`. Provide the unified CommerceItem fields to change in the request body.

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
    description: 'Decretum vulnero ustulo abeo.',
    duration: 104.0,
    global_code: '978-0-85270-680-0',
    id: '08b1cf01-fb61-4139-bfba-b409f528c49f',
    is_active: false,
    is_featured: false,
    is_taxable: true,
    is_visible: true,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Caterva eveniet acies candidus.',
        height: 876.0,
        id: '60054643-a034-4ad3-bbd5-0c893e9c7047',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '687c53fb-be53-4e8d-8337-606109f2ab37',
            slug: 'doloremque',
            value: 'allatus',
          ),
        ],
        position: 21.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://picsum.photos/seed/v73y0uzyK/3001/972',
        width: 67.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Comedo.',
        height: 651.0,
        id: 'be97c586-66f3-43db-aa10-c46eeaa9d0c4',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'e825ab5b-8de2-425a-9f8d-69a9d52b28e5',
            slug: 'bis',
            value: 'somniculosus',
          ),
        ],
        position: 51.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/Ao4iatfO/771/3906',
        width: 3.0,
      ),
    ],
    metadata: [
      Models::Shared::CommerceMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CommerceMetadataFormat::TEXT,
        id: '8b5c77eb-1ff2-4dc0-bafc-707384b605e0',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'abstergo',
      ),
    ],
    name: 'Handcrafted Rubber Tuna',
    prices: [
      Models::Shared::CommerceItemPrice.new(
        currency: 'USD',
        price: 78.11,
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
    updated_at: DateTime.iso8601('2022-04-21T08:39:00.795Z'),
    vendor_name: 'Mayer - Flatley',
    weight: 37.0,
    weight_unit: Models::Shared::WeightUnit::OZ,
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
    id: '3aa6ff45-6917-4a29-85c1-cf7aebbb84af',
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
        id: 'ad93b150-9898-449c-a19a-34d8761580be',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'a00dbbf0-0c2e-41c7-9e80-f59496f772d0',
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
    metadata: [],
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
    updated_at: DateTime.iso8601('2024-04-22T09:44:28.548Z'),
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

Updates the CommerceReservation identified by `id`. Provide the unified CommerceReservation fields to change in the request body.

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
    guest_email: 'julien.bartoletti@icloud.com',
    guest_name: 'Julien Bartoletti',
    guest_phone: '(728) 596-2620',
    id: '6632cce6-6893-4694-955f-6c48a58f211e',
    metadata: [],
    notes: 'Adsum textilis ipsum despecto.',
    size: 10.0,
    start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
    status: Models::Shared::CommerceReservationStatus::PENDING,
    updated_at: DateTime.iso8601('2023-01-04T22:33:29.288Z'),
    url: 'https://expensive-gift.org',
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

Updates the CommerceReview identified by `id`. Provide the unified CommerceReview fields to change in the request body.

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
    author_avatar_url: 'https://loremflickr.com/7/2660?lock=4279109054086693',
    author_email: 'nyasia.macgyver@hotmail.com',
    author_location: 'denique',
    author_name: 'Nyasia MacGyver',
    comments: [],
    content: 'Taedium thymum adipiscor amicitia cui.',
    created_at: DateTime.iso8601('2019-12-12T18:10:22.988Z'),
    helpful_votes: 66.0,
    id: '826fb264-1807-48fd-abed-4f0761fab63d',
    is_featured: false,
    is_public: true,
    is_verified: false,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Desipio carpo sol laudantium colo.',
        height: 749.0,
        id: 'e1cbaaab-7534-461e-8a8c-6b4c14dc53e2',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: 'b3a8d084-bc55-41f9-9558-a476fdd4d1f5',
            slug: 'textor',
            value: 'quos',
          ),
        ],
        position: 29.0,
        type: Models::Shared::CommerceItemMediaType::VIDEO,
        url: 'https://loremflickr.com/196/2041?lock=5845524773114807',
        width: 72.0,
      ),
      Models::Shared::CommerceItemMedia.new(
        alt: 'Adopto teneo numquam.',
        height: 957.0,
        id: 'f6feda4f-a7db-402b-adc3-f1c0f96c73d7',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '09260191-58fd-4833-938d-735be93bdada',
            slug: 'bos',
            value: 'casso',
          ),
        ],
        position: 69.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://loremflickr.com/1178/2175?lock=5466640101053206',
        width: 61.0,
      ),
    ],
    metadata: [],
    rating: 3.0,
    status: Models::Shared::CommerceReviewStatus::APPROVED,
    title: 'Coepi adamo amicitia auxilium toties.',
    unhelpful_votes: 88.0,
    updated_at: DateTime.iso8601('2025-08-25T08:46:16.806Z'),
    url: 'https://diligent-bandwidth.biz',
    verified_purchase: true,
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

Updates the CommerceSaleschannel identified by `id`. Provide the unified CommerceSaleschannel fields to change in the request body.

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
    id: '8d478109-f211-4419-b47c-615f9d801118',
    is_active: false,
    metadata: [],
    slug: 'amiculum-congregatio-suspendo',
    updated_at: DateTime.iso8601('2025-01-31T02:35:33.407Z'),
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