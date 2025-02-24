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

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.create_payment_link(payment_link=::UnifiedRubySDK::Shared::PaymentLink.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `payment_link`                                                              | [::UnifiedRubySDK::Shared::PaymentLink](../../models/shared/paymentlink.md) | :heavy_check_mark:                                                          | N/A                                                                         |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `fields_`                                                                   | T::Array<*::String*>                                                        | :heavy_minus_sign:                                                          | Comma-delimited fields to return                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreatePaymentLinkResponse)](../../models/operations/createpaymentlinkresponse.md)**



## create_payment_payment

Create a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.create_payment_payment(payment_payment=::UnifiedRubySDK::Shared::PaymentPayment.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.payment_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `payment_payment`                                                                 | [::UnifiedRubySDK::Shared::PaymentPayment](../../models/shared/paymentpayment.md) | :heavy_check_mark:                                                                | N/A                                                                               |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `fields_`                                                                         | T::Array<*::String*>                                                              | :heavy_minus_sign:                                                                | Comma-delimited fields to return                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreatePaymentPaymentResponse)](../../models/operations/createpaymentpaymentresponse.md)**



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

    
res = s.payment.create_payment_subscription(payment_subscription=::UnifiedRubySDK::Shared::PaymentSubscription.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `payment_subscription`                                                                      | [::UnifiedRubySDK::Shared::PaymentSubscription](../../models/shared/paymentsubscription.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `connection_id`                                                                             | *::String*                                                                                  | :heavy_check_mark:                                                                          | ID of the connection                                                                        |
| `fields_`                                                                                   | T::Array<*::String*>                                                                        | :heavy_minus_sign:                                                                          | Comma-delimited fields to return                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreatePaymentSubscriptionResponse)](../../models/operations/createpaymentsubscriptionresponse.md)**



## get_payment_link

Retrieve a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.get_payment_link(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Link                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetPaymentLinkResponse)](../../models/operations/getpaymentlinkresponse.md)**



## get_payment_payment

Retrieve a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.get_payment_payment(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Payment                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetPaymentPaymentResponse)](../../models/operations/getpaymentpaymentresponse.md)**



## get_payment_payout

Retrieve a payout

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.get_payment_payout(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_payout.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Payout                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetPaymentPayoutResponse)](../../models/operations/getpaymentpayoutresponse.md)**



## get_payment_refund

Retrieve a refund

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.get_payment_refund(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_refund.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Refund                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetPaymentRefundResponse)](../../models/operations/getpaymentrefundresponse.md)**



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

    
res = s.payment.get_payment_subscription(connection_id="<id>", id="<id>", fields_=[
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



## list_payment_links

List all links

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListPaymentLinksRequest.new(
  connection_id: "<id>",
)
    
res = s.payment.list_payment_links(req)

if ! res.payment_links.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListPaymentLinksRequest](../../models/operations/listpaymentlinksrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListPaymentLinksResponse)](../../models/operations/listpaymentlinksresponse.md)**



## list_payment_payments

List all payments

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListPaymentPaymentsRequest.new(
  connection_id: "<id>",
)
    
res = s.payment.list_payment_payments(req)

if ! res.payment_payments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::UnifiedRubySDK::Operations::ListPaymentPaymentsRequest](../../models/operations/listpaymentpaymentsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListPaymentPaymentsResponse)](../../models/operations/listpaymentpaymentsresponse.md)**



## list_payment_payouts

List all payouts

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListPaymentPayoutsRequest.new(
  connection_id: "<id>",
)
    
res = s.payment.list_payment_payouts(req)

if ! res.payment_payouts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListPaymentPayoutsRequest](../../models/operations/listpaymentpayoutsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListPaymentPayoutsResponse)](../../models/operations/listpaymentpayoutsresponse.md)**



## list_payment_refunds

List all refunds

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListPaymentRefundsRequest.new(
  connection_id: "<id>",
)
    
res = s.payment.list_payment_refunds(req)

if ! res.payment_refunds.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListPaymentRefundsRequest](../../models/operations/listpaymentrefundsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListPaymentRefundsResponse)](../../models/operations/listpaymentrefundsresponse.md)**



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
    
res = s.payment.list_payment_subscriptions(req)

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



## patch_payment_link

Update a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.patch_payment_link(payment_link=::UnifiedRubySDK::Shared::PaymentLink.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `payment_link`                                                              | [::UnifiedRubySDK::Shared::PaymentLink](../../models/shared/paymentlink.md) | :heavy_check_mark:                                                          | N/A                                                                         |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Link                                                              |
| `fields_`                                                                   | T::Array<*::String*>                                                        | :heavy_minus_sign:                                                          | Comma-delimited fields to return                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchPaymentLinkResponse)](../../models/operations/patchpaymentlinkresponse.md)**



## patch_payment_payment

Update a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.patch_payment_payment(payment_payment=::UnifiedRubySDK::Shared::PaymentPayment.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `payment_payment`                                                                 | [::UnifiedRubySDK::Shared::PaymentPayment](../../models/shared/paymentpayment.md) | :heavy_check_mark:                                                                | N/A                                                                               |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `id`                                                                              | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the Payment                                                                 |
| `fields_`                                                                         | T::Array<*::String*>                                                              | :heavy_minus_sign:                                                                | Comma-delimited fields to return                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchPaymentPaymentResponse)](../../models/operations/patchpaymentpaymentresponse.md)**



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

    
res = s.payment.patch_payment_subscription(payment_subscription=::UnifiedRubySDK::Shared::PaymentSubscription.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `payment_subscription`                                                                      | [::UnifiedRubySDK::Shared::PaymentSubscription](../../models/shared/paymentsubscription.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `connection_id`                                                                             | *::String*                                                                                  | :heavy_check_mark:                                                                          | ID of the connection                                                                        |
| `id`                                                                                        | *::String*                                                                                  | :heavy_check_mark:                                                                          | ID of the Subscription                                                                      |
| `fields_`                                                                                   | T::Array<*::String*>                                                                        | :heavy_minus_sign:                                                                          | Comma-delimited fields to return                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchPaymentSubscriptionResponse)](../../models/operations/patchpaymentsubscriptionresponse.md)**



## remove_payment_link

Remove a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.remove_payment_link(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemovePaymentLinkResponse)](../../models/operations/removepaymentlinkresponse.md)**



## remove_payment_payment

Remove a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.remove_payment_payment(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemovePaymentPaymentResponse)](../../models/operations/removepaymentpaymentresponse.md)**



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

    
res = s.payment.remove_payment_subscription(connection_id="<id>", id="<id>")

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



## update_payment_link

Update a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.update_payment_link(payment_link=::UnifiedRubySDK::Shared::PaymentLink.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `payment_link`                                                              | [::UnifiedRubySDK::Shared::PaymentLink](../../models/shared/paymentlink.md) | :heavy_check_mark:                                                          | N/A                                                                         |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Link                                                              |
| `fields_`                                                                   | T::Array<*::String*>                                                        | :heavy_minus_sign:                                                          | Comma-delimited fields to return                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdatePaymentLinkResponse)](../../models/operations/updatepaymentlinkresponse.md)**



## update_payment_payment

Update a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payment.update_payment_payment(payment_payment=::UnifiedRubySDK::Shared::PaymentPayment.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `payment_payment`                                                                 | [::UnifiedRubySDK::Shared::PaymentPayment](../../models/shared/paymentpayment.md) | :heavy_check_mark:                                                                | N/A                                                                               |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `id`                                                                              | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the Payment                                                                 |
| `fields_`                                                                         | T::Array<*::String*>                                                              | :heavy_minus_sign:                                                                | Comma-delimited fields to return                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdatePaymentPaymentResponse)](../../models/operations/updatepaymentpaymentresponse.md)**



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

    
res = s.payment.update_payment_subscription(payment_subscription=::UnifiedRubySDK::Shared::PaymentSubscription.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `payment_subscription`                                                                      | [::UnifiedRubySDK::Shared::PaymentSubscription](../../models/shared/paymentsubscription.md) | :heavy_check_mark:                                                                          | N/A                                                                                         |
| `connection_id`                                                                             | *::String*                                                                                  | :heavy_check_mark:                                                                          | ID of the connection                                                                        |
| `id`                                                                                        | *::String*                                                                                  | :heavy_check_mark:                                                                          | ID of the Subscription                                                                      |
| `fields_`                                                                                   | T::Array<*::String*>                                                                        | :heavy_minus_sign:                                                                          | Comma-delimited fields to return                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdatePaymentSubscriptionResponse)](../../models/operations/updatepaymentsubscriptionresponse.md)**

