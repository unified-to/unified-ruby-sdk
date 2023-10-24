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
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::GetDrinkRequest.new(
  path_params=Operations::GetDrinkRequest.new(
    name="string",
  ),
)
    
res = s.drinks.get_drink(req)

if ! res.drink.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `name`             | *String*           | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(Operations::GetDrinkResponse)](../../models/operations/getdrinkresponse.md)**


## list_drinks

Get a list of drinks, if authenticated this will include stock levels and product codes otherwise it will only include public information.

### Example Usage

```ruby
require_relative openapi


s = OpenApiSDK::Speakeasybar.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
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

| Parameter                                                                    | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `drink_type`                                                                 | [Shared::DrinkType](../../models/shared/drinktype.md)                        | :heavy_minus_sign:                                                           | The type of drink to filter by. If not provided all drinks will be returned. |


### Response

**[T.nilable(Operations::ListDrinksResponse)](../../models/operations/listdrinksresponse.md)**

