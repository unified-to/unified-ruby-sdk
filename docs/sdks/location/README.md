# Location

## Overview

### Available Operations

* [create_commerce_location](#create_commerce_location) - Create a location
* [create_hris_location](#create_hris_location) - Create a location
* [get_calendar_location](#get_calendar_location) - Retrieve a location
* [get_clubs_location](#get_clubs_location) - Retrieve a location
* [get_commerce_location](#get_commerce_location) - Retrieve a location
* [get_healthcare_location](#get_healthcare_location) - Retrieve a location
* [get_hris_location](#get_hris_location) - Retrieve a location
* [list_calendar_locations](#list_calendar_locations) - List all locations
* [list_clubs_locations](#list_clubs_locations) - List all locations
* [list_commerce_locations](#list_commerce_locations) - List all locations
* [list_healthcare_locations](#list_healthcare_locations) - List all locations
* [list_hris_locations](#list_hris_locations) - List all locations
* [patch_commerce_location](#patch_commerce_location) - Update a location
* [patch_hris_location](#patch_hris_location) - Update a location
* [remove_commerce_location](#remove_commerce_location) - Remove a location
* [remove_hris_location](#remove_hris_location) - Remove a location
* [update_commerce_location](#update_commerce_location) - Update a location
* [update_hris_location](#update_hris_location) - Update a location

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
res = s.location.create_commerce_location(commerce_location: Models::Shared::CommerceLocation.new(
  address: Models::Shared::PropertyCommerceLocationAddress.new(
    address1: '688 Kristen Groves',
    city: 'South Addisontown',
    country_code: 'US',
    postal_code: '92019',
    region: 'Ohio',
    region_code: 'UT'
  ),
  categories: [],
  created_at: DateTime.iso8601('2022-12-29T04:15:21.195Z'),
  currency: 'WST',
  description: 'Vulgaris cruciamentum hic numquam tutamen.',
  id: 'f3e054f5-ed63-4555-a27a-98a05e1c3e98',
  image_url: 'https://picsum.photos/seed/3ZlSMHUYq/1895/67',
  is_active: false,
  language_locale: 'cibus',
  latitude: 0.0,
  location_type: Models::Shared::LocationType::RESTAURANT,
  longitude: 0.0,
  media: [
    Models::Shared::CommerceItemMedia.new(
      alt: 'Amoveo cinis demulceo tutamen.',
      height: 283.0,
      id: '6f6f8b4f-f512-44f8-94d6-e62f338e58ce',
      metadata: [
        Models::Shared::CommerceMetadata.new(
          id: '52f3cf2b-8e87-4eb8-8b6e-66107d6cf9af',
          slug: 'taedium',
          value: 'censura'
        ),
      ],
      position: 40.0,
      type: Models::Shared::CommerceItemMediaType::IMAGE,
      url: 'https://picsum.photos/seed/TV610q/478/3686',
      width: 1.0
    ),
  ],
  metadata: [],
  name: 'Christiansen and Sons',
  price_level: '',
  rating: 0.0,
  review_count: 0.0,
  telephones: [
    Models::Shared::CommerceTelephone.new(
      telephone: '(301) 236-0742',
      type: Models::Shared::CommerceTelephoneType::OTHER
    ),
    Models::Shared::CommerceTelephone.new(
      telephone: '(545) 455-1236',
      type: Models::Shared::CommerceTelephoneType::MOBILE
    ),
  ],
  updated_at: DateTime.iso8601('2024-05-03T19:40:28.777Z'),
  web_url: 'https://formal-declaration.info/'
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

## create_hris_location

Creates a HrisLocation. Provide the unified HrisLocation fields in the request body; they are mapped to the provider's API. Returns the created HrisLocation.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisLocation" method="post" path="/hris/{connection_id}/location" example="hris_location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.location.create_hris_location(hris_location: Models::Shared::HrisLocation.new(
  address: Models::Shared::PropertyHrisLocationAddress.new(
    address1: '35099 W 14th Street',
    address2: 'Apt. 715',
    city: 'Taliastad',
    country_code: 'US',
    postal_code: '30271',
    region: 'New Hampshire',
    region_code: 'TX'
  ),
  created_at: DateTime.iso8601('2021-07-18T10:32:01.414Z'),
  currency: 'ALL',
  description: 'Accendo sophismata verus.',
  id: '4a1ea28f-1dd4-4d33-b375-698e08460027',
  is_active: false,
  is_hq: true,
  language_locale: 'it',
  metadata: [],
  name: 'Lake Joannaville Office',
  telephones: [
    Models::Shared::HrisTelephone.new(
      telephone: '(970) 284-5585',
      type: Models::Shared::HrisTelephoneType::FAX
    ),
    Models::Shared::HrisTelephone.new(
      telephone: '(526) 323-7354',
      type: Models::Shared::HrisTelephoneType::FAX
    ),
    Models::Shared::HrisTelephone.new(
      telephone: '(927) 858-7370',
      type: Models::Shared::HrisTelephoneType::HOME
    ),
  ],
  timezone: 'America/Toronto',
  updated_at: DateTime.iso8601('2023-07-05T00:16:36.126Z')
), connection_id: '<id>')

unless res.hris_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_location`                                                                                                                                  | [Models::Shared::HrisLocation](../../models/shared/hrislocation.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisLocationQueryParamFields](../../models/operations/createhrislocationqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisLocationResponse)](../../models/operations/createhrislocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_calendar_location

Retrieves a single CalendarLocation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCalendarLocation" method="get" path="/calendar/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.location.get_calendar_location(connection_id: '<id>', id: '<id>')

unless res.calendar_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Location                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCalendarLocationQueryParamFields](../../models/operations/getcalendarlocationqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCalendarLocationResponse)](../../models/operations/getcalendarlocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_clubs_location

Retrieves a single ClubsLocation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getClubsLocation" method="get" path="/clubs/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.location.get_clubs_location(connection_id: '<id>', id: '<id>')

unless res.clubs_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Location                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetClubsLocationQueryParamFields](../../models/operations/getclubslocationqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetClubsLocationResponse)](../../models/operations/getclubslocationresponse.md)**

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
res = s.location.get_commerce_location(connection_id: '<id>', id: '<id>')

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

## get_healthcare_location

Retrieves a single HealthcareLocation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareLocation" method="get" path="/healthcare/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.location.get_healthcare_location(connection_id: '<id>', id: '<id>')

unless res.healthcare_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Location                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareLocationQueryParamFields](../../models/operations/gethealthcarelocationqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareLocationResponse)](../../models/operations/gethealthcarelocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_location

Retrieves a single HrisLocation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisLocation" method="get" path="/hris/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.location.get_hris_location(connection_id: '<id>', id: '<id>')

unless res.hris_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Location                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisLocationQueryParamFields](../../models/operations/gethrislocationqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisLocationResponse)](../../models/operations/gethrislocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_locations

Returns a list of CalendarLocations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarLocations" method="get" path="/calendar/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCalendarLocationsRequest.new(
  connection_id: '<id>'
)
res = s.location.list_calendar_locations(request: req)

unless res.calendar_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListCalendarLocationsRequest](../../models/operations/listcalendarlocationsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListCalendarLocationsResponse)](../../models/operations/listcalendarlocationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_clubs_locations

Returns a list of ClubsLocations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listClubsLocations" method="get" path="/clubs/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListClubsLocationsRequest.new(
  connection_id: '<id>'
)
res = s.location.list_clubs_locations(request: req)

unless res.clubs_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListClubsLocationsRequest](../../models/operations/listclubslocationsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListClubsLocationsResponse)](../../models/operations/listclubslocationsresponse.md)**

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
res = s.location.list_commerce_locations(request: req)

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

## list_healthcare_locations

Returns a list of HealthcareLocations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareLocations" method="get" path="/healthcare/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListHealthcareLocationsRequest.new(
  connection_id: '<id>'
)
res = s.location.list_healthcare_locations(request: req)

unless res.healthcare_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListHealthcareLocationsRequest](../../models/operations/listhealthcarelocationsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListHealthcareLocationsResponse)](../../models/operations/listhealthcarelocationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_locations

Returns a list of HrisLocations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisLocations" method="get" path="/hris/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListHrisLocationsRequest.new(
  connection_id: '<id>'
)
res = s.location.list_hris_locations(request: req)

unless res.hris_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListHrisLocationsRequest](../../models/operations/listhrislocationsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListHrisLocationsResponse)](../../models/operations/listhrislocationsresponse.md)**

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
      address1: '688 Kristen Groves',
      city: 'South Addisontown',
      country_code: 'US',
      postal_code: '92019',
      region: 'Ohio',
      region_code: 'UT'
    ),
    categories: [],
    created_at: DateTime.iso8601('2022-12-29T04:15:21.195Z'),
    currency: 'WST',
    description: 'Vulgaris cruciamentum hic numquam tutamen.',
    id: 'd3c3aa03-ba1d-4a41-9862-94f26e128662',
    image_url: 'https://picsum.photos/seed/3ZlSMHUYq/1895/67',
    is_active: false,
    language_locale: 'cibus',
    latitude: 0.0,
    location_type: Models::Shared::LocationType::RESTAURANT,
    longitude: 0.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Amoveo cinis demulceo tutamen.',
        height: 283.0,
        id: '08f250ba-5a6e-452e-af83-a497877be275',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '5e80a403-5e41-4c08-984b-789bc80b2267',
            slug: 'taedium',
            value: 'censura'
          ),
        ],
        position: 40.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/TV610q/478/3686',
        width: 1.0
      ),
    ],
    metadata: [],
    name: 'Christiansen and Sons',
    price_level: '',
    rating: 0.0,
    review_count: 0.0,
    telephones: [
      Models::Shared::CommerceTelephone.new(
        telephone: '(301) 236-0742',
        type: Models::Shared::CommerceTelephoneType::OTHER
      ),
      Models::Shared::CommerceTelephone.new(
        telephone: '(545) 455-1236',
        type: Models::Shared::CommerceTelephoneType::MOBILE
      ),
    ],
    updated_at: DateTime.iso8601('2024-05-03T19:40:28.785Z'),
    web_url: 'https://formal-declaration.info/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.location.patch_commerce_location(request: req)

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

## patch_hris_location

Updates the HrisLocation identified by `id`. Provide the unified HrisLocation fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisLocation" method="patch" path="/hris/{connection_id}/location/{id}" example="hris_location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchHrisLocationRequest.new(
  hris_location: Models::Shared::HrisLocation.new(
    address: Models::Shared::PropertyHrisLocationAddress.new(
      address1: '35099 W 14th Street',
      address2: 'Apt. 715',
      city: 'Taliastad',
      country_code: 'US',
      postal_code: '30271',
      region: 'New Hampshire',
      region_code: 'TX'
    ),
    created_at: DateTime.iso8601('2021-07-18T10:32:01.414Z'),
    currency: 'ALL',
    description: 'Accendo sophismata verus.',
    id: 'beba2765-59e6-414b-be34-0aac5ccb9f93',
    is_active: false,
    is_hq: true,
    language_locale: 'it',
    metadata: [],
    name: 'Lake Joannaville Office',
    telephones: [
      Models::Shared::HrisTelephone.new(
        telephone: '(970) 284-5585',
        type: Models::Shared::HrisTelephoneType::FAX
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(526) 323-7354',
        type: Models::Shared::HrisTelephoneType::FAX
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(927) 858-7370',
        type: Models::Shared::HrisTelephoneType::HOME
      ),
    ],
    timezone: 'America/Toronto',
    updated_at: DateTime.iso8601('2023-07-05T00:16:36.134Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.location.patch_hris_location(request: req)

unless res.hris_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchHrisLocationRequest](../../models/operations/patchhrislocationrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchHrisLocationResponse)](../../models/operations/patchhrislocationresponse.md)**

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
res = s.location.remove_commerce_location(connection_id: '<id>', id: '<id>')

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

## remove_hris_location

Deletes the HrisLocation identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisLocation" method="delete" path="/hris/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.location.remove_hris_location(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveHrisLocationResponse)](../../models/operations/removehrislocationresponse.md)**

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
      address1: '688 Kristen Groves',
      city: 'South Addisontown',
      country_code: 'US',
      postal_code: '92019',
      region: 'Ohio',
      region_code: 'UT'
    ),
    categories: [],
    created_at: DateTime.iso8601('2022-12-29T04:15:21.195Z'),
    currency: 'WST',
    description: 'Vulgaris cruciamentum hic numquam tutamen.',
    id: 'd3c3aa03-ba1d-4a41-9862-94f26e128662',
    image_url: 'https://picsum.photos/seed/3ZlSMHUYq/1895/67',
    is_active: false,
    language_locale: 'cibus',
    latitude: 0.0,
    location_type: Models::Shared::LocationType::RESTAURANT,
    longitude: 0.0,
    media: [
      Models::Shared::CommerceItemMedia.new(
        alt: 'Amoveo cinis demulceo tutamen.',
        height: 283.0,
        id: '08f250ba-5a6e-452e-af83-a497877be275',
        metadata: [
          Models::Shared::CommerceMetadata.new(
            id: '5e80a403-5e41-4c08-984b-789bc80b2267',
            slug: 'taedium',
            value: 'censura'
          ),
        ],
        position: 40.0,
        type: Models::Shared::CommerceItemMediaType::IMAGE,
        url: 'https://picsum.photos/seed/TV610q/478/3686',
        width: 1.0
      ),
    ],
    metadata: [],
    name: 'Christiansen and Sons',
    price_level: '',
    rating: 0.0,
    review_count: 0.0,
    telephones: [
      Models::Shared::CommerceTelephone.new(
        telephone: '(301) 236-0742',
        type: Models::Shared::CommerceTelephoneType::OTHER
      ),
      Models::Shared::CommerceTelephone.new(
        telephone: '(545) 455-1236',
        type: Models::Shared::CommerceTelephoneType::MOBILE
      ),
    ],
    updated_at: DateTime.iso8601('2024-05-03T19:40:28.785Z'),
    web_url: 'https://formal-declaration.info/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.location.update_commerce_location(request: req)

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

## update_hris_location

Updates the HrisLocation identified by `id`. Provide the unified HrisLocation fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisLocation" method="put" path="/hris/{connection_id}/location/{id}" example="hris_location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateHrisLocationRequest.new(
  hris_location: Models::Shared::HrisLocation.new(
    address: Models::Shared::PropertyHrisLocationAddress.new(
      address1: '35099 W 14th Street',
      address2: 'Apt. 715',
      city: 'Taliastad',
      country_code: 'US',
      postal_code: '30271',
      region: 'New Hampshire',
      region_code: 'TX'
    ),
    created_at: DateTime.iso8601('2021-07-18T10:32:01.414Z'),
    currency: 'ALL',
    description: 'Accendo sophismata verus.',
    id: 'beba2765-59e6-414b-be34-0aac5ccb9f93',
    is_active: false,
    is_hq: true,
    language_locale: 'it',
    metadata: [],
    name: 'Lake Joannaville Office',
    telephones: [
      Models::Shared::HrisTelephone.new(
        telephone: '(970) 284-5585',
        type: Models::Shared::HrisTelephoneType::FAX
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(526) 323-7354',
        type: Models::Shared::HrisTelephoneType::FAX
      ),
      Models::Shared::HrisTelephone.new(
        telephone: '(927) 858-7370',
        type: Models::Shared::HrisTelephoneType::HOME
      ),
    ],
    timezone: 'America/Toronto',
    updated_at: DateTime.iso8601('2023-07-05T00:16:36.134Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.location.update_hris_location(request: req)

unless res.hris_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateHrisLocationRequest](../../models/operations/updatehrislocationrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateHrisLocationResponse)](../../models/operations/updatehrislocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |