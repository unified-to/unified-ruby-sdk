# DmsVehiclesaleVehicle

A vehicle sold on a vehicle sale


## Fields

| Field                               | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `cost_amount`                       | *T.nilable(::Float)*                | :heavy_minus_sign:                  | Dealer cost of the vehicle          |
| `msrp_amount`                       | *T.nilable(::Float)*                | :heavy_minus_sign:                  | N/A                                 |
| `odometer`                          | *T.nilable(::Float)*                | :heavy_minus_sign:                  | Odometer at sale                    |
| `price_amount`                      | *T.nilable(::Float)*                | :heavy_minus_sign:                  | Agreed selling price of the vehicle |
| `stock_number`                      | *T.nilable(::String)*               | :heavy_minus_sign:                  | Stock number as sold                |
| `vehicle_id`                        | *T.nilable(::String)*               | :heavy_minus_sign:                  | The DmsVehicle ID                   |
| `vin`                               | *T.nilable(::String)*               | :heavy_minus_sign:                  | VIN as sold                         |