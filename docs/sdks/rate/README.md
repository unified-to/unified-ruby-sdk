# Rate
(*rate*)

## Overview

### Available Operations

* [create_shipping_rate](#create_shipping_rate) - Create a rate

## create_shipping_rate

Create a rate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createShippingRate" method="post" path="/shipping/{connection_id}/rate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.rate.create_shipping_rate(shipping_rate: Models::Shared::ShippingRate.new(
  currency: 'USD',
  id: '9883fb65-3504-4096-af84-b3dbcfe88152',
  rates: [
    Models::Shared::ShippingRateRate.new(
      amount: 54.679_719_475_097_954,
      base_amount: 76.45_537_888_631_225,
      currency: 'USD',
      delivery_days: 8.0,
      description: 'Bos turpis pax amet dolorem sufficio demonstro complectus benevolentia rerum.',
      estimated_days: 10.0,
      estimated_delivery_end_at: DateTime.iso8601('2024-01-31T23:10:31.780Z'),
      is_guaranteed: true,
      is_negotiated_rate: true,
      tax_amount: 2.2_701_712_837_442_756,
      title: 'Turcotte Inc',
    ),
  ],
), connection_id: '<id>')

unless res.shipping_rate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `shipping_rate`                                                                                                                                  | [Models::Shared::ShippingRate](../../models/shared/shippingrate.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateShippingRateQueryParamFields](../../models/operations/createshippingratequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateShippingRateResponse)](../../models/operations/createshippingrateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |