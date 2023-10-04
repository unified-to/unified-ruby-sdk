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

   
req = Operations::CreateOrderRequest.new(
  query_params=Operations::CreateOrderRequest.new(
    request_body=.new[
      Shared::OrderInput.new(
        product_code="APM-1F2D3",
        quantity=26535,
        type=Shared::OrderType::DRINK,
      ),
    ],
    callback_url="corrupti",
  ),
  request_body=.new[
    Shared::OrderInput.new(
      product_code="APM-1F2D3",
      quantity=738316,
      type=Shared::OrderType::DRINK,
    ),
  ],
)
    
res = s.orders.create_order(req)

if ! res.order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Operations::CreateOrderRequest](../../models/operations/createorderrequest.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |


### Response

**[T.nilable(Operations::CreateOrderResponse)](../../models/operations/createorderresponse.md)**

