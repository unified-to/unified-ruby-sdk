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

   
req = Operations::ListIngredientsRequest.new(
  query_params=Operations::ListIngredientsRequest.new(
    ingredients=.new[
      "Cloned",
    ],
  ),
)
    
res = s.ingredients.list_ingredients(req)

if ! res.ingredients.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::ListIngredientsRequest](../../models/operations/listingredientsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::ListIngredientsResponse)](../../models/operations/listingredientsresponse.md)**

