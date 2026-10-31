# Listing
(*listing*)

## Overview

### Available Operations

* [create_property_listing](#create_property_listing) - Create a listing
* [get_property_listing](#get_property_listing) - Retrieve a listing
* [list_property_listings](#list_property_listings) - List all listings
* [patch_property_listing](#patch_property_listing) - Update a listing
* [remove_property_listing](#remove_property_listing) - Remove a listing
* [update_property_listing](#update_property_listing) - Update a listing

## create_property_listing

Creates a PropertyListing. Provide the unified PropertyListing fields in the request body; they are mapped to the provider's API. Returns the created PropertyListing.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPropertyListing" method="post" path="/property/{connection_id}/listing" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.listing.create_property_listing(property_listing: Models::Shared::PropertyListing.new(
  address: Models::Shared::PropertyPropertyListingAddress.new(
    address1: '9262 Bramley Close',
    city: 'New Andrewshire',
    country: 'United States',
    country_code: 'US',
    postal_code: '53615-4664',
    region: 'Nebraska',
    region_code: 'IL',
  ),
  amenities: [
    'Wifi',
    'Kitchen',
    'Free parking',
  ],
  bathrooms: 1.0,
  bedrooms: 4.0,
  beds: 8.0,
  channels: [
    Models::Shared::PropertyChannel.new(
      name: 'Booking.com',
      web_url: 'https://frightened-hyphenation.net/',
    ),
  ],
  check_in_end_time: '22:00',
  check_in_start_time: '15:00',
  check_out_time: '11:00',
  cleaning_fee_amount: 134.0,
  created_at: DateTime.iso8601('2021-01-08T09:27:35.485Z'),
  currency: 'USD',
  description: 'Cuius deputo cruentus demoror censura caveo sponte statim vespillo cursim. Arbitro barba summopere. Curto vulticulus comparo surgo vociferor carmen deputo defluo.',
  house_rules: 'No smoking. No parties or events.',
  id: 'bc6b7c0e-bcec-46b9-9f28-41ae9a1d41fb',
  image_urls: [
    'https://loremflickr.com/23/1328?lock=5798241296161663',
    'https://loremflickr.com/12/1312?lock=6354590363728966',
  ],
  latitude: -5.4_327,
  longitude: 98.9_045,
  max_nights: 15.0,
  max_occupancy: 5.0,
  metadata: [],
  min_nights: 1.0,
  name: 'accurate Loft',
  rating: 4.9,
  review_count: 343.0,
  start_price_amount: 470.0,
  timezone: 'America/Los_Angeles',
  type: Models::Shared::PropertyListingType::ROOM,
  updated_at: DateTime.iso8601('2026-09-07T17:41:54.194Z'),
  web_url: 'https://tight-pronoun.info/',
), connection_id: '<id>')

unless res.property_listing.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `property_listing`                                                                                                                               | [Models::Shared::PropertyListing](../../models/shared/propertylisting.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePropertyListingQueryParamFields](../../models/operations/createpropertylistingqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePropertyListingResponse)](../../models/operations/createpropertylistingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_property_listing

Retrieves a single PropertyListing by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPropertyListing" method="get" path="/property/{connection_id}/listing/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.listing.get_property_listing(connection_id: '<id>', id: '<id>')

unless res.property_listing.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Listing                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPropertyListingQueryParamFields](../../models/operations/getpropertylistingqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPropertyListingResponse)](../../models/operations/getpropertylistingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_property_listings

Returns a list of PropertyListings. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPropertyListings" method="get" path="/property/{connection_id}/listing" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPropertyListingsRequest.new(
  connection_id: '<id>',
)

res = s.listing.list_property_listings(request: req)

unless res.property_listings.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListPropertyListingsRequest](../../models/operations/listpropertylistingsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListPropertyListingsResponse)](../../models/operations/listpropertylistingsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_property_listing

Updates the PropertyListing identified by `id`. Provide the unified PropertyListing fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPropertyListing" method="patch" path="/property/{connection_id}/listing/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPropertyListingRequest.new(
  property_listing: Models::Shared::PropertyListing.new(
    address: Models::Shared::PropertyPropertyListingAddress.new(
      address1: '9262 Bramley Close',
      city: 'New Andrewshire',
      country: 'United States',
      country_code: 'US',
      postal_code: '53615-4664',
      region: 'Nebraska',
      region_code: 'IL',
    ),
    amenities: [
      'Wifi',
      'Kitchen',
      'Free parking',
    ],
    bathrooms: 1.0,
    bedrooms: 4.0,
    beds: 8.0,
    channels: [
      Models::Shared::PropertyChannel.new(
        name: 'Booking.com',
        web_url: 'https://frightened-hyphenation.net/',
      ),
    ],
    check_in_end_time: '22:00',
    check_in_start_time: '15:00',
    check_out_time: '11:00',
    cleaning_fee_amount: 134.0,
    created_at: DateTime.iso8601('2021-01-08T09:27:35.485Z'),
    currency: 'USD',
    description: 'Cuius deputo cruentus demoror censura caveo sponte statim vespillo cursim. Arbitro barba summopere. Curto vulticulus comparo surgo vociferor carmen deputo defluo.',
    house_rules: 'No smoking. No parties or events.',
    id: '0ea634c3-5147-48d1-ad70-020c70185919',
    image_urls: [
      'https://loremflickr.com/23/1328?lock=5798241296161663',
      'https://loremflickr.com/12/1312?lock=6354590363728966',
    ],
    latitude: -5.4_327,
    longitude: 98.9_045,
    max_nights: 15.0,
    max_occupancy: 5.0,
    metadata: [],
    min_nights: 1.0,
    name: 'accurate Loft',
    rating: 4.9,
    review_count: 343.0,
    start_price_amount: 470.0,
    timezone: 'America/Los_Angeles',
    type: Models::Shared::PropertyListingType::ROOM,
    updated_at: DateTime.iso8601('2026-09-07T17:41:54.229Z'),
    web_url: 'https://tight-pronoun.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.listing.patch_property_listing(request: req)

unless res.property_listing.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchPropertyListingRequest](../../models/operations/patchpropertylistingrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchPropertyListingResponse)](../../models/operations/patchpropertylistingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_property_listing

Deletes the PropertyListing identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePropertyListing" method="delete" path="/property/{connection_id}/listing/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.listing.remove_property_listing(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Listing    |

### Response

**[T.nilable(Models::Operations::RemovePropertyListingResponse)](../../models/operations/removepropertylistingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_property_listing

Updates the PropertyListing identified by `id`. Provide the unified PropertyListing fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePropertyListing" method="put" path="/property/{connection_id}/listing/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePropertyListingRequest.new(
  property_listing: Models::Shared::PropertyListing.new(
    address: Models::Shared::PropertyPropertyListingAddress.new(
      address1: '9262 Bramley Close',
      city: 'New Andrewshire',
      country: 'United States',
      country_code: 'US',
      postal_code: '53615-4664',
      region: 'Nebraska',
      region_code: 'IL',
    ),
    amenities: [
      'Wifi',
      'Kitchen',
      'Free parking',
    ],
    bathrooms: 1.0,
    bedrooms: 4.0,
    beds: 8.0,
    channels: [
      Models::Shared::PropertyChannel.new(
        name: 'Booking.com',
        web_url: 'https://frightened-hyphenation.net/',
      ),
    ],
    check_in_end_time: '22:00',
    check_in_start_time: '15:00',
    check_out_time: '11:00',
    cleaning_fee_amount: 134.0,
    created_at: DateTime.iso8601('2021-01-08T09:27:35.485Z'),
    currency: 'USD',
    description: 'Cuius deputo cruentus demoror censura caveo sponte statim vespillo cursim. Arbitro barba summopere. Curto vulticulus comparo surgo vociferor carmen deputo defluo.',
    house_rules: 'No smoking. No parties or events.',
    id: '0ea634c3-5147-48d1-ad70-020c70185919',
    image_urls: [
      'https://loremflickr.com/23/1328?lock=5798241296161663',
      'https://loremflickr.com/12/1312?lock=6354590363728966',
    ],
    latitude: -5.4_327,
    longitude: 98.9_045,
    max_nights: 15.0,
    max_occupancy: 5.0,
    metadata: [],
    min_nights: 1.0,
    name: 'accurate Loft',
    rating: 4.9,
    review_count: 343.0,
    start_price_amount: 470.0,
    timezone: 'America/Los_Angeles',
    type: Models::Shared::PropertyListingType::ROOM,
    updated_at: DateTime.iso8601('2026-09-07T17:41:54.229Z'),
    web_url: 'https://tight-pronoun.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.listing.update_property_listing(request: req)

unless res.property_listing.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdatePropertyListingRequest](../../models/operations/updatepropertylistingrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdatePropertyListingResponse)](../../models/operations/updatepropertylistingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |