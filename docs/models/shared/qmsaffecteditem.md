# QmsAffectedItem

A part, lot or serial affected by a quality record


## Fields

| Field                                                             | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `document_id`                                                     | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | The PlmDocument ID, when the same vendor also provides PLM        |
| `lot_number`                                                      | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | N/A                                                               |
| `part_id`                                                         | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | The PlmPart (revision) ID, when the same vendor also provides PLM |
| `part_number`                                                     | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | N/A                                                               |
| `quantity`                                                        | *T.nilable(::Float)*                                              | :heavy_minus_sign:                                                | Quantity affected                                                 |
| `revision`                                                        | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | N/A                                                               |
| `serial_number`                                                   | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | N/A                                                               |