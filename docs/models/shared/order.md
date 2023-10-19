# Order

An order for a drink or ingredient.


## Fields

| Field                                                     | Type                                                      | Required                                                  | Description                                               | Example                                                   |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `product_code`                                            | *String*                                                  | :heavy_check_mark:                                        | The product code of the drink or ingredient.              | AC-A2DF3                                                  |
| `quantity`                                                | *Integer*                                                 | :heavy_check_mark:                                        | The number of units of the drink or ingredient to order.  |                                                           |
| `status`                                                  | [Shared::OrderStatus](../../models/shared/orderstatus.md) | :heavy_check_mark:                                        | The status of the order.                                  |                                                           |
| `type`                                                    | [Shared::OrderType](../../models/shared/ordertype.md)     | :heavy_check_mark:                                        | The type of order.                                        |                                                           |