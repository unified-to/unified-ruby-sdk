# Guest
(*guest*)

## Overview

### Available Operations

* [create_property_guest](#create_property_guest) - Create a guest
* [get_property_guest](#get_property_guest) - Retrieve a guest
* [list_property_guests](#list_property_guests) - List all guests
* [patch_property_guest](#patch_property_guest) - Update a guest
* [update_property_guest](#update_property_guest) - Update a guest

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

res = s.guest.create_property_guest(property_guest: Models::Shared::PropertyGuest.new(
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

res = s.guest.get_property_guest(connection_id: '<id>', id: '<id>')

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

res = s.guest.list_property_guests(request: req)

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

res = s.guest.patch_property_guest(request: req)

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

res = s.guest.update_property_guest(request: req)

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