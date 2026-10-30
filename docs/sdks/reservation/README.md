# Reservation
(*reservation*)

## Overview

### Available Operations

* [create_commerce_reservation](#create_commerce_reservation) - Create a reservation
* [create_property_reservation](#create_property_reservation) - Create a reservation
* [get_commerce_reservation](#get_commerce_reservation) - Retrieve a reservation
* [get_property_reservation](#get_property_reservation) - Retrieve a reservation
* [list_commerce_reservations](#list_commerce_reservations) - List all reservations
* [list_property_reservations](#list_property_reservations) - List all reservations
* [patch_commerce_reservation](#patch_commerce_reservation) - Update a reservation
* [patch_property_reservation](#patch_property_reservation) - Update a reservation
* [remove_commerce_reservation](#remove_commerce_reservation) - Remove a reservation
* [update_commerce_reservation](#update_commerce_reservation) - Update a reservation
* [update_property_reservation](#update_property_reservation) - Update a reservation

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

res = s.reservation.create_commerce_reservation(commerce_reservation: Models::Shared::CommerceReservation.new(
  created_at: DateTime.iso8601('2021-12-14T19:50:31.151Z'),
  end_at: DateTime.iso8601('2022-01-01T22:00:17.868Z'),
  guest_email: 'julien.bartoletti@icloud.com',
  guest_name: 'Julien Bartoletti',
  guest_phone: '(728) 596-2620',
  id: 'c4e43ca4-675d-4ba2-a090-0dc34ea3666c',
  metadata: [],
  notes: 'Adsum textilis ipsum despecto.',
  size: 10.0,
  start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
  status: Models::Shared::CommerceReservationStatus::PENDING,
  updated_at: DateTime.iso8601('2023-01-05T19:25:16.176Z'),
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

res = s.reservation.create_property_reservation(property_reservation: Models::Shared::PropertyReservation.new(
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
  id: 'b212f0be-b6b2-4416-9c6e-fe23de46873d',
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
  updated_at: DateTime.iso8601('2022-11-16T10:17:00.912Z'),
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

res = s.reservation.get_commerce_reservation(connection_id: '<id>', id: '<id>')

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

res = s.reservation.get_property_reservation(connection_id: '<id>', id: '<id>')

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

res = s.reservation.list_commerce_reservations(request: req)

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

res = s.reservation.list_property_reservations(request: req)

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
    id: '319a2d40-429e-43ef-b383-adce260b2372',
    metadata: [],
    notes: 'Adsum textilis ipsum despecto.',
    size: 10.0,
    start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
    status: Models::Shared::CommerceReservationStatus::PENDING,
    updated_at: DateTime.iso8601('2023-01-05T19:25:16.180Z'),
    url: 'https://expensive-gift.org',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.reservation.patch_commerce_reservation(request: req)

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
    id: 'eac8c537-6977-4e1b-b1dc-48ed8ecf73db',
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
    updated_at: DateTime.iso8601('2022-11-16T10:17:00.915Z'),
    web_url: 'https://antique-tennis.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.reservation.patch_property_reservation(request: req)

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

res = s.reservation.remove_commerce_reservation(connection_id: '<id>', id: '<id>')

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
    id: '319a2d40-429e-43ef-b383-adce260b2372',
    metadata: [],
    notes: 'Adsum textilis ipsum despecto.',
    size: 10.0,
    start_at: DateTime.iso8601('2021-12-18T00:40:25.125Z'),
    status: Models::Shared::CommerceReservationStatus::PENDING,
    updated_at: DateTime.iso8601('2023-01-05T19:25:16.180Z'),
    url: 'https://expensive-gift.org',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.reservation.update_commerce_reservation(request: req)

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
    id: 'eac8c537-6977-4e1b-b1dc-48ed8ecf73db',
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
    updated_at: DateTime.iso8601('2022-11-16T10:17:00.915Z'),
    web_url: 'https://antique-tennis.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.reservation.update_property_reservation(request: req)

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