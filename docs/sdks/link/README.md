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

Create a link

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
  id: '8e2469fd-8bab-42e9-aa54-da11569778bc',
  is_active: true,
  name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
  price_amount: 44.0,
  price_currency: 'USD',
  updated_at: '2024-03-12T23:12:48.764Z',
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

Create a link

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
  amount: 81_211.0,
  created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
  currency: 'GYD',
  description: 'Adfero ipsa terreo benevolentia utrum.',
  id: '46f3ee1e-cf4b-4af7-b1d3-c31a40225148',
  is_active: true,
  is_chargeable_now: false,
  lineitems: [
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-08-21T00:45:53.202Z'),
      id: '22e7d036-0298-418c-ad79-36e92cd0d7e8',
      item_description: 'Experience the white brilliance of our Hat, perfect for aggravating environments',
      item_name: 'Licensed Marble Mouse',
      item_sku: 'TAD4EYLVRI',
      notes: 'Charisma theca video verus conduco attollo cervus decretum viridis.',
      tax_amount: 221.0,
      total_amount: 1841.0,
      unit_amount: 270.0,
      unit_quantity: 6.0,
      updated_at: DateTime.iso8601('2023-02-12T17:31:25.507Z'),
    ),
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-09-30T05:29:29.258Z'),
      discount_amount: 15.0,
      id: '77fee1ca-bc22-49db-bb07-47f3e1957e45',
      item_description: 'New Chicken model with 79 GB RAM, 846 GB storage, and lovely features',
      item_name: 'Intelligent Steel Table',
      item_sku: 'V8HQCDQYUZ',
      tax_amount: 150.0,
      total_amount: 2037.0,
      unit_amount: 317.0,
      unit_quantity: 6.0,
      updated_at: DateTime.iso8601('2023-05-31T11:10:09.190Z'),
    ),
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-12-16T13:52:52.341Z'),
      id: 'c0ee5076-8f1c-4443-a113-8ea7c544838b',
      item_description: 'Dach - Wolff\'s most advanced Car technology increases dense capabilities',
      item_name: 'Modern Gold Soap',
      item_sku: 'DYGKCTCLDJ',
      tax_amount: 41.0,
      total_amount: 281.0,
      unit_amount: 30.0,
      unit_quantity: 8.0,
      updated_at: DateTime.iso8601('2023-05-22T16:35:07.583Z'),
    ),
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-08-12T19:45:39.705Z'),
      id: '83c891eb-9639-419e-a820-f6ddc8452908',
      item_description: 'The sleek and unimportant Salad comes with salmon LED lighting for smart functionality',
      item_name: 'Generic Aluminum Ball',
      item_sku: 'BSBAXWAAFF',
      notes: 'Cubo adversus victus subito asperiores vereor cibo tabgo.',
      tax_amount: 6.0,
      total_amount: 78.0,
      unit_amount: 24.0,
      unit_quantity: 3.0,
      updated_at: DateTime.iso8601('2023-11-13T12:39:15.951Z'),
    ),
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-02-14T06:21:13.641Z'),
      discount_amount: 171.0,
      id: 'a3d59d29-50ed-4bbe-85f6-a4733d5346a6',
      item_description: 'New Bike model with 29 GB RAM, 271 GB storage, and minty features',
      item_name: 'Incredible Aluminum Chicken',
      item_sku: '6ERMJK20HE',
      tax_amount: 263.0,
      total_amount: 3708.0,
      unit_amount: 452.0,
      unit_quantity: 8.0,
      updated_at: DateTime.iso8601('2023-01-31T21:39:30.894Z'),
    ),
  ],
  success_url: 'https://parched-kettledrum.com/',
  updated_at: DateTime.iso8601('2025-12-29T02:08:43.660Z'),
  url: 'https://forceful-laughter.biz/',
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

Retrieve a link

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

Retrieve a link

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

List all links

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

List all links

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

Update a link

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
    id: '606a32f4-56d1-401b-a584-fff98f7e3a17',
    is_active: true,
    name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
    price_amount: 44.0,
    price_currency: 'USD',
    updated_at: '2024-03-12T23:12:48.766Z',
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

Update a link

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
    amount: 81_211.0,
    created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
    currency: 'GYD',
    description: 'Adfero ipsa terreo benevolentia utrum.',
    id: '8bebdd94-57c9-409a-9cb1-9ca4dc27c3c2',
    is_active: true,
    is_chargeable_now: false,
    lineitems: [
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-08-21T00:45:53.202Z'),
        id: 'eba18ba8-083d-4c6e-bb98-4283c96c9770',
        item_description: 'Experience the white brilliance of our Hat, perfect for aggravating environments',
        item_name: 'Licensed Marble Mouse',
        item_sku: 'TAD4EYLVRI',
        notes: 'Charisma theca video verus conduco attollo cervus decretum viridis.',
        tax_amount: 221.0,
        total_amount: 1841.0,
        unit_amount: 270.0,
        unit_quantity: 6.0,
        updated_at: DateTime.iso8601('2023-02-12T17:31:25.507Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-09-30T05:29:29.258Z'),
        discount_amount: 15.0,
        id: '349c7162-40c8-401b-9915-652f2eedcc92',
        item_description: 'New Chicken model with 79 GB RAM, 846 GB storage, and lovely features',
        item_name: 'Intelligent Steel Table',
        item_sku: 'V8HQCDQYUZ',
        tax_amount: 150.0,
        total_amount: 2037.0,
        unit_amount: 317.0,
        unit_quantity: 6.0,
        updated_at: DateTime.iso8601('2023-05-31T11:10:09.190Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-12-16T13:52:52.341Z'),
        id: '23a0aa23-4c3c-4dfe-b118-c64c7476938d',
        item_description: 'Dach - Wolff\'s most advanced Car technology increases dense capabilities',
        item_name: 'Modern Gold Soap',
        item_sku: 'DYGKCTCLDJ',
        tax_amount: 41.0,
        total_amount: 281.0,
        unit_amount: 30.0,
        unit_quantity: 8.0,
        updated_at: DateTime.iso8601('2023-05-22T16:35:07.583Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-08-12T19:45:39.705Z'),
        id: '87cdd54a-984b-492b-a4b4-4b6b9beb5f24',
        item_description: 'The sleek and unimportant Salad comes with salmon LED lighting for smart functionality',
        item_name: 'Generic Aluminum Ball',
        item_sku: 'BSBAXWAAFF',
        notes: 'Cubo adversus victus subito asperiores vereor cibo tabgo.',
        tax_amount: 6.0,
        total_amount: 78.0,
        unit_amount: 24.0,
        unit_quantity: 3.0,
        updated_at: DateTime.iso8601('2023-11-13T12:39:15.951Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-02-14T06:21:13.641Z'),
        discount_amount: 171.0,
        id: '0e57663a-06c8-4012-96b1-4946925a9dd3',
        item_description: 'New Bike model with 29 GB RAM, 271 GB storage, and minty features',
        item_name: 'Incredible Aluminum Chicken',
        item_sku: '6ERMJK20HE',
        tax_amount: 263.0,
        total_amount: 3708.0,
        unit_amount: 452.0,
        unit_quantity: 8.0,
        updated_at: DateTime.iso8601('2023-01-31T21:39:30.894Z'),
      ),
    ],
    success_url: 'https://parched-kettledrum.com/',
    updated_at: DateTime.iso8601('2025-12-29T02:08:43.678Z'),
    url: 'https://forceful-laughter.biz/',
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

Remove a link

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

Remove a link

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

Update a link

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
    id: '606a32f4-56d1-401b-a584-fff98f7e3a17',
    is_active: true,
    name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
    price_amount: 44.0,
    price_currency: 'USD',
    updated_at: '2024-03-12T23:12:48.766Z',
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

Update a link

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
    amount: 81_211.0,
    created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
    currency: 'GYD',
    description: 'Adfero ipsa terreo benevolentia utrum.',
    id: '8bebdd94-57c9-409a-9cb1-9ca4dc27c3c2',
    is_active: true,
    is_chargeable_now: false,
    lineitems: [
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-08-21T00:45:53.202Z'),
        id: 'eba18ba8-083d-4c6e-bb98-4283c96c9770',
        item_description: 'Experience the white brilliance of our Hat, perfect for aggravating environments',
        item_name: 'Licensed Marble Mouse',
        item_sku: 'TAD4EYLVRI',
        notes: 'Charisma theca video verus conduco attollo cervus decretum viridis.',
        tax_amount: 221.0,
        total_amount: 1841.0,
        unit_amount: 270.0,
        unit_quantity: 6.0,
        updated_at: DateTime.iso8601('2023-02-12T17:31:25.507Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-09-30T05:29:29.258Z'),
        discount_amount: 15.0,
        id: '349c7162-40c8-401b-9915-652f2eedcc92',
        item_description: 'New Chicken model with 79 GB RAM, 846 GB storage, and lovely features',
        item_name: 'Intelligent Steel Table',
        item_sku: 'V8HQCDQYUZ',
        tax_amount: 150.0,
        total_amount: 2037.0,
        unit_amount: 317.0,
        unit_quantity: 6.0,
        updated_at: DateTime.iso8601('2023-05-31T11:10:09.190Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-12-16T13:52:52.341Z'),
        id: '23a0aa23-4c3c-4dfe-b118-c64c7476938d',
        item_description: 'Dach - Wolff\'s most advanced Car technology increases dense capabilities',
        item_name: 'Modern Gold Soap',
        item_sku: 'DYGKCTCLDJ',
        tax_amount: 41.0,
        total_amount: 281.0,
        unit_amount: 30.0,
        unit_quantity: 8.0,
        updated_at: DateTime.iso8601('2023-05-22T16:35:07.583Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-08-12T19:45:39.705Z'),
        id: '87cdd54a-984b-492b-a4b4-4b6b9beb5f24',
        item_description: 'The sleek and unimportant Salad comes with salmon LED lighting for smart functionality',
        item_name: 'Generic Aluminum Ball',
        item_sku: 'BSBAXWAAFF',
        notes: 'Cubo adversus victus subito asperiores vereor cibo tabgo.',
        tax_amount: 6.0,
        total_amount: 78.0,
        unit_amount: 24.0,
        unit_quantity: 3.0,
        updated_at: DateTime.iso8601('2023-11-13T12:39:15.951Z'),
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-02-14T06:21:13.641Z'),
        discount_amount: 171.0,
        id: '0e57663a-06c8-4012-96b1-4946925a9dd3',
        item_description: 'New Bike model with 29 GB RAM, 271 GB storage, and minty features',
        item_name: 'Incredible Aluminum Chicken',
        item_sku: '6ERMJK20HE',
        tax_amount: 263.0,
        total_amount: 3708.0,
        unit_amount: 452.0,
        unit_quantity: 8.0,
        updated_at: DateTime.iso8601('2023-01-31T21:39:30.894Z'),
      ),
    ],
    success_url: 'https://parched-kettledrum.com/',
    updated_at: DateTime.iso8601('2025-12-29T02:08:43.678Z'),
    url: 'https://forceful-laughter.biz/',
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