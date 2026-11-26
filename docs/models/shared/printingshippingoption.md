# PrintingShippingoption

A shipping method available for a quote, with its price


## Fields

| Field                                                       | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `amount`                                                    | *T.nilable(::Float)*                                        | :heavy_minus_sign:                                          | Shipping price                                              |
| `code`                                                      | *T.nilable(::String)*                                       | :heavy_minus_sign:                                          | Shipping method code, used as `shipping_method` on an order |
| `currency`                                                  | *T.nilable(::String)*                                       | :heavy_minus_sign:                                          | ISO 4217 currency code                                      |
| `max_delivery_days`                                         | *T.nilable(::Float)*                                        | :heavy_minus_sign:                                          | Estimated maximum number of days to delivery                |
| `min_delivery_days`                                         | *T.nilable(::Float)*                                        | :heavy_minus_sign:                                          | Estimated minimum number of days to delivery                |
| `name`                                                      | *T.nilable(::String)*                                       | :heavy_minus_sign:                                          | Display name                                                |