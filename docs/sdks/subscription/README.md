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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.subscription.create_payment_subscription(connection_id="<id>", payment_subscription=::UnifiedRubySDK::Shared::PaymentSubscription.new(), fields_=[
  "<value>",
])

if ! res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                              | Type                                                                                                   | Required                                                                                               | Description                                                                                            |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                        | *::String*                                                                                             | :heavy_check_mark:                                                                                     | ID of the connection                                                                                   |
| `payment_subscription`                                                                                 | [T.nilable(::UnifiedRubySDK::Shared::PaymentSubscription)](../../models/shared/paymentsubscription.md) | :heavy_minus_sign:                                                                                     | N/A                                                                                                    |
| `fields_`                                                                                              | T::Array<*::String*>                                                                                   | :heavy_minus_sign:                                                                                     | Comma-delimited fields to return                                                                       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreatePaymentSubscriptionResponse)](../../models/operations/createpaymentsubscriptionresponse.md)**



## get_payment_subscription

Retrieve a subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
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

**[T.nilable(::UnifiedRubySDK::Operations::GetPaymentSubscriptionResponse)](../../models/operations/getpaymentsubscriptionresponse.md)**



## list_payment_subscriptions

List all subscriptions

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListPaymentSubscriptionsRequest.new(
  connection_id: "<id>",
)
    
res = s.subscription.list_payment_subscriptions(req)

if ! res.payment_subscriptions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::UnifiedRubySDK::Operations::ListPaymentSubscriptionsRequest](../../models/operations/listpaymentsubscriptionsrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListPaymentSubscriptionsResponse)](../../models/operations/listpaymentsubscriptionsresponse.md)**



## patch_payment_subscription

Update a subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.subscription.patch_payment_subscription(connection_id="<id>", id="<id>", payment_subscription=::UnifiedRubySDK::Shared::PaymentSubscription.new(), fields_=[
  "<value>",
])

if ! res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                              | Type                                                                                                   | Required                                                                                               | Description                                                                                            |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                        | *::String*                                                                                             | :heavy_check_mark:                                                                                     | ID of the connection                                                                                   |
| `id`                                                                                                   | *::String*                                                                                             | :heavy_check_mark:                                                                                     | ID of the Subscription                                                                                 |
| `payment_subscription`                                                                                 | [T.nilable(::UnifiedRubySDK::Shared::PaymentSubscription)](../../models/shared/paymentsubscription.md) | :heavy_minus_sign:                                                                                     | N/A                                                                                                    |
| `fields_`                                                                                              | T::Array<*::String*>                                                                                   | :heavy_minus_sign:                                                                                     | Comma-delimited fields to return                                                                       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchPaymentSubscriptionResponse)](../../models/operations/patchpaymentsubscriptionresponse.md)**



## remove_payment_subscription

Remove a subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
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

**[T.nilable(::UnifiedRubySDK::Operations::RemovePaymentSubscriptionResponse)](../../models/operations/removepaymentsubscriptionresponse.md)**



## update_payment_subscription

Update a subscription

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.subscription.update_payment_subscription(connection_id="<id>", id="<id>", payment_subscription=::UnifiedRubySDK::Shared::PaymentSubscription.new(), fields_=[
  "<value>",
])

if ! res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                              | Type                                                                                                   | Required                                                                                               | Description                                                                                            |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                        | *::String*                                                                                             | :heavy_check_mark:                                                                                     | ID of the connection                                                                                   |
| `id`                                                                                                   | *::String*                                                                                             | :heavy_check_mark:                                                                                     | ID of the Subscription                                                                                 |
| `payment_subscription`                                                                                 | [T.nilable(::UnifiedRubySDK::Shared::PaymentSubscription)](../../models/shared/paymentsubscription.md) | :heavy_minus_sign:                                                                                     | N/A                                                                                                    |
| `fields_`                                                                                              | T::Array<*::String*>                                                                                   | :heavy_minus_sign:                                                                                     | Comma-delimited fields to return                                                                       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdatePaymentSubscriptionResponse)](../../models/operations/updatepaymentsubscriptionresponse.md)**

