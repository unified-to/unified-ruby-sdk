# Orders
(*orders*)

## Overview

The orders endpoints.

### Available Operations

* [create_order](#create_order) - Create an order.

## create_order

Create an order for a drink.

### Example Usage

```ruby
require_relative openapi


s = OpenApiSDK::Speakeasybar.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::CreateOrderRequest.new(
  query_params=Operations::CreateOrderRequest.new(
    request_body=.new[
      Shared::OrderInput.new(
        product_code="APM-1F2D3",
        quantity=26535,
        type=Shared::OrderType::DRINK,
      ),
    ],
    callback_url="string",
  ),
  request_body=.new[
    Shared::OrderInput.new(
      product_code="AC-A2DF3",
      quantity=567805,
      type=Shared::OrderType::INGREDIENT,
    ),
  ],
)
    
res = s.orders.create_order(req)

if ! res.order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `request_body`                                                    | T::Array<[Shared::OrderInput](../../models/shared/orderinput.md)> | :heavy_check_mark:                                                | N/A                                                               |
| `callback_url`                                                    | *String*                                                          | :heavy_minus_sign:                                                | The url to call when the order is updated.                        |


### Response

**[T.nilable(Operations::CreateOrderResponse)](../../models/operations/createorderresponse.md)**

