# FormAnswer


## Fields

| Field                     | Type                      | Required                  | Description               |
| ------------------------- | ------------------------- | ------------------------- | ------------------------- |
| `field_id`                | *::String*                | :heavy_check_mark:        | N/A                       |
| `field_name`              | *T.nilable(::String)*     | :heavy_minus_sign:        | N/A                       |
| `file_ids`                | T::Array<*::String*>      | :heavy_minus_sign:        | references StorageFile ID |
| `value`                   | *T.nilable(::String)*     | :heavy_minus_sign:        | N/A                       |