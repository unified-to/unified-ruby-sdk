# Link
(*link*)

## Overview

### Available Operations

* [create_calendar_link](#create_calendar_link) - Create a link
* [create_payment_link](#create_payment_link) - Create a link
* [get_calendar_link](#get_calendar_link) - Retrieve a link
* [get_payment_link](#get_payment_link) - Retrieve a link
* [list_calendar_links](#list_calendar_links) - List all links
* [list_payment_links](#list_payment_links) - List all links
* [patch_calendar_link](#patch_calendar_link) - Update a link
* [patch_payment_link](#patch_payment_link) - Update a link
* [remove_calendar_link](#remove_calendar_link) - Remove a link
* [remove_payment_link](#remove_payment_link) - Remove a link
* [update_calendar_link](#update_calendar_link) - Update a link
* [update_payment_link](#update_payment_link) - Update a link

## create_calendar_link

Creates a CalendarLink. Provide the unified CalendarLink fields in the request body; they are mapped to the provider's API. Returns the created CalendarLink.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCalendarLink" method="post" path="/calendar/{connection_id}/link" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.link.create_calendar_link(calendar_link: Models::Shared::CalendarLink.new(
  created_at: '2023-03-07T13:34:11.959Z',
  description: 'Vitium clibanus laboriosam uxor denuncio.',
  duration: 74.0,
  id: 'cb0ede8b-ce7e-4acb-a53b-6f9a026300ca',
  is_active: true,
  metadata: [],
  name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
  price_amount: 44.0,
  price_currency: 'USD',
  updated_at: '2024-03-16T02:30:17.555Z',
  url: 'https://annual-apricot.info/',
), connection_id: '<id>')

unless res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `calendar_link`                                                                                                                                  | [Models::Shared::CalendarLink](../../models/shared/calendarlink.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCalendarLinkQueryParamFields](../../models/operations/createcalendarlinkqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCalendarLinkResponse)](../../models/operations/createcalendarlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_payment_link

Creates a PaymentLink. Provide the unified PaymentLink fields in the request body; they are mapped to the provider's API. Returns the created PaymentLink.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPaymentLink" method="post" path="/payment/{connection_id}/link" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.link.create_payment_link(payment_link: Models::Shared::PaymentLink.new(
  amount: 17_001.68,
  created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
  currency: 'CAD',
  description: 'Savor the tender essence in our Ball, designed for dim culinary adventures',
  id: '765123bb-168f-44bd-8ff1-b440b0fcc73a',
  is_active: true,
  is_chargeable_now: true,
  lineitems: [
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      id: '90540f29-2c87-41f2-8621-34943b4e1cc0',
      item_description: 'Discover the worst new Computer with an exciting mix of Steel ingredients',
      item_name: 'Soft Marble Cheese',
      tax_amount: 0.0,
      total_amount: 9342.0,
      unit_amount: 519.0,
      unit_quantity: 18.0,
      updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
    ),
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      discount_amount: 424.32,
      id: 'daf81fca-e707-4ab1-a9ba-f519f0a9206e',
      item_description: 'Innovative Shoes featuring utilized technology and Cotton construction',
      item_name: 'Sleek Aluminum Shoes',
      notes: 'Cervus decretum viridis doloremque.',
      tax_amount: 0.0,
      total_amount: 6_647.68,
      unit_amount: 884.0,
      unit_quantity: 8.0,
      updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
    ),
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      id: '8a3e2f38-e3db-476f-bacb-ad478a662f6b',
      item_description: 'Featuring Osmium-enhanced technology, our Soap offers unparalleled major performance',
      item_name: 'Elegant Concrete Gloves',
      notes: 'Desipio usque vacuus currus cetera testimonium.',
      tax_amount: 0.0,
      total_amount: 1012.0,
      unit_amount: 506.0,
      unit_quantity: 2.0,
      updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
    ),
  ],
  metadata: [],
  success_url: 'https://tinted-jet.info',
  updated_at: DateTime.iso8601('2024-04-13T21:38:29.534Z'),
  url: 'https://pay.example.com/765123bb-168f-44bd-8ff1-b440b0fcc73a',
), connection_id: '<id>')

unless res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `payment_link`                                                                                                                                   | [Models::Shared::PaymentLink](../../models/shared/paymentlink.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePaymentLinkQueryParamFields](../../models/operations/createpaymentlinkqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePaymentLinkResponse)](../../models/operations/createpaymentlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_calendar_link

Retrieves a single CalendarLink by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCalendarLink" method="get" path="/calendar/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.link.get_calendar_link(connection_id: '<id>', id: '<id>')

unless res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Link                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCalendarLinkQueryParamFields](../../models/operations/getcalendarlinkqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCalendarLinkResponse)](../../models/operations/getcalendarlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_payment_link

Retrieves a single PaymentLink by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPaymentLink" method="get" path="/payment/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.link.get_payment_link(connection_id: '<id>', id: '<id>')

unless res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Link                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPaymentLinkQueryParamFields](../../models/operations/getpaymentlinkqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPaymentLinkResponse)](../../models/operations/getpaymentlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_links

Returns a list of CalendarLinks. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarLinks" method="get" path="/calendar/{connection_id}/link" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCalendarLinksRequest.new(
  connection_id: '<id>',
)

res = s.link.list_calendar_links(request: req)

unless res.calendar_links.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListCalendarLinksRequest](../../models/operations/listcalendarlinksrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListCalendarLinksResponse)](../../models/operations/listcalendarlinksresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_payment_links

Returns a list of PaymentLinks. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPaymentLinks" method="get" path="/payment/{connection_id}/link" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPaymentLinksRequest.new(
  connection_id: '<id>',
)

res = s.link.list_payment_links(request: req)

unless res.payment_links.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListPaymentLinksRequest](../../models/operations/listpaymentlinksrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListPaymentLinksResponse)](../../models/operations/listpaymentlinksresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_calendar_link

Updates the CalendarLink identified by `id`. Provide the unified CalendarLink fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCalendarLink" method="patch" path="/calendar/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCalendarLinkRequest.new(
  calendar_link: Models::Shared::CalendarLink.new(
    created_at: '2023-03-07T13:34:11.959Z',
    description: 'Vitium clibanus laboriosam uxor denuncio.',
    duration: 74.0,
    id: 'f74de0f1-7ad4-41d2-9caf-be2a2c0a11aa',
    is_active: true,
    metadata: [],
    name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
    price_amount: 44.0,
    price_currency: 'USD',
    updated_at: '2024-03-16T02:30:17.560Z',
    url: 'https://annual-apricot.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.link.patch_calendar_link(request: req)

unless res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchCalendarLinkRequest](../../models/operations/patchcalendarlinkrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchCalendarLinkResponse)](../../models/operations/patchcalendarlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_payment_link

Updates the PaymentLink identified by `id`. Provide the unified PaymentLink fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPaymentLink" method="patch" path="/payment/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPaymentLinkRequest.new(
  payment_link: Models::Shared::PaymentLink.new(
    amount: 17_001.68,
    created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
    currency: 'CAD',
    description: 'Savor the tender essence in our Ball, designed for dim culinary adventures',
    id: 'ab310546-5a30-4ae4-a471-0f9440b670ce',
    is_active: true,
    is_chargeable_now: true,
    lineitems: [
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        id: '645b6fd7-aedb-4967-96d1-3c370be28c35',
        item_description: 'Discover the worst new Computer with an exciting mix of Steel ingredients',
        item_name: 'Soft Marble Cheese',
        tax_amount: 0.0,
        total_amount: 9342.0,
        unit_amount: 519.0,
        unit_quantity: 18.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        discount_amount: 424.32,
        id: '35643734-60d3-4125-898d-565d7537e987',
        item_description: 'Innovative Shoes featuring utilized technology and Cotton construction',
        item_name: 'Sleek Aluminum Shoes',
        notes: 'Cervus decretum viridis doloremque.',
        tax_amount: 0.0,
        total_amount: 6_647.68,
        unit_amount: 884.0,
        unit_quantity: 8.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        id: 'ddd1e563-8fbf-4b2f-8adf-31f7e103de69',
        item_description: 'Featuring Osmium-enhanced technology, our Soap offers unparalleled major performance',
        item_name: 'Elegant Concrete Gloves',
        notes: 'Desipio usque vacuus currus cetera testimonium.',
        tax_amount: 0.0,
        total_amount: 1012.0,
        unit_amount: 506.0,
        unit_quantity: 2.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      ),
    ],
    metadata: [],
    success_url: 'https://tinted-jet.info',
    updated_at: DateTime.iso8601('2024-04-13T21:38:29.541Z'),
    url: 'https://pay.example.com/ab310546-5a30-4ae4-a471-0f9440b670ce',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.link.patch_payment_link(request: req)

unless res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchPaymentLinkRequest](../../models/operations/patchpaymentlinkrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchPaymentLinkResponse)](../../models/operations/patchpaymentlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_calendar_link

Deletes the CalendarLink identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCalendarLink" method="delete" path="/calendar/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.link.remove_calendar_link(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Link       |

### Response

**[T.nilable(Models::Operations::RemoveCalendarLinkResponse)](../../models/operations/removecalendarlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_payment_link

Deletes the PaymentLink identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePaymentLink" method="delete" path="/payment/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.link.remove_payment_link(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Link       |

### Response

**[T.nilable(Models::Operations::RemovePaymentLinkResponse)](../../models/operations/removepaymentlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_calendar_link

Updates the CalendarLink identified by `id`. Provide the unified CalendarLink fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCalendarLink" method="put" path="/calendar/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCalendarLinkRequest.new(
  calendar_link: Models::Shared::CalendarLink.new(
    created_at: '2023-03-07T13:34:11.959Z',
    description: 'Vitium clibanus laboriosam uxor denuncio.',
    duration: 74.0,
    id: 'f74de0f1-7ad4-41d2-9caf-be2a2c0a11aa',
    is_active: true,
    metadata: [],
    name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
    price_amount: 44.0,
    price_currency: 'USD',
    updated_at: '2024-03-16T02:30:17.560Z',
    url: 'https://annual-apricot.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.link.update_calendar_link(request: req)

unless res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateCalendarLinkRequest](../../models/operations/updatecalendarlinkrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateCalendarLinkResponse)](../../models/operations/updatecalendarlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_payment_link

Updates the PaymentLink identified by `id`. Provide the unified PaymentLink fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePaymentLink" method="put" path="/payment/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePaymentLinkRequest.new(
  payment_link: Models::Shared::PaymentLink.new(
    amount: 17_001.68,
    created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
    currency: 'CAD',
    description: 'Savor the tender essence in our Ball, designed for dim culinary adventures',
    id: 'ab310546-5a30-4ae4-a471-0f9440b670ce',
    is_active: true,
    is_chargeable_now: true,
    lineitems: [
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        id: '645b6fd7-aedb-4967-96d1-3c370be28c35',
        item_description: 'Discover the worst new Computer with an exciting mix of Steel ingredients',
        item_name: 'Soft Marble Cheese',
        tax_amount: 0.0,
        total_amount: 9342.0,
        unit_amount: 519.0,
        unit_quantity: 18.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        discount_amount: 424.32,
        id: '35643734-60d3-4125-898d-565d7537e987',
        item_description: 'Innovative Shoes featuring utilized technology and Cotton construction',
        item_name: 'Sleek Aluminum Shoes',
        notes: 'Cervus decretum viridis doloremque.',
        tax_amount: 0.0,
        total_amount: 6_647.68,
        unit_amount: 884.0,
        unit_quantity: 8.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        id: 'ddd1e563-8fbf-4b2f-8adf-31f7e103de69',
        item_description: 'Featuring Osmium-enhanced technology, our Soap offers unparalleled major performance',
        item_name: 'Elegant Concrete Gloves',
        notes: 'Desipio usque vacuus currus cetera testimonium.',
        tax_amount: 0.0,
        total_amount: 1012.0,
        unit_amount: 506.0,
        unit_quantity: 2.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      ),
    ],
    metadata: [],
    success_url: 'https://tinted-jet.info',
    updated_at: DateTime.iso8601('2024-04-13T21:38:29.541Z'),
    url: 'https://pay.example.com/ab310546-5a30-4ae4-a471-0f9440b670ce',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.link.update_payment_link(request: req)

unless res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdatePaymentLinkRequest](../../models/operations/updatepaymentlinkrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdatePaymentLinkResponse)](../../models/operations/updatepaymentlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |