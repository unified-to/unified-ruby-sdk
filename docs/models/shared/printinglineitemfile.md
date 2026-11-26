# PrintingLineitemFile

A print file attached to a line item for one placement


## Fields

| Field                                                   | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `file_id`                                               | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | The PrintingFile ID                                     |
| `placement`                                             | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | Placement code the file is printed on (eg. front, back) |
| `url`                                                   | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | URL of the print file                                   |