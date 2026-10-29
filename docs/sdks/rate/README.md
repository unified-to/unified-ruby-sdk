# Rate
(*rate*)

## Overview

### Available Operations

* [create_shipping_rate](#create_shipping_rate) - Create a rate

## create_shipping_rate

Creates a ShippingRate. Provide the unified ShippingRate fields in the request body; they are mapped to the provider's API. Returns the created ShippingRate.

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
  id: '21e24c48-8934-4560-81ab-f6cff4d4d671',
  metadata: [],
  rates: [
    Models::Shared::ShippingRateRate.new(
      amount: 44.72,
      base_amount: 46.01,
      currency: 'USD',
      delivery_days: 2.0,
      description: 'Veniam denego vulgo bos turpis pax.',
      discount_amount: 4.6,
      estimated_days: 2.0,
      estimated_delivery_end_at: DateTime.iso8601('2021-09-03T01:03:36.021Z'),
      is_negotiated_rate: true,
      tax_amount: 3.31,
      title: 'Express',
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