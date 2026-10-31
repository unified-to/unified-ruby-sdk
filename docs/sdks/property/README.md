# Property
(*property*)

## Overview

### Available Operations

* [create_analytics_property](#create_analytics_property) - Create a property
* [create_property_conversation](#create_property_conversation) - Create a conversation
* [create_property_guest](#create_property_guest) - Create a guest
* [create_property_listing](#create_property_listing) - Create a listing
* [create_property_quote](#create_property_quote) - Create a quote
* [create_property_reservation](#create_property_reservation) - Create a reservation
* [get_analytics_property](#get_analytics_property) - Retrieve a property
* [get_property_conversation](#get_property_conversation) - Retrieve a conversation
* [get_property_guest](#get_property_guest) - Retrieve a guest
* [get_property_listing](#get_property_listing) - Retrieve a listing
* [get_property_reservation](#get_property_reservation) - Retrieve a reservation
* [get_property_review](#get_property_review) - Retrieve a review
* [get_property_unittype](#get_property_unittype) - Retrieve an unittype
* [list_analytics_properties](#list_analytics_properties) - List all properties
* [list_property_availabilities](#list_property_availabilities) - List all availabilities
* [list_property_conversations](#list_property_conversations) - List all conversations
* [list_property_guests](#list_property_guests) - List all guests
* [list_property_listings](#list_property_listings) - List all listings
* [list_property_reservations](#list_property_reservations) - List all reservations
* [list_property_reviews](#list_property_reviews) - List all reviews
* [list_property_unittypes](#list_property_unittypes) - List all unittypes
* [patch_analytics_property](#patch_analytics_property) - Update a property
* [patch_property_guest](#patch_property_guest) - Update a guest
* [patch_property_listing](#patch_property_listing) - Update a listing
* [patch_property_reservation](#patch_property_reservation) - Update a reservation
* [patch_property_review](#patch_property_review) - Update a review
* [remove_analytics_property](#remove_analytics_property) - Remove a property
* [remove_property_listing](#remove_property_listing) - Remove a listing
* [update_analytics_property](#update_analytics_property) - Update a property
* [update_property_guest](#update_property_guest) - Update a guest
* [update_property_listing](#update_property_listing) - Update a listing
* [update_property_reservation](#update_property_reservation) - Update a reservation
* [update_property_review](#update_property_review) - Update a review

## create_analytics_property

Creates a AnalyticsProperty. Provide the unified AnalyticsProperty fields in the request body; they are mapped to the provider's API. Returns the created AnalyticsProperty.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAnalyticsProperty" method="post" path="/analytics/{connection_id}/property" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.create_analytics_property(analytics_property: Models::Shared::AnalyticsProperty.new(
  created_at: DateTime.iso8601('2021-09-05T19:04:58.430Z'),
  currency: 'USD',
  id: '0e758b17-0f58-43ef-9c9a-2e2db13db1c5',
  name: 'Daniel, Goldner and Dickinson',
  timezone: 'UTC',
  updated_at: DateTime.iso8601('2021-09-14T21:35:16.158Z'),
), connection_id: '<id>')

unless res.analytics_property.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `analytics_property`                                                                                                                             | [Models::Shared::AnalyticsProperty](../../models/shared/analyticsproperty.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAnalyticsPropertyQueryParamFields](../../models/operations/createanalyticspropertyqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAnalyticsPropertyResponse)](../../models/operations/createanalyticspropertyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_property_conversation

Creates a PropertyConversation. Provide the unified PropertyConversation fields in the request body; they are mapped to the provider's API. Returns the created PropertyConversation.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPropertyConversation" method="post" path="/property/{connection_id}/conversation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.create_property_conversation(property_conversation: Models::Shared::PropertyConversation.new(
  created_at: DateTime.iso8601('2022-06-20T00:02:46.530Z'),
  guest_name: 'Evie Okuneva',
  id: 'dd73a7c7-a81f-46e0-8c6a-fdc4a003b452',
  is_unread: false,
  messages: [
    Models::Shared::PropertyMessage.new(
      attachments: [],
      created_at: DateTime.iso8601('2025-04-22T23:27:40.199Z'),
      id: 'e9678d2c-f9fb-4de4-9ae4-6f17e9209223',
      is_automatic: false,
      message: 'Vinitor caterva amor sophismata admitto colo tempore aufero torrens.',
      sender_name: 'Evie Okuneva',
      sender_type: Models::Shared::SenderType::GUEST,
    ),
    Models::Shared::PropertyMessage.new(
      attachments: [],
      created_at: DateTime.iso8601('2026-05-06T10:53:35.770Z'),
      id: '3af86361-d5d3-4779-a326-bbf1fbac1541',
      message: 'Aequitas torqueo curiositas cimentarius repellendus auditor degero ademptio adnuo.',
      sender_name: 'Ms. Patti Lynch',
      sender_type: Models::Shared::SenderType::HOST,
    ),
  ],
  metadata: [],
  source: 'Airbnb',
  updated_at: DateTime.iso8601('2026-05-06T10:53:35.770Z'),
), connection_id: '<id>')

unless res.property_conversation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `property_conversation`                                                                                                                           | [Models::Shared::PropertyConversation](../../models/shared/propertyconversation.md)                                                               | :heavy_check_mark:                                                                                                                                | N/A                                                                                                                                               |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::CreatePropertyConversationQueryParamFields](../../models/operations/createpropertyconversationqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::CreatePropertyConversationResponse)](../../models/operations/createpropertyconversationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_property_guest

Creates a PropertyGuest. Provide the unified PropertyGuest fields in the request body; they are mapped to the provider's API. Returns the created PropertyGuest.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPropertyGuest" method="post" path="/property/{connection_id}/guest" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.create_property_guest(property_guest: Models::Shared::PropertyGuest.new(
  address: Models::Shared::PropertyPropertyGuestAddress.new(
    address1: '874 Rice Trafficway',
    city: 'East Dollyside',
    country: 'Cameroon',
    country_code: 'MX',
    postal_code: '51113-4329',
    region: 'Missouri',
  ),
  company_name: 'Kertzmann, Bednar and Bashirian',
  created_at: DateTime.iso8601('2021-10-17T05:59:05.070Z'),
  emails: [
    Models::Shared::PropertyEmail.new(
      email: 'melissa.green@icloud.com',
      type: Models::Shared::PropertyEmailType::HOME,
    ),
  ],
  first_name: 'Melissa',
  id: 'b29af8e6-e090-436d-9438-43ed9a4b17c7',
  image_url: 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/36.jpg',
  language: 'es',
  last_name: 'Green',
  metadata: [],
  name: 'Melissa Green',
  nationality: 'SI',
  notes: 'Minus incidunt corporis.',
  telephones: [
    Models::Shared::PropertyTelephone.new(
      telephone: '+14564841285',
      type: Models::Shared::PropertyTelephoneType::MOBILE,
    ),
  ],
  updated_at: DateTime.iso8601('2025-07-04T04:57:34.526Z'),
), connection_id: '<id>')

unless res.property_guest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `property_guest`                                                                                                                                 | [Models::Shared::PropertyGuest](../../models/shared/propertyguest.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePropertyGuestQueryParamFields](../../models/operations/createpropertyguestqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePropertyGuestResponse)](../../models/operations/createpropertyguestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.property.create_property_listing(property_listing: Models::Shared::PropertyListing.new(
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

## create_property_quote

Creates a PropertyQuote. Provide the unified PropertyQuote fields in the request body; they are mapped to the provider's API. Returns the created PropertyQuote.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPropertyQuote" method="post" path="/property/{connection_id}/quote" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.create_property_quote(property_quote: Models::Shared::PropertyQuote.new(
  adults: 1.0,
  children: 1.0,
  created_at: DateTime.iso8601('2020-12-18T19:14:11.415Z'),
  currency: 'USD',
  deposit_amount: 594.54,
  end_at: DateTime.iso8601('2026-11-14'),
  guests: 2.0,
  id: '2b6b2e91-032d-4edb-a061-f2939eeca590',
  line_items: [
    Models::Shared::PropertyLineitem.new(
      amount: 1665.0,
      description: '9 nights',
      is_mandatory: true,
      name: 'Accommodation',
      type: Models::Shared::PropertyLineitemType::BASE,
    ),
    Models::Shared::PropertyLineitem.new(
      amount: 117.0,
      is_mandatory: true,
      name: 'Cleaning fee',
      type: Models::Shared::PropertyLineitemType::FEE,
    ),
    Models::Shared::PropertyLineitem.new(
      amount: 199.8,
      is_mandatory: true,
      name: 'Lodging tax',
      type: Models::Shared::PropertyLineitemType::TAX,
    ),
  ],
  start_at: DateTime.iso8601('2026-11-05'),
  total_amount: 1_981.8,
), connection_id: '<id>')

unless res.property_quote.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `property_quote`                                                                                                                                 | [Models::Shared::PropertyQuote](../../models/shared/propertyquote.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePropertyQuoteQueryParamFields](../../models/operations/createpropertyquotequeryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePropertyQuoteResponse)](../../models/operations/createpropertyquoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_property_reservation

Creates a PropertyReservation. Provide the unified PropertyReservation fields in the request body; they are mapped to the provider's API. Returns the created PropertyReservation.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPropertyReservation" method="post" path="/property/{connection_id}/reservation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.create_property_reservation(property_reservation: Models::Shared::PropertyReservation.new(
  adults: 4.0,
  balance_amount: 2_181.6,
  children: 2.0,
  confirmation_code: 'GNLTDDQ88Z',
  created_at: DateTime.iso8601('2022-06-03T01:40:03.655Z'),
  currency: 'USD',
  end_at: DateTime.iso8601('2022-10-06T17:17:08.838Z'),
  estimated_departure_time: '10:00',
  guest_email: 'anya.parisian@hotmail.com',
  guest_name: 'Anya Parisian',
  guests: 6.0,
  id: 'ebc3a582-7911-4452-9c82-e46595ff1dfd',
  line_items: [
    Models::Shared::PropertyLineitem.new(
      amount: 1980.0,
      description: '11 nights',
      is_mandatory: true,
      name: 'Accommodation',
      type: Models::Shared::PropertyLineitemType::BASE,
    ),
    Models::Shared::PropertyLineitem.new(
      amount: 162.0,
      is_mandatory: true,
      name: 'Cleaning fee',
      type: Models::Shared::PropertyLineitemType::FEE,
    ),
    Models::Shared::PropertyLineitem.new(
      amount: 237.6,
      is_mandatory: true,
      name: 'Lodging tax',
      type: Models::Shared::PropertyLineitemType::TAX,
    ),
    Models::Shared::PropertyLineitem.new(
      amount: -198.0,
      is_mandatory: false,
      name: 'Weekly discount',
      type: Models::Shared::PropertyLineitemType::DISCOUNT,
    ),
  ],
  metadata: [],
  nights: 11.0,
  notes: 'Conculco volaticus vis volva quas trepide vae earum temptatio tertius.',
  paid_amount: 0.0,
  pets: 1.0,
  source: 'Vrbo',
  start_at: DateTime.iso8601('2022-09-25T17:17:08.838Z'),
  status: Models::Shared::PropertyReservationStatus::PENDING,
  total_amount: 2_181.6,
  updated_at: DateTime.iso8601('2022-11-16T12:56:55.291Z'),
  web_url: 'https://antique-tennis.biz/',
), connection_id: '<id>')

unless res.property_reservation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `property_reservation`                                                                                                                           | [Models::Shared::PropertyReservation](../../models/shared/propertyreservation.md)                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePropertyReservationQueryParamFields](../../models/operations/createpropertyreservationqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePropertyReservationResponse)](../../models/operations/createpropertyreservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_analytics_property

Retrieves a single AnalyticsProperty by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAnalyticsProperty" method="get" path="/analytics/{connection_id}/property/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.get_analytics_property(connection_id: '<id>', id: '<id>')

unless res.analytics_property.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Property                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAnalyticsPropertyQueryParamFields](../../models/operations/getanalyticspropertyqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAnalyticsPropertyResponse)](../../models/operations/getanalyticspropertyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_property_conversation

Retrieves a single PropertyConversation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPropertyConversation" method="get" path="/property/{connection_id}/conversation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.get_property_conversation(connection_id: '<id>', id: '<id>')

unless res.property_conversation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Conversation                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPropertyConversationQueryParamFields](../../models/operations/getpropertyconversationqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPropertyConversationResponse)](../../models/operations/getpropertyconversationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_property_guest

Retrieves a single PropertyGuest by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPropertyGuest" method="get" path="/property/{connection_id}/guest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.get_property_guest(connection_id: '<id>', id: '<id>')

unless res.property_guest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Guest                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPropertyGuestQueryParamFields](../../models/operations/getpropertyguestqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPropertyGuestResponse)](../../models/operations/getpropertyguestresponse.md)**

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

res = s.property.get_property_listing(connection_id: '<id>', id: '<id>')

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

## get_property_reservation

Retrieves a single PropertyReservation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPropertyReservation" method="get" path="/property/{connection_id}/reservation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.get_property_reservation(connection_id: '<id>', id: '<id>')

unless res.property_reservation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Reservation                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPropertyReservationQueryParamFields](../../models/operations/getpropertyreservationqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPropertyReservationResponse)](../../models/operations/getpropertyreservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_property_review

Retrieves a single PropertyReview by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPropertyReview" method="get" path="/property/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.get_property_review(connection_id: '<id>', id: '<id>')

unless res.property_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Review                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPropertyReviewQueryParamFields](../../models/operations/getpropertyreviewqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPropertyReviewResponse)](../../models/operations/getpropertyreviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_property_unittype

Retrieves a single PropertyUnittype by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPropertyUnittype" method="get" path="/property/{connection_id}/unittype/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.get_property_unittype(connection_id: '<id>', id: '<id>')

unless res.property_unittype.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Unittype                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPropertyUnittypeQueryParamFields](../../models/operations/getpropertyunittypequeryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPropertyUnittypeResponse)](../../models/operations/getpropertyunittyperesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_analytics_properties

Returns a list of AnalyticsProperties. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAnalyticsProperties" method="get" path="/analytics/{connection_id}/property" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAnalyticsPropertiesRequest.new(
  connection_id: '<id>',
)

res = s.property.list_analytics_properties(request: req)

unless res.analytics_properties.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListAnalyticsPropertiesRequest](../../models/operations/listanalyticspropertiesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListAnalyticsPropertiesResponse)](../../models/operations/listanalyticspropertiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_property_availabilities

Returns a list of PropertyAvailabilities. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPropertyAvailabilities" method="get" path="/property/{connection_id}/availability" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPropertyAvailabilitiesRequest.new(
  connection_id: '<id>',
)

res = s.property.list_property_availabilities(request: req)

unless res.property_availabilities.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListPropertyAvailabilitiesRequest](../../models/operations/listpropertyavailabilitiesrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListPropertyAvailabilitiesResponse)](../../models/operations/listpropertyavailabilitiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_property_conversations

Returns a list of PropertyConversations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPropertyConversations" method="get" path="/property/{connection_id}/conversation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPropertyConversationsRequest.new(
  connection_id: '<id>',
)

res = s.property.list_property_conversations(request: req)

unless res.property_conversations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::ListPropertyConversationsRequest](../../models/operations/listpropertyconversationsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::ListPropertyConversationsResponse)](../../models/operations/listpropertyconversationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_property_guests

Returns a list of PropertyGuests. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPropertyGuests" method="get" path="/property/{connection_id}/guest" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPropertyGuestsRequest.new(
  connection_id: '<id>',
)

res = s.property.list_property_guests(request: req)

unless res.property_guests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListPropertyGuestsRequest](../../models/operations/listpropertyguestsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListPropertyGuestsResponse)](../../models/operations/listpropertyguestsresponse.md)**

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

res = s.property.list_property_listings(request: req)

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

## list_property_reservations

Returns a list of PropertyReservations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPropertyReservations" method="get" path="/property/{connection_id}/reservation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPropertyReservationsRequest.new(
  connection_id: '<id>',
)

res = s.property.list_property_reservations(request: req)

unless res.property_reservations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListPropertyReservationsRequest](../../models/operations/listpropertyreservationsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListPropertyReservationsResponse)](../../models/operations/listpropertyreservationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_property_reviews

Returns a list of PropertyReviews. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPropertyReviews" method="get" path="/property/{connection_id}/review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPropertyReviewsRequest.new(
  connection_id: '<id>',
)

res = s.property.list_property_reviews(request: req)

unless res.property_reviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListPropertyReviewsRequest](../../models/operations/listpropertyreviewsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListPropertyReviewsResponse)](../../models/operations/listpropertyreviewsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_property_unittypes

Returns a list of PropertyUnittypes. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPropertyUnittypes" method="get" path="/property/{connection_id}/unittype" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPropertyUnittypesRequest.new(
  connection_id: '<id>',
)

res = s.property.list_property_unittypes(request: req)

unless res.property_unittypes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListPropertyUnittypesRequest](../../models/operations/listpropertyunittypesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListPropertyUnittypesResponse)](../../models/operations/listpropertyunittypesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_analytics_property

Updates the AnalyticsProperty identified by `id`. Provide the unified AnalyticsProperty fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAnalyticsProperty" method="patch" path="/analytics/{connection_id}/property/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAnalyticsPropertyRequest.new(
  analytics_property: Models::Shared::AnalyticsProperty.new(
    created_at: DateTime.iso8601('2021-09-05T19:04:58.430Z'),
    currency: 'USD',
    id: 'c073ea97-7ace-400e-80e2-6a3e1bc943f1',
    name: 'Daniel, Goldner and Dickinson',
    timezone: 'UTC',
    updated_at: DateTime.iso8601('2021-09-14T21:35:16.158Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.property.patch_analytics_property(request: req)

unless res.analytics_property.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAnalyticsPropertyRequest](../../models/operations/patchanalyticspropertyrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAnalyticsPropertyResponse)](../../models/operations/patchanalyticspropertyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_property_guest

Updates the PropertyGuest identified by `id`. Provide the unified PropertyGuest fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPropertyGuest" method="patch" path="/property/{connection_id}/guest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPropertyGuestRequest.new(
  property_guest: Models::Shared::PropertyGuest.new(
    address: Models::Shared::PropertyPropertyGuestAddress.new(
      address1: '874 Rice Trafficway',
      city: 'East Dollyside',
      country: 'Cameroon',
      country_code: 'MX',
      postal_code: '51113-4329',
      region: 'Missouri',
    ),
    company_name: 'Kertzmann, Bednar and Bashirian',
    created_at: DateTime.iso8601('2021-10-17T05:59:05.070Z'),
    emails: [
      Models::Shared::PropertyEmail.new(
        email: 'melissa.green@icloud.com',
        type: Models::Shared::PropertyEmailType::HOME,
      ),
    ],
    first_name: 'Melissa',
    id: 'e9231d34-8e3e-4325-8cd1-374b703445ad',
    image_url: 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/36.jpg',
    language: 'es',
    last_name: 'Green',
    metadata: [],
    name: 'Melissa Green',
    nationality: 'SI',
    notes: 'Minus incidunt corporis.',
    telephones: [
      Models::Shared::PropertyTelephone.new(
        telephone: '+14564841285',
        type: Models::Shared::PropertyTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2025-07-04T04:57:34.548Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.property.patch_property_guest(request: req)

unless res.property_guest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchPropertyGuestRequest](../../models/operations/patchpropertyguestrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchPropertyGuestResponse)](../../models/operations/patchpropertyguestresponse.md)**

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

res = s.property.patch_property_listing(request: req)

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

## patch_property_reservation

Updates the PropertyReservation identified by `id`. Provide the unified PropertyReservation fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPropertyReservation" method="patch" path="/property/{connection_id}/reservation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPropertyReservationRequest.new(
  property_reservation: Models::Shared::PropertyReservation.new(
    adults: 4.0,
    balance_amount: 2_181.6,
    children: 2.0,
    confirmation_code: 'GNLTDDQ88Z',
    created_at: DateTime.iso8601('2022-06-03T01:40:03.655Z'),
    currency: 'USD',
    end_at: DateTime.iso8601('2022-10-06T17:17:08.838Z'),
    estimated_departure_time: '10:00',
    guest_email: 'anya.parisian@hotmail.com',
    guest_name: 'Anya Parisian',
    guests: 6.0,
    id: 'fc61d6f9-48c7-42dd-8a4a-9e2736a0200b',
    line_items: [
      Models::Shared::PropertyLineitem.new(
        amount: 1980.0,
        description: '11 nights',
        is_mandatory: true,
        name: 'Accommodation',
        type: Models::Shared::PropertyLineitemType::BASE,
      ),
      Models::Shared::PropertyLineitem.new(
        amount: 162.0,
        is_mandatory: true,
        name: 'Cleaning fee',
        type: Models::Shared::PropertyLineitemType::FEE,
      ),
      Models::Shared::PropertyLineitem.new(
        amount: 237.6,
        is_mandatory: true,
        name: 'Lodging tax',
        type: Models::Shared::PropertyLineitemType::TAX,
      ),
      Models::Shared::PropertyLineitem.new(
        amount: -198.0,
        is_mandatory: false,
        name: 'Weekly discount',
        type: Models::Shared::PropertyLineitemType::DISCOUNT,
      ),
    ],
    metadata: [],
    nights: 11.0,
    notes: 'Conculco volaticus vis volva quas trepide vae earum temptatio tertius.',
    paid_amount: 0.0,
    pets: 1.0,
    source: 'Vrbo',
    start_at: DateTime.iso8601('2022-09-25T17:17:08.838Z'),
    status: Models::Shared::PropertyReservationStatus::PENDING,
    total_amount: 2_181.6,
    updated_at: DateTime.iso8601('2022-11-16T12:56:55.293Z'),
    web_url: 'https://antique-tennis.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.property.patch_property_reservation(request: req)

unless res.property_reservation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::PatchPropertyReservationRequest](../../models/operations/patchpropertyreservationrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::PatchPropertyReservationResponse)](../../models/operations/patchpropertyreservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_property_review

Updates the PropertyReview identified by `id`. Provide the unified PropertyReview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPropertyReview" method="patch" path="/property/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPropertyReviewRequest.new(
  property_review: Models::Shared::PropertyReview.new(
    author_name: 'Benton Jast',
    category_ratings: [
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::CLEANLINESS,
        comment: 'Umquam perferendis amitto voluptas sum blanditiis terreo.',
        rating: 5.0,
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::ACCURACY,
        comment: 'Capitulus dolorem verus.',
        rating: 4.0,
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::COMMUNICATION,
        rating: 1.0,
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::CHECKIN,
        rating: 1.0,
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::LOCATION,
        rating: 2.0,
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::VALUE,
        comment: 'Quos constans aperte tero sollers.',
        rating: 5.0,
      ),
    ],
    content: 'Delectus conscendo communis custodia statim. Tutis adsuesco attonbitus comitatus auditor ea tergo nostrum deleo. Comprehendo tertius summopere vaco apparatus incidunt tabula pauci confido colo.',
    created_at: DateTime.iso8601('2022-10-17T11:17:07.682Z'),
    id: 'f4bd1e45-af48-45f5-8b11-b7da2bce4c7a',
    is_public: true,
    metadata: [],
    private_feedback: 'Tripudio neque communis.',
    rating: 3.0,
    source: 'Airbnb',
    updated_at: DateTime.iso8601('2026-02-19T02:51:12.332Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.property.patch_property_review(request: req)

unless res.property_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchPropertyReviewRequest](../../models/operations/patchpropertyreviewrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchPropertyReviewResponse)](../../models/operations/patchpropertyreviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_analytics_property

Deletes the AnalyticsProperty identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAnalyticsProperty" method="delete" path="/analytics/{connection_id}/property/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.remove_analytics_property(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Property   |

### Response

**[T.nilable(Models::Operations::RemoveAnalyticsPropertyResponse)](../../models/operations/removeanalyticspropertyresponse.md)**

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

res = s.property.remove_property_listing(connection_id: '<id>', id: '<id>')

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

## update_analytics_property

Updates the AnalyticsProperty identified by `id`. Provide the unified AnalyticsProperty fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAnalyticsProperty" method="put" path="/analytics/{connection_id}/property/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAnalyticsPropertyRequest.new(
  analytics_property: Models::Shared::AnalyticsProperty.new(
    created_at: DateTime.iso8601('2021-09-05T19:04:58.430Z'),
    currency: 'USD',
    id: 'c073ea97-7ace-400e-80e2-6a3e1bc943f1',
    name: 'Daniel, Goldner and Dickinson',
    timezone: 'UTC',
    updated_at: DateTime.iso8601('2021-09-14T21:35:16.158Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.property.update_analytics_property(request: req)

unless res.analytics_property.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAnalyticsPropertyRequest](../../models/operations/updateanalyticspropertyrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAnalyticsPropertyResponse)](../../models/operations/updateanalyticspropertyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_property_guest

Updates the PropertyGuest identified by `id`. Provide the unified PropertyGuest fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePropertyGuest" method="put" path="/property/{connection_id}/guest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePropertyGuestRequest.new(
  property_guest: Models::Shared::PropertyGuest.new(
    address: Models::Shared::PropertyPropertyGuestAddress.new(
      address1: '874 Rice Trafficway',
      city: 'East Dollyside',
      country: 'Cameroon',
      country_code: 'MX',
      postal_code: '51113-4329',
      region: 'Missouri',
    ),
    company_name: 'Kertzmann, Bednar and Bashirian',
    created_at: DateTime.iso8601('2021-10-17T05:59:05.070Z'),
    emails: [
      Models::Shared::PropertyEmail.new(
        email: 'melissa.green@icloud.com',
        type: Models::Shared::PropertyEmailType::HOME,
      ),
    ],
    first_name: 'Melissa',
    id: 'e9231d34-8e3e-4325-8cd1-374b703445ad',
    image_url: 'https://cdn.jsdelivr.net/gh/faker-js/assets-person-portrait/male/512/36.jpg',
    language: 'es',
    last_name: 'Green',
    metadata: [],
    name: 'Melissa Green',
    nationality: 'SI',
    notes: 'Minus incidunt corporis.',
    telephones: [
      Models::Shared::PropertyTelephone.new(
        telephone: '+14564841285',
        type: Models::Shared::PropertyTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2025-07-04T04:57:34.548Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.property.update_property_guest(request: req)

unless res.property_guest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdatePropertyGuestRequest](../../models/operations/updatepropertyguestrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdatePropertyGuestResponse)](../../models/operations/updatepropertyguestresponse.md)**

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

res = s.property.update_property_listing(request: req)

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

## update_property_reservation

Updates the PropertyReservation identified by `id`. Provide the unified PropertyReservation fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePropertyReservation" method="put" path="/property/{connection_id}/reservation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePropertyReservationRequest.new(
  property_reservation: Models::Shared::PropertyReservation.new(
    adults: 4.0,
    balance_amount: 2_181.6,
    children: 2.0,
    confirmation_code: 'GNLTDDQ88Z',
    created_at: DateTime.iso8601('2022-06-03T01:40:03.655Z'),
    currency: 'USD',
    end_at: DateTime.iso8601('2022-10-06T17:17:08.838Z'),
    estimated_departure_time: '10:00',
    guest_email: 'anya.parisian@hotmail.com',
    guest_name: 'Anya Parisian',
    guests: 6.0,
    id: 'fc61d6f9-48c7-42dd-8a4a-9e2736a0200b',
    line_items: [
      Models::Shared::PropertyLineitem.new(
        amount: 1980.0,
        description: '11 nights',
        is_mandatory: true,
        name: 'Accommodation',
        type: Models::Shared::PropertyLineitemType::BASE,
      ),
      Models::Shared::PropertyLineitem.new(
        amount: 162.0,
        is_mandatory: true,
        name: 'Cleaning fee',
        type: Models::Shared::PropertyLineitemType::FEE,
      ),
      Models::Shared::PropertyLineitem.new(
        amount: 237.6,
        is_mandatory: true,
        name: 'Lodging tax',
        type: Models::Shared::PropertyLineitemType::TAX,
      ),
      Models::Shared::PropertyLineitem.new(
        amount: -198.0,
        is_mandatory: false,
        name: 'Weekly discount',
        type: Models::Shared::PropertyLineitemType::DISCOUNT,
      ),
    ],
    metadata: [],
    nights: 11.0,
    notes: 'Conculco volaticus vis volva quas trepide vae earum temptatio tertius.',
    paid_amount: 0.0,
    pets: 1.0,
    source: 'Vrbo',
    start_at: DateTime.iso8601('2022-09-25T17:17:08.838Z'),
    status: Models::Shared::PropertyReservationStatus::PENDING,
    total_amount: 2_181.6,
    updated_at: DateTime.iso8601('2022-11-16T12:56:55.293Z'),
    web_url: 'https://antique-tennis.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.property.update_property_reservation(request: req)

unless res.property_reservation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::UpdatePropertyReservationRequest](../../models/operations/updatepropertyreservationrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::UpdatePropertyReservationResponse)](../../models/operations/updatepropertyreservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_property_review

Updates the PropertyReview identified by `id`. Provide the unified PropertyReview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePropertyReview" method="put" path="/property/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePropertyReviewRequest.new(
  property_review: Models::Shared::PropertyReview.new(
    author_name: 'Benton Jast',
    category_ratings: [
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::CLEANLINESS,
        comment: 'Umquam perferendis amitto voluptas sum blanditiis terreo.',
        rating: 5.0,
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::ACCURACY,
        comment: 'Capitulus dolorem verus.',
        rating: 4.0,
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::COMMUNICATION,
        rating: 1.0,
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::CHECKIN,
        rating: 1.0,
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::LOCATION,
        rating: 2.0,
      ),
      Models::Shared::PropertyCategoryrating.new(
        category: Models::Shared::PropertyCategoryratingCategory::VALUE,
        comment: 'Quos constans aperte tero sollers.',
        rating: 5.0,
      ),
    ],
    content: 'Delectus conscendo communis custodia statim. Tutis adsuesco attonbitus comitatus auditor ea tergo nostrum deleo. Comprehendo tertius summopere vaco apparatus incidunt tabula pauci confido colo.',
    created_at: DateTime.iso8601('2022-10-17T11:17:07.682Z'),
    id: 'f4bd1e45-af48-45f5-8b11-b7da2bce4c7a',
    is_public: true,
    metadata: [],
    private_feedback: 'Tripudio neque communis.',
    rating: 3.0,
    source: 'Airbnb',
    updated_at: DateTime.iso8601('2026-02-19T02:51:12.332Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.property.update_property_review(request: req)

unless res.property_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdatePropertyReviewRequest](../../models/operations/updatepropertyreviewrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdatePropertyReviewResponse)](../../models/operations/updatepropertyreviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |