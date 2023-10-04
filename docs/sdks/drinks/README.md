# drinks

## Overview

The drinks endpoints.

### Available Operations

* [get_drink](#get_drink) - Get a drink.
* [list_drinks](#list_drinks) - Get a list of drinks.

## get_drink

Get a drink by name, if authenticated this will include stock levels and product codes otherwise it will only include public information.

### Example Usage

```python
import speakeasybar
from speakeasybar.models import operations, shared

s = speakeasybar.Speakeasybar(
    security=shared.Security(
        api_key="",
    ),
)


res = s.drinks.get_drink(name='deserunt')

if res.drink is not None:
    # handle response
```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `name`             | *str*              | :heavy_check_mark: | N/A                |


### Response

**[operations.GetDrinkResponse](../../models/operations/getdrinkresponse.md)**


## list_drinks

Get a list of drinks, if authenticated this will include stock levels and product codes otherwise it will only include public information.

### Example Usage

```python
import speakeasybar
from speakeasybar.models import operations, shared

s = speakeasybar.Speakeasybar(
    security=shared.Security(
        api_key="",
    ),
)


res = s.drinks.list_drinks(drink_type=shared.DrinkType.BEER)

if res.drinks is not None:
    # handle response
```

### Parameters

| Parameter                                                                    | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `drink_type`                                                                 | [Optional[shared.DrinkType]](../../models/shared/drinktype.md)               | :heavy_minus_sign:                                                           | The type of drink to filter by. If not provided all drinks will be returned. |


### Response

**[operations.ListDrinksResponse](../../models/operations/listdrinksresponse.md)**

