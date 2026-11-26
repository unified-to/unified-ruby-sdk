# DmsVehiclesaleFee

A fee on a vehicle sale (documentation, title, registration, lender, dealer)


## Fields

| Field                                     | Type                                      | Required                                  | Description                               |
| ----------------------------------------- | ----------------------------------------- | ----------------------------------------- | ----------------------------------------- |
| `cost_amount`                             | *T.nilable(::Float)*                      | :heavy_minus_sign:                        | Dealer cost                               |
| `is_capitalized`                          | *T.nilable(T::Boolean)*                   | :heavy_minus_sign:                        | Rolled into the financed or leased amount |
| `name`                                    | *T.nilable(::String)*                     | :heavy_minus_sign:                        | N/A                                       |
| `price_amount`                            | *T.nilable(::Float)*                      | :heavy_minus_sign:                        | Amount charged to the buyer               |