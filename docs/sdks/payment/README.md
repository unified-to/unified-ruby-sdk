# Payment

## Overview

### Available Operations

* [create_payment_link](#create_payment_link) - Create a link
* [create_payment_payment](#create_payment_payment) - Create a payment
* [create_payment_subscription](#create_payment_subscription) - Create a subscription
* [get_payment_link](#get_payment_link) - Retrieve a link
* [get_payment_payment](#get_payment_payment) - Retrieve a payment
* [get_payment_payout](#get_payment_payout) - Retrieve a payout
* [get_payment_refund](#get_payment_refund) - Retrieve a refund
* [get_payment_subscription](#get_payment_subscription) - Retrieve a subscription
* [list_payment_links](#list_payment_links) - List all links
* [list_payment_payments](#list_payment_payments) - List all payments
* [list_payment_payouts](#list_payment_payouts) - List all payouts
* [list_payment_refunds](#list_payment_refunds) - List all refunds
* [list_payment_subscriptions](#list_payment_subscriptions) - List all subscriptions
* [patch_payment_link](#patch_payment_link) - Update a link
* [patch_payment_payment](#patch_payment_payment) - Update a payment
* [patch_payment_subscription](#patch_payment_subscription) - Update a subscription
* [remove_payment_link](#remove_payment_link) - Remove a link
* [remove_payment_payment](#remove_payment_payment) - Remove a payment
* [remove_payment_subscription](#remove_payment_subscription) - Remove a subscription
* [update_payment_link](#update_payment_link) - Update a link
* [update_payment_payment](#update_payment_payment) - Update a payment
* [update_payment_subscription](#update_payment_subscription) - Update a subscription

## create_payment_link

Creates a PaymentLink. Provide the unified PaymentLink fields in the request body; they are mapped to the provider's API. Returns the created PaymentLink.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPaymentLink" method="post" path="/payment/{connection_id}/link" example="payment_link" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.create_payment_link(payment_link: Models::Shared::PaymentLink.new(
  amount: 17_001.68,
  contact_email: 'Clovis8@yahoo.com',
  contact_name: 'Lilliana Dibbert',
  contact_phone: '963-764-0961',
  created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
  currency: 'CAD',
  description: 'The Daron Sausages is the latest in a series of informal products from Dach, Beatty and Moen',
  id: 'efd74ee7-e0f7-443c-b71d-f7265ca45f47',
  is_active: true,
  is_chargeable_now: true,
  lineitems: [
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      id: 'f9d5bb28-722a-4a8e-9b37-c8eb49610b30',
      item_description: 'Introducing the Syrian Arab Republic-inspired Chips, blending neat style with local craftsmanship',
      item_name: 'Electronic Metal Tuna',
      tax_amount: 0.0,
      total_amount: 9342.0,
      unit_amount: 519.0,
      unit_quantity: 18.0,
      updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z')
    ),
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      discount_amount: 424.32,
      id: '7b9c2c9f-92fa-4c8c-8bb1-0491d2be9b08',
      item_description: 'Soft Computer designed with Bronze for junior performance',
      item_name: 'Rustic Concrete Shoes',
      notes: 'Doloremque appositus cito cursim bellicus rerum ubi voluptatibus.',
      tax_amount: 0.0,
      total_amount: 6647.68,
      unit_amount: 884.0,
      unit_quantity: 8.0,
      updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z')
    ),
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
      id: '2e4f5352-c7ea-4c82-9f01-00b5e05fad51',
      item_description: 'The Donnie Shirt is the latest in a series of tinted products from Nitzsche and Sons',
      item_name: 'Intelligent Marble Keyboard',
      notes: 'Damnatio aut bene.',
      tax_amount: 0.0,
      total_amount: 1012.0,
      unit_amount: 506.0,
      unit_quantity: 2.0,
      updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z')
    ),
  ],
  metadata: [],
  success_url: 'https://finished-retention.com',
  updated_at: DateTime.iso8601('2024-04-23T01:25:37.275Z'),
  url: 'https://pay.example.com/efd74ee7-e0f7-443c-b71d-f7265ca45f47'
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

## create_payment_payment

Creates a PaymentPayment. Provide the unified PaymentPayment fields in the request body; they are mapped to the provider's API. Returns the created PaymentPayment.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPaymentPayment" method="post" path="/payment/{connection_id}/payment" example="payment_payment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.create_payment_payment(payment_payment: Models::Shared::PaymentPayment.new(
  allocations: [],
  card_brand: 'MASTERCARD',
  card_last4: '8048',
  category_ids: [],
  created_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
  currency: 'EUR',
  fee_amount: 2055.82,
  id: '978cb422-a914-4555-b138-ad9381d36394',
  metadata: [],
  net_amount: 68_824.18,
  notes: 'Auctus patruus causa vulnus decet thymum curvo eligendi.',
  paid_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
  payment_method: 'CASH',
  reference: 'PMT-119080',
  status: Models::Shared::PaymentPaymentStatus::SUCCEEDED,
  tender_type: Models::Shared::TenderType::CASH,
  tip_amount: 0.0,
  total_amount: 70_880.0,
  type: Models::Shared::PaymentPaymentType::INVOICE,
  updated_at: DateTime.iso8601('2025-11-06T12:27:17.811Z')
), connection_id: '<id>')

unless res.payment_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `payment_payment`                                                                                                                                | [Models::Shared::PaymentPayment](../../models/shared/paymentpayment.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePaymentPaymentQueryParamFields](../../models/operations/createpaymentpaymentqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePaymentPaymentResponse)](../../models/operations/createpaymentpaymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_payment_subscription

Creates a PaymentSubscription. Provide the unified PaymentSubscription fields in the request body; they are mapped to the provider's API. Returns the created PaymentSubscription.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPaymentSubscription" method="post" path="/payment/{connection_id}/subscription" example="payment_subscription" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.create_payment_subscription(payment_subscription: Models::Shared::PaymentSubscription.new(
  created_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
  currency: 'USD',
  current_period_end_at: DateTime.iso8601('2024-02-08T10:05:22.912Z'),
  current_period_start_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
  day_of_month: 8.0,
  description: 'New Bike model with 94 GB RAM, 813 GB storage, and narrow features',
  id: '5fa4bd97-83dc-46e8-8b8f-da2a0f211a38',
  interval: 1.0,
  interval_unit: Models::Shared::IntervalUnit::YEAR,
  lineitems: [],
  metadata: [],
  month: 5.0,
  start_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
  status: Models::Shared::PaymentSubscriptionStatus::ACTIVE,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2023-10-09T00:43:27.420Z')
), connection_id: '<id>')

unless res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `payment_subscription`                                                                                                                           | [Models::Shared::PaymentSubscription](../../models/shared/paymentsubscription.md)                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePaymentSubscriptionQueryParamFields](../../models/operations/createpaymentsubscriptionqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePaymentSubscriptionResponse)](../../models/operations/createpaymentsubscriptionresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.get_payment_link(connection_id: '<id>', id: '<id>')

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

## get_payment_payment

Retrieves a single PaymentPayment by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPaymentPayment" method="get" path="/payment/{connection_id}/payment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.get_payment_payment(connection_id: '<id>', id: '<id>')

unless res.payment_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Payment                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPaymentPaymentQueryParamFields](../../models/operations/getpaymentpaymentqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPaymentPaymentResponse)](../../models/operations/getpaymentpaymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_payment_payout

Retrieves a single PaymentPayout by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPaymentPayout" method="get" path="/payment/{connection_id}/payout/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.get_payment_payout(connection_id: '<id>', id: '<id>')

unless res.payment_payout.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Payout                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPaymentPayoutQueryParamFields](../../models/operations/getpaymentpayoutqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPaymentPayoutResponse)](../../models/operations/getpaymentpayoutresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_payment_refund

Retrieves a single PaymentRefund by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPaymentRefund" method="get" path="/payment/{connection_id}/refund/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.get_payment_refund(connection_id: '<id>', id: '<id>')

unless res.payment_refund.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Refund                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPaymentRefundQueryParamFields](../../models/operations/getpaymentrefundqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPaymentRefundResponse)](../../models/operations/getpaymentrefundresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_payment_subscription

Retrieves a single PaymentSubscription by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPaymentSubscription" method="get" path="/payment/{connection_id}/subscription/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.get_payment_subscription(connection_id: '<id>', id: '<id>')

unless res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Subscription                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPaymentSubscriptionQueryParamFields](../../models/operations/getpaymentsubscriptionqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPaymentSubscriptionResponse)](../../models/operations/getpaymentsubscriptionresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPaymentLinksRequest.new(
  connection_id: '<id>'
)
res = s.payment.list_payment_links(request: req)

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

## list_payment_payments

Returns a list of PaymentPayments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPaymentPayments" method="get" path="/payment/{connection_id}/payment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPaymentPaymentsRequest.new(
  connection_id: '<id>'
)
res = s.payment.list_payment_payments(request: req)

unless res.payment_payments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListPaymentPaymentsRequest](../../models/operations/listpaymentpaymentsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListPaymentPaymentsResponse)](../../models/operations/listpaymentpaymentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_payment_payouts

Returns a list of PaymentPayouts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPaymentPayouts" method="get" path="/payment/{connection_id}/payout" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPaymentPayoutsRequest.new(
  connection_id: '<id>'
)
res = s.payment.list_payment_payouts(request: req)

unless res.payment_payouts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListPaymentPayoutsRequest](../../models/operations/listpaymentpayoutsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListPaymentPayoutsResponse)](../../models/operations/listpaymentpayoutsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_payment_refunds

Returns a list of PaymentRefunds. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPaymentRefunds" method="get" path="/payment/{connection_id}/refund" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPaymentRefundsRequest.new(
  connection_id: '<id>'
)
res = s.payment.list_payment_refunds(request: req)

unless res.payment_refunds.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListPaymentRefundsRequest](../../models/operations/listpaymentrefundsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListPaymentRefundsResponse)](../../models/operations/listpaymentrefundsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_payment_subscriptions

Returns a list of PaymentSubscriptions. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPaymentSubscriptions" method="get" path="/payment/{connection_id}/subscription" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPaymentSubscriptionsRequest.new(
  connection_id: '<id>'
)
res = s.payment.list_payment_subscriptions(request: req)

unless res.payment_subscriptions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListPaymentSubscriptionsRequest](../../models/operations/listpaymentsubscriptionsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListPaymentSubscriptionsResponse)](../../models/operations/listpaymentsubscriptionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_payment_link

Updates the PaymentLink identified by `id`. Provide the unified PaymentLink fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPaymentLink" method="patch" path="/payment/{connection_id}/link/{id}" example="payment_link" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchPaymentLinkRequest.new(
  payment_link: Models::Shared::PaymentLink.new(
    amount: 17_001.68,
    contact_email: 'Clovis8@yahoo.com',
    contact_name: 'Lilliana Dibbert',
    contact_phone: '963-764-0961',
    created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
    currency: 'CAD',
    description: 'The Daron Sausages is the latest in a series of informal products from Dach, Beatty and Moen',
    id: '24af7ca0-69d5-41c4-8b89-baf59a8b7a2a',
    is_active: true,
    is_chargeable_now: true,
    lineitems: [
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        id: 'feec1e4f-f33d-4a96-8bd5-55c583a57083',
        item_description: 'Introducing the Syrian Arab Republic-inspired Chips, blending neat style with local craftsmanship',
        item_name: 'Electronic Metal Tuna',
        tax_amount: 0.0,
        total_amount: 9342.0,
        unit_amount: 519.0,
        unit_quantity: 18.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z')
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        discount_amount: 424.32,
        id: 'fdfee0a9-9aea-40d0-9c10-be7f55d91be9',
        item_description: 'Soft Computer designed with Bronze for junior performance',
        item_name: 'Rustic Concrete Shoes',
        notes: 'Doloremque appositus cito cursim bellicus rerum ubi voluptatibus.',
        tax_amount: 0.0,
        total_amount: 6647.68,
        unit_amount: 884.0,
        unit_quantity: 8.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z')
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        id: 'b3e23392-3909-4927-8e36-7b6a97c4799f',
        item_description: 'The Donnie Shirt is the latest in a series of tinted products from Nitzsche and Sons',
        item_name: 'Intelligent Marble Keyboard',
        notes: 'Damnatio aut bene.',
        tax_amount: 0.0,
        total_amount: 1012.0,
        unit_amount: 506.0,
        unit_quantity: 2.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z')
      ),
    ],
    metadata: [],
    success_url: 'https://finished-retention.com',
    updated_at: DateTime.iso8601('2024-04-23T01:25:37.281Z'),
    url: 'https://pay.example.com/24af7ca0-69d5-41c4-8b89-baf59a8b7a2a'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.payment.patch_payment_link(request: req)

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

## patch_payment_payment

Updates the PaymentPayment identified by `id`. Provide the unified PaymentPayment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPaymentPayment" method="patch" path="/payment/{connection_id}/payment/{id}" example="payment_payment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchPaymentPaymentRequest.new(
  payment_payment: Models::Shared::PaymentPayment.new(
    allocations: [],
    card_brand: 'MASTERCARD',
    card_last4: '8048',
    category_ids: [],
    created_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
    currency: 'EUR',
    fee_amount: 2055.82,
    id: 'd99f5760-23f6-42ae-b397-13ac8289eff3',
    metadata: [],
    net_amount: 68_824.18,
    notes: 'Auctus patruus causa vulnus decet thymum curvo eligendi.',
    paid_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
    payment_method: 'CASH',
    reference: 'PMT-119080',
    status: Models::Shared::PaymentPaymentStatus::SUCCEEDED,
    tender_type: Models::Shared::TenderType::CASH,
    tip_amount: 0.0,
    total_amount: 70_880.0,
    type: Models::Shared::PaymentPaymentType::INVOICE,
    updated_at: DateTime.iso8601('2025-11-06T12:27:17.833Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.payment.patch_payment_payment(request: req)

unless res.payment_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchPaymentPaymentRequest](../../models/operations/patchpaymentpaymentrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchPaymentPaymentResponse)](../../models/operations/patchpaymentpaymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_payment_subscription

Updates the PaymentSubscription identified by `id`. Provide the unified PaymentSubscription fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPaymentSubscription" method="patch" path="/payment/{connection_id}/subscription/{id}" example="payment_subscription" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchPaymentSubscriptionRequest.new(
  payment_subscription: Models::Shared::PaymentSubscription.new(
    created_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
    currency: 'USD',
    current_period_end_at: DateTime.iso8601('2024-02-08T10:05:22.912Z'),
    current_period_start_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
    day_of_month: 8.0,
    description: 'New Bike model with 94 GB RAM, 813 GB storage, and narrow features',
    id: '3618cde6-66a3-419b-b9fb-7bec7f3467d8',
    interval: 1.0,
    interval_unit: Models::Shared::IntervalUnit::YEAR,
    lineitems: [],
    metadata: [],
    month: 5.0,
    start_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
    status: Models::Shared::PaymentSubscriptionStatus::ACTIVE,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-10-09T00:43:27.423Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.payment.patch_payment_subscription(request: req)

unless res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::PatchPaymentSubscriptionRequest](../../models/operations/patchpaymentsubscriptionrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::PatchPaymentSubscriptionResponse)](../../models/operations/patchpaymentsubscriptionresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.remove_payment_link(connection_id: '<id>', id: '<id>')

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

## remove_payment_payment

Deletes the PaymentPayment identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePaymentPayment" method="delete" path="/payment/{connection_id}/payment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.remove_payment_payment(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Payment    |

### Response

**[T.nilable(Models::Operations::RemovePaymentPaymentResponse)](../../models/operations/removepaymentpaymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_payment_subscription

Deletes the PaymentSubscription identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePaymentSubscription" method="delete" path="/payment/{connection_id}/subscription/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.payment.remove_payment_subscription(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Subscription |

### Response

**[T.nilable(Models::Operations::RemovePaymentSubscriptionResponse)](../../models/operations/removepaymentsubscriptionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_payment_link

Updates the PaymentLink identified by `id`. Provide the unified PaymentLink fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePaymentLink" method="put" path="/payment/{connection_id}/link/{id}" example="payment_link" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdatePaymentLinkRequest.new(
  payment_link: Models::Shared::PaymentLink.new(
    amount: 17_001.68,
    contact_email: 'Clovis8@yahoo.com',
    contact_name: 'Lilliana Dibbert',
    contact_phone: '963-764-0961',
    created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
    currency: 'CAD',
    description: 'The Daron Sausages is the latest in a series of informal products from Dach, Beatty and Moen',
    id: '24af7ca0-69d5-41c4-8b89-baf59a8b7a2a',
    is_active: true,
    is_chargeable_now: true,
    lineitems: [
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        id: 'feec1e4f-f33d-4a96-8bd5-55c583a57083',
        item_description: 'Introducing the Syrian Arab Republic-inspired Chips, blending neat style with local craftsmanship',
        item_name: 'Electronic Metal Tuna',
        tax_amount: 0.0,
        total_amount: 9342.0,
        unit_amount: 519.0,
        unit_quantity: 18.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z')
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        discount_amount: 424.32,
        id: 'fdfee0a9-9aea-40d0-9c10-be7f55d91be9',
        item_description: 'Soft Computer designed with Bronze for junior performance',
        item_name: 'Rustic Concrete Shoes',
        notes: 'Doloremque appositus cito cursim bellicus rerum ubi voluptatibus.',
        tax_amount: 0.0,
        total_amount: 6647.68,
        unit_amount: 884.0,
        unit_quantity: 8.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z')
      ),
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
        id: 'b3e23392-3909-4927-8e36-7b6a97c4799f',
        item_description: 'The Donnie Shirt is the latest in a series of tinted products from Nitzsche and Sons',
        item_name: 'Intelligent Marble Keyboard',
        notes: 'Damnatio aut bene.',
        tax_amount: 0.0,
        total_amount: 1012.0,
        unit_amount: 506.0,
        unit_quantity: 2.0,
        updated_at: DateTime.iso8601('2023-06-04T16:11:45.685Z')
      ),
    ],
    metadata: [],
    success_url: 'https://finished-retention.com',
    updated_at: DateTime.iso8601('2024-04-23T01:25:37.281Z'),
    url: 'https://pay.example.com/24af7ca0-69d5-41c4-8b89-baf59a8b7a2a'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.payment.update_payment_link(request: req)

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

## update_payment_payment

Updates the PaymentPayment identified by `id`. Provide the unified PaymentPayment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePaymentPayment" method="put" path="/payment/{connection_id}/payment/{id}" example="payment_payment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdatePaymentPaymentRequest.new(
  payment_payment: Models::Shared::PaymentPayment.new(
    allocations: [],
    card_brand: 'MASTERCARD',
    card_last4: '8048',
    category_ids: [],
    created_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
    currency: 'EUR',
    fee_amount: 2055.82,
    id: 'd99f5760-23f6-42ae-b397-13ac8289eff3',
    metadata: [],
    net_amount: 68_824.18,
    notes: 'Auctus patruus causa vulnus decet thymum curvo eligendi.',
    paid_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
    payment_method: 'CASH',
    reference: 'PMT-119080',
    status: Models::Shared::PaymentPaymentStatus::SUCCEEDED,
    tender_type: Models::Shared::TenderType::CASH,
    tip_amount: 0.0,
    total_amount: 70_880.0,
    type: Models::Shared::PaymentPaymentType::INVOICE,
    updated_at: DateTime.iso8601('2025-11-06T12:27:17.833Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.payment.update_payment_payment(request: req)

unless res.payment_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdatePaymentPaymentRequest](../../models/operations/updatepaymentpaymentrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdatePaymentPaymentResponse)](../../models/operations/updatepaymentpaymentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_payment_subscription

Updates the PaymentSubscription identified by `id`. Provide the unified PaymentSubscription fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePaymentSubscription" method="put" path="/payment/{connection_id}/subscription/{id}" example="payment_subscription" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdatePaymentSubscriptionRequest.new(
  payment_subscription: Models::Shared::PaymentSubscription.new(
    created_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
    currency: 'USD',
    current_period_end_at: DateTime.iso8601('2024-02-08T10:05:22.912Z'),
    current_period_start_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
    day_of_month: 8.0,
    description: 'New Bike model with 94 GB RAM, 813 GB storage, and narrow features',
    id: '3618cde6-66a3-419b-b9fb-7bec7f3467d8',
    interval: 1.0,
    interval_unit: Models::Shared::IntervalUnit::YEAR,
    lineitems: [],
    metadata: [],
    month: 5.0,
    start_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
    status: Models::Shared::PaymentSubscriptionStatus::ACTIVE,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-10-09T00:43:27.423Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.payment.update_payment_subscription(request: req)

unless res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::UpdatePaymentSubscriptionRequest](../../models/operations/updatepaymentsubscriptionrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::UpdatePaymentSubscriptionResponse)](../../models/operations/updatepaymentsubscriptionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |