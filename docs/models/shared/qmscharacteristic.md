# QmsCharacteristic

A characteristic measured or checked during an inspection


## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `lower_limit`                                                      | *T.nilable(::Float)*                                               | :heavy_minus_sign:                                                 | N/A                                                                |
| `measured_value`                                                   | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | Measured or observed value; text so attribute checks fit           |
| `name`                                                             | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | N/A                                                                |
| `nominal_value`                                                    | *T.nilable(::Float)*                                               | :heavy_minus_sign:                                                 | N/A                                                                |
| `notes`                                                            | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | N/A                                                                |
| `result`                                                           | [T.nilable(Models::Shared::Result)](../../models/shared/result.md) | :heavy_minus_sign:                                                 | N/A                                                                |
| `specification`                                                    | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | Requirement or drawing reference                                   |
| `unit_of_measure`                                                  | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | N/A                                                                |
| `upper_limit`                                                      | *T.nilable(::Float)*                                               | :heavy_minus_sign:                                                 | N/A                                                                |