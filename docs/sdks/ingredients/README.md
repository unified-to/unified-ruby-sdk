# Ingredients
(*ingredients*)

## Overview

The ingredients endpoints.

### Available Operations

* [list_ingredients](#list_ingredients) - Get a list of ingredients.

## list_ingredients

Get a list of ingredients, if authenticated this will include stock levels and product codes otherwise it will only include public information.

### Example Usage

```ruby
require_relative openapi


s = OpenApiSDK::Speakeasybar.new
s.config_security(
  security=Shared::Security.new(
    api_key=.foo"",
  )
)

   
req = Operations::ListIngredientsRequest.new(
  query_params=Operations::ListIngredientsRequest.new(
    ingredients=.new[
      "string",
    ],
  ),
)
    
res = s.ingredients.list_ingredients(req)

if ! res.ingredients.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `ingredients`                                                                         | T::Array<*String*>                                                                    | :heavy_minus_sign:                                                                    | A list of ingredients to filter by. If not provided all ingredients will be returned. |


### Response

**[T.nilable(Operations::ListIngredientsResponse)](../../models/operations/listingredientsresponse.md)**

