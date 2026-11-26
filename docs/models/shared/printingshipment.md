# PrintingShipment

A shipment of a print order


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `carrier`                                                                    | *T.nilable(::String)*                                                        | :heavy_minus_sign:                                                           | Carrier name                                                                 |
| `delivered_at`                                                               | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_minus_sign:                                                           | (ISO-8601 / YYYY-MM-DDTHH:MM:SSZ format)                                     |
| `id`                                                                         | *T.nilable(::String)*                                                        | :heavy_minus_sign:                                                           | Shipment identifier                                                          |
| `service`                                                                    | *T.nilable(::String)*                                                        | :heavy_minus_sign:                                                           | Delivery service name                                                        |
| `shipped_at`                                                                 | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_minus_sign:                                                           | (ISO-8601 / YYYY-MM-DDTHH:MM:SSZ format)                                     |
| `tracking_number`                                                            | *T.nilable(::String)*                                                        | :heavy_minus_sign:                                                           | N/A                                                                          |
| `tracking_url`                                                               | *T.nilable(::String)*                                                        | :heavy_minus_sign:                                                           | N/A                                                                          |