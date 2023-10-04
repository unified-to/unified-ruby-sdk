# Order

An order for a drink or ingredient.


## Fields

| Field                                                    | Type                                                     | Required                                                 | Description                                              | Example                                                  |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| `product_code`                                           | *str*                                                    | :heavy_check_mark:                                       | The product code of the drink or ingredient.             | AC-A2DF3                                                 |
| `quantity`                                               | *int*                                                    | :heavy_check_mark:                                       | The number of units of the drink or ingredient to order. |                                                          |
| `status`                                                 | [OrderStatus](../../models/shared/orderstatus.md)        | :heavy_check_mark:                                       | The status of the order.                                 |                                                          |
| `type`                                                   | [OrderType](../../models/shared/ordertype.md)            | :heavy_check_mark:                                       | The type of order.                                       |                                                          |