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

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.subscription.create_payment_subscription(payment_subscription=Models::Shared::PaymentSubscription.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `payment_subscription`                                                            | [Models::Shared::PaymentSubscription](../../models/shared/paymentsubscription.md) | :heavy_check_mark:                                                                | N/A                                                                               |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `fields_`                                                                         | T::Array<*::String*>                                                              | :heavy_minus_sign:                                                                | Comma-delimited fields to return                                                  |

### Response

**[T.nilable(Models::Operations::CreatePaymentSubscriptionResponse)](../../models/operations/createpaymentsubscriptionresponse.md)**



## get_payment_subscription

Retrieve a subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.subscription.get_payment_subscription(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Subscription           |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetPaymentSubscriptionResponse)](../../models/operations/getpaymentsubscriptionresponse.md)**



## list_payment_subscriptions

List all subscriptions

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListPaymentSubscriptionsRequest.new(
  connection_id: "<id>",
)

res = s.subscription.list_payment_subscriptions(req)

if ! res.payment_subscriptions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListPaymentSubscriptionsRequest](../../models/operations/listpaymentsubscriptionsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListPaymentSubscriptionsResponse)](../../models/operations/listpaymentsubscriptionsresponse.md)**



## patch_payment_subscription

Update a subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.subscription.patch_payment_subscription(payment_subscription=Models::Shared::PaymentSubscription.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `payment_subscription`                                                            | [Models::Shared::PaymentSubscription](../../models/shared/paymentsubscription.md) | :heavy_check_mark:                                                                | N/A                                                                               |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `id`                                                                              | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the Subscription                                                            |
| `fields_`                                                                         | T::Array<*::String*>                                                              | :heavy_minus_sign:                                                                | Comma-delimited fields to return                                                  |

### Response

**[T.nilable(Models::Operations::PatchPaymentSubscriptionResponse)](../../models/operations/patchpaymentsubscriptionresponse.md)**



## remove_payment_subscription

Remove a subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.subscription.remove_payment_subscription(connection_id="<id>", id="<id>")

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



## update_payment_subscription

Update a subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.subscription.update_payment_subscription(payment_subscription=Models::Shared::PaymentSubscription.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `payment_subscription`                                                            | [Models::Shared::PaymentSubscription](../../models/shared/paymentsubscription.md) | :heavy_check_mark:                                                                | N/A                                                                               |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `id`                                                                              | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the Subscription                                                            |
| `fields_`                                                                         | T::Array<*::String*>                                                              | :heavy_minus_sign:                                                                | Comma-delimited fields to return                                                  |

### Response

**[T.nilable(Models::Operations::UpdatePaymentSubscriptionResponse)](../../models/operations/updatepaymentsubscriptionresponse.md)**

