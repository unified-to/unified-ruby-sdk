# Subscription
(*subscription*)

## Overview

### Available Operations

* [create_payment_subscription](#create_payment_subscription) - Create a subscription
* [get_payment_subscription](#get_payment_subscription) - Retrieve a subscription
* [list_payment_subscriptions](#list_payment_subscriptions) - List all subscriptions
* [patch_payment_subscription](#patch_payment_subscription) - Update a subscription
* [remove_payment_subscription](#remove_payment_subscription) - Remove a subscription
* [update_payment_subscription](#update_payment_subscription) - Update a subscription

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

res = s.subscription.create_payment_subscription(payment_subscription: Models::Shared::PaymentSubscription.new(
  created_at: DateTime.iso8601('2023-05-08T10:11:03.414Z'),
  currency: 'WST',
  current_period_end_at: DateTime.iso8601('2023-06-03T04:20:29.157Z'),
  current_period_start_at: DateTime.iso8601('2023-05-21T03:55:58.846Z'),
  day_of_month: 1.0,
  description: 'Innovative Mouse featuring important technology and Bamboo construction',
  end_at: DateTime.iso8601('2023-05-21T12:36:09.234Z'),
  id: 'b4b1065f-cae9-4adf-a6d3-788815a91798',
  interval: 1.0,
  interval_unit: Models::Shared::IntervalUnit::MONTH,
  lineitems: [],
  start_at: DateTime.iso8601('2023-05-29T06:04:51.030Z'),
  status: Models::Shared::PaymentSubscriptionStatus::ACTIVE,
  total_amount: 75_616.0,
  updated_at: DateTime.iso8601('2023-12-15T22:32:44.153Z'),
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

res = s.subscription.get_payment_subscription(connection_id: '<id>', id: '<id>')

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

res = s.subscription.list_payment_subscriptions(request: req)

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
    id: 'e0cecaf0-9a2c-4a5d-8d75-019d8be80964',
    interval: 1.0,
    interval_unit: Models::Shared::IntervalUnit::MONTH,
    lineitems: [],
    start_at: DateTime.iso8601('2023-05-29T06:04:51.030Z'),
    status: Models::Shared::PaymentSubscriptionStatus::ACTIVE,
    total_amount: 75_616.0,
    updated_at: DateTime.iso8601('2023-12-15T22:32:44.157Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.subscription.patch_payment_subscription(request: req)

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

res = s.subscription.remove_payment_subscription(connection_id: '<id>', id: '<id>')

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
    id: 'e0cecaf0-9a2c-4a5d-8d75-019d8be80964',
    interval: 1.0,
    interval_unit: Models::Shared::IntervalUnit::MONTH,
    lineitems: [],
    start_at: DateTime.iso8601('2023-05-29T06:04:51.030Z'),
    status: Models::Shared::PaymentSubscriptionStatus::ACTIVE,
    total_amount: 75_616.0,
    updated_at: DateTime.iso8601('2023-12-15T22:32:44.157Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.subscription.update_payment_subscription(request: req)

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