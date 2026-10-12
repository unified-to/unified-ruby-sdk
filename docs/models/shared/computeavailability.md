# ComputeAvailability


## Fields

| Field                                                            | Type                                                             | Required                                                         | Description                                                      |
| ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- |
| `level`                                                          | [T.nilable(Models::Shared::Level)](../../models/shared/level.md) | :heavy_minus_sign:                                               | Normalized stock level                                           |
| `quantity`                                                       | *T.nilable(::Float)*                                             | :heavy_minus_sign:                                               | Number of units available, when the vendor reports a count       |
| `region_id`                                                      | *T.nilable(::String)*                                            | :heavy_minus_sign:                                               | The region this availability applies to                          |