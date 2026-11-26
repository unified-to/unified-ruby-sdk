# DmsVehiclesaleTradein

A vehicle traded in on a vehicle sale


## Fields

| Field                                            | Type                                             | Required                                         | Description                                      |
| ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ |
| `actual_cash_value_amount`                       | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | Actual cash value (dealer valuation)             |
| `allowance_amount`                               | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | Trade allowance given to the buyer               |
| `lienholder_name`                                | *T.nilable(::String)*                            | :heavy_minus_sign:                               | Lender owed the payoff                           |
| `make`                                           | *T.nilable(::String)*                            | :heavy_minus_sign:                               | N/A                                              |
| `model`                                          | *T.nilable(::String)*                            | :heavy_minus_sign:                               | N/A                                              |
| `odometer`                                       | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | N/A                                              |
| `payoff_amount`                                  | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | Outstanding loan payoff                          |
| `vehicle_id`                                     | *T.nilable(::String)*                            | :heavy_minus_sign:                               | The DmsVehicle ID of the trade-in, when recorded |
| `vin`                                            | *T.nilable(::String)*                            | :heavy_minus_sign:                               | N/A                                              |
| `year`                                           | *T.nilable(::Float)*                             | :heavy_minus_sign:                               | N/A                                              |