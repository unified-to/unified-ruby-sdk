# CreatePaymentSubscriptionRequest


## Fields

| Field                                                                             | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `payment_subscription`                                                            | [Models::Shared::PaymentSubscription](../../models/shared/paymentsubscription.md) | :heavy_check_mark:                                                                | N/A                                                                               |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `fields_`                                                                         | T::Array<*::String*>                                                              | :heavy_minus_sign:                                                                | Comma-delimited fields to return                                                  |