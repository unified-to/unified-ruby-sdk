# Payment
(*payment*)

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

res = s.payment.create_payment_link(payment_link: Models::Shared::PaymentLink.new(
  amount: 81_211.0,
  created_at: DateTime.iso8601('2023-06-04T16:11:45.685Z'),
  currency: 'GYD',
  description: 'Adfero ipsa terreo benevolentia utrum.',
  id: 'a2762e07-7154-4cb4-9a36-3958d0000d23',
  is_active: true,
  is_chargeable_now: false,
  lineitems: [
    Models::Shared::PaymentLineitem.new(
      created_at: DateTime.iso8601('2023-08-21T00:45:53.202Z'),
      id: '1b19fdfd-2df0-49d5-8779-1702eef9b9e5',
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
      id: 'd0e68ae3-d983-4d7f-8aa1-297eaca22a63',
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
      id: '3460859a-c5e2-47fd-9b03-47e148dfc866',
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
      id: 'd6697ae1-c416-47c0-9e69-91210ecf5e40',
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
      id: 'ac31383d-31d3-4970-99e4-61351be95124',
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
  updated_at: DateTime.iso8601('2026-01-01T03:24:47.362Z'),
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

## create_payment_payment

Create a payment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPaymentPayment" method="post" path="/payment/{connection_id}/payment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.payment.create_payment_payment(payment_payment: Models::Shared::PaymentPayment.new(
  allocations: [],
  card_brand: 'AMEX',
  card_last4: '0819',
  category_ids: [],
  created_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
  currency: 'BIF',
  exchange_rate: 1.203,
  fee_amount: 3.0,
  id: 'fde3ca09-4745-4ad2-ad98-f6737783f348',
  location_id: '94f7c68e-07de-40d1-9d6f-a0896363913f',
  notes: 'Tactus vilicus.',
  paid_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
  payment_method: 'BANK_TRANSFER',
  reference: 'auctus',
  status: Models::Shared::PaymentPaymentStatus::SUCCEEDED,
  tender_type: Models::Shared::TenderType::CHECK,
  tip_amount: 2.0,
  total_amount: 44_219.0,
  type: Models::Shared::PaymentPaymentType::INVOICE,
  updated_at: DateTime.iso8601('2025-06-13T09:20:04.446Z'),
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

Create a subscription

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPaymentSubscription" method="post" path="/payment/{connection_id}/subscription" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.payment.create_payment_subscription(payment_subscription: Models::Shared::PaymentSubscription.new(
  created_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
  currency: 'WST',
  current_period_end_at: DateTime.iso8601('2023-06-03T04:20:29.157Z'),
  current_period_start_at: DateTime.iso8601('2023-05-21T03:55:58.846Z'),
  day_of_month: 1.0,
  description: 'Innovative Mouse featuring important technology and Bamboo construction',
  end_at: DateTime.iso8601('2023-05-21T12:36:09.234Z'),
  id: '261e5e3b-b755-40a8-8cda-b92c960dadd7',
  interval: 1.0,
  interval_unit: Models::Shared::IntervalUnit::MONTH,
  lineitems: [],
  start_at: DateTime.iso8601('2023-05-29T06:04:51.030Z'),
  status: Models::Shared::PaymentSubscriptionStatus::ACTIVE,
  total_amount: 75_616.0,
  updated_at: DateTime.iso8601('2023-12-20T23:10:22.458Z'),
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

Retrieve a payment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPaymentPayment" method="get" path="/payment/{connection_id}/payment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a payout

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPaymentPayout" method="get" path="/payment/{connection_id}/payout/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a refund

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPaymentRefund" method="get" path="/payment/{connection_id}/refund/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a subscription

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPaymentSubscription" method="get" path="/payment/{connection_id}/subscription/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

List all payments

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPaymentPayments" method="get" path="/payment/{connection_id}/payment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPaymentPaymentsRequest.new(
  connection_id: '<id>',
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

List all payouts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPaymentPayouts" method="get" path="/payment/{connection_id}/payout" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPaymentPayoutsRequest.new(
  connection_id: '<id>',
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

List all refunds

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPaymentRefunds" method="get" path="/payment/{connection_id}/refund" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPaymentRefundsRequest.new(
  connection_id: '<id>',
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

List all subscriptions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPaymentSubscriptions" method="get" path="/payment/{connection_id}/subscription" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPaymentSubscriptionsRequest.new(
  connection_id: '<id>',
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
    id: '8837aa17-996e-4811-8a3d-591e4ced14e1',
    is_active: true,
    is_chargeable_now: false,
    lineitems: [
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-08-21T00:45:53.202Z'),
        id: 'bf442a18-df78-4685-b6d9-c55e30e11cd4',
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
        id: 'c97660f9-4840-429b-a9f5-975696c38617',
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
        id: 'e9c9dc97-90cb-4ed9-b5cf-0ac1a8684e4c',
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
        id: '3033fba3-e303-4484-8283-41059026bf02',
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
        id: 'c8d47a47-72fd-4927-bc05-89abca650c91',
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
    updated_at: DateTime.iso8601('2026-01-01T03:24:47.377Z'),
    url: 'https://forceful-laughter.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a payment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPaymentPayment" method="patch" path="/payment/{connection_id}/payment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPaymentPaymentRequest.new(
  payment_payment: Models::Shared::PaymentPayment.new(
    allocations: [],
    card_brand: 'AMEX',
    card_last4: '0819',
    category_ids: [],
    created_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
    currency: 'BIF',
    exchange_rate: 1.203,
    fee_amount: 3.0,
    id: '4e7ff8cf-368b-4c92-9746-8c90912aecc0',
    location_id: '94f7c68e-07de-40d1-9d6f-a0896363913f',
    notes: 'Tactus vilicus.',
    paid_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
    payment_method: 'BANK_TRANSFER',
    reference: 'auctus',
    status: Models::Shared::PaymentPaymentStatus::SUCCEEDED,
    tender_type: Models::Shared::TenderType::CHECK,
    tip_amount: 2.0,
    total_amount: 44_219.0,
    type: Models::Shared::PaymentPaymentType::INVOICE,
    updated_at: DateTime.iso8601('2025-06-13T09:20:04.456Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a subscription

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPaymentSubscription" method="patch" path="/payment/{connection_id}/subscription/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPaymentSubscriptionRequest.new(
  payment_subscription: Models::Shared::PaymentSubscription.new(
    created_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
    currency: 'WST',
    current_period_end_at: DateTime.iso8601('2023-06-03T04:20:29.157Z'),
    current_period_start_at: DateTime.iso8601('2023-05-21T03:55:58.846Z'),
    day_of_month: 1.0,
    description: 'Innovative Mouse featuring important technology and Bamboo construction',
    end_at: DateTime.iso8601('2023-05-21T12:36:09.234Z'),
    id: '11d41dcd-22c0-44fe-9dbc-9cab919fcbf3',
    interval: 1.0,
    interval_unit: Models::Shared::IntervalUnit::MONTH,
    lineitems: [],
    start_at: DateTime.iso8601('2023-05-29T06:04:51.030Z'),
    status: Models::Shared::PaymentSubscriptionStatus::ACTIVE,
    total_amount: 75_616.0,
    updated_at: DateTime.iso8601('2023-12-20T23:10:22.462Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Remove a payment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePaymentPayment" method="delete" path="/payment/{connection_id}/payment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a subscription

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePaymentSubscription" method="delete" path="/payment/{connection_id}/subscription/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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
    id: '8837aa17-996e-4811-8a3d-591e4ced14e1',
    is_active: true,
    is_chargeable_now: false,
    lineitems: [
      Models::Shared::PaymentLineitem.new(
        created_at: DateTime.iso8601('2023-08-21T00:45:53.202Z'),
        id: 'bf442a18-df78-4685-b6d9-c55e30e11cd4',
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
        id: 'c97660f9-4840-429b-a9f5-975696c38617',
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
        id: 'e9c9dc97-90cb-4ed9-b5cf-0ac1a8684e4c',
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
        id: '3033fba3-e303-4484-8283-41059026bf02',
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
        id: 'c8d47a47-72fd-4927-bc05-89abca650c91',
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
    updated_at: DateTime.iso8601('2026-01-01T03:24:47.377Z'),
    url: 'https://forceful-laughter.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a payment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePaymentPayment" method="put" path="/payment/{connection_id}/payment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePaymentPaymentRequest.new(
  payment_payment: Models::Shared::PaymentPayment.new(
    allocations: [],
    card_brand: 'AMEX',
    card_last4: '0819',
    category_ids: [],
    created_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
    currency: 'BIF',
    exchange_rate: 1.203,
    fee_amount: 3.0,
    id: '4e7ff8cf-368b-4c92-9746-8c90912aecc0',
    location_id: '94f7c68e-07de-40d1-9d6f-a0896363913f',
    notes: 'Tactus vilicus.',
    paid_at: DateTime.iso8601('2022-03-10T00:19:42.086Z'),
    payment_method: 'BANK_TRANSFER',
    reference: 'auctus',
    status: Models::Shared::PaymentPaymentStatus::SUCCEEDED,
    tender_type: Models::Shared::TenderType::CHECK,
    tip_amount: 2.0,
    total_amount: 44_219.0,
    type: Models::Shared::PaymentPaymentType::INVOICE,
    updated_at: DateTime.iso8601('2025-06-13T09:20:04.456Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a subscription

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePaymentSubscription" method="put" path="/payment/{connection_id}/subscription/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePaymentSubscriptionRequest.new(
  payment_subscription: Models::Shared::PaymentSubscription.new(
    created_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
    currency: 'WST',
    current_period_end_at: DateTime.iso8601('2023-06-03T04:20:29.157Z'),
    current_period_start_at: DateTime.iso8601('2023-05-21T03:55:58.846Z'),
    day_of_month: 1.0,
    description: 'Innovative Mouse featuring important technology and Bamboo construction',
    end_at: DateTime.iso8601('2023-05-21T12:36:09.234Z'),
    id: '11d41dcd-22c0-44fe-9dbc-9cab919fcbf3',
    interval: 1.0,
    interval_unit: Models::Shared::IntervalUnit::MONTH,
    lineitems: [],
    start_at: DateTime.iso8601('2023-05-29T06:04:51.030Z'),
    status: Models::Shared::PaymentSubscriptionStatus::ACTIVE,
    total_amount: 75_616.0,
    updated_at: DateTime.iso8601('2023-12-20T23:10:22.462Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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