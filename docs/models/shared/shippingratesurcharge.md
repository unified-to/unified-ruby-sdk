# ShippingRateSurcharge


## Fields

| Field                                                     | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `amount`                                                  | *T.nilable(::Float)*                                      | :heavy_minus_sign:                                        | Surcharge amount                                          |
| `code`                                                    | *T.nilable(::String)*                                     | :heavy_minus_sign:                                        | Surcharge type (e.g., "RESIDENTIAL", "FUEL", "SIGNATURE") |
| `description`                                             | *T.nilable(::String)*                                     | :heavy_minus_sign:                                        | Description of surcharge                                  |
| `name`                                                    | *T.nilable(::String)*                                     | :heavy_minus_sign:                                        | Human-readable name                                       |