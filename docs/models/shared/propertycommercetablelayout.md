# PropertyCommerceTableLayout

position and shape of the table on its floorplan


## Fields

| Field                                                                   | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `height`                                                                | *T.nilable(::Float)*                                                    | :heavy_minus_sign:                                                      | N/A                                                                     |
| `rotation`                                                              | *T.nilable(::Float)*                                                    | :heavy_minus_sign:                                                      | degrees                                                                 |
| `shape`                                                                 | [T.nilable(Models::Shared::Shape)](../../models/shared/shape.md)        | :heavy_minus_sign:                                                      | N/A                                                                     |
| `width`                                                                 | *T.nilable(::Float)*                                                    | :heavy_minus_sign:                                                      | N/A                                                                     |
| `x`                                                                     | *T.nilable(::Float)*                                                    | :heavy_minus_sign:                                                      | horizontal position on the floorplan, in the provider's floorplan units |
| `y`                                                                     | *T.nilable(::Float)*                                                    | :heavy_minus_sign:                                                      | vertical position on the floorplan, in the provider's floorplan units   |