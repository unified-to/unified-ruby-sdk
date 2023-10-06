# Drinks
(*drinks*)

## Overview

The drinks endpoints.

### Available Operations

* [get_drink](#get_drink) - Get a drink.
* [list_drinks](#list_drinks) - Get a list of drinks.

## get_drink

Get a drink by name, if authenticated this will include stock levels and product codes otherwise it will only include public information.

### Example Usage

```ruby
require_relative openapi


s = OpenApiSDK::Speakeasybar.new

   
req = Operations::GetDrinkRequest.new(
  path_params=Operations::GetDrinkRequest.new(
    name="North District",
  ),
)
    
res = s.drinks.get_drink(req)

if ! res.drink.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `request`                                                                 | [Operations::GetDrinkRequest](../../models/operations/getdrinkrequest.md) | :heavy_check_mark:                                                        | The request object to use for the request.                                |


### Response

**[T.nilable(Operations::GetDrinkResponse)](../../models/operations/getdrinkresponse.md)**


## list_drinks

Get a list of drinks, if authenticated this will include stock levels and product codes otherwise it will only include public information.

### Example Usage

```ruby
require_relative openapi


s = OpenApiSDK::Speakeasybar.new

   
req = Operations::ListDrinksRequest.new(
  query_params=Operations::ListDrinksRequest.new(
    drink_type=Shared::DrinkType::SPIRIT,
  ),
)
    
res = s.drinks.list_drinks(req)

if ! res.drinks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `request`                                                                     | [Operations::ListDrinksRequest](../../models/operations/listdrinksrequest.md) | :heavy_check_mark:                                                            | The request object to use for the request.                                    |


### Response

**[T.nilable(Operations::ListDrinksResponse)](../../models/operations/listdrinksresponse.md)**

