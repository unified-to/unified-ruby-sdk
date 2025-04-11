# PatchMartechListRequest


## Fields

| Field                                                                 | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `marketing_list`                                                      | [Models::Shared::MarketingList](../../models/shared/marketinglist.md) | :heavy_check_mark:                                                    | Mailing List                                                          |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `fields_`                                                             | T::Array<*::String*>                                                  | :heavy_minus_sign:                                                    | Comma-delimited fields to return                                      |
| `id`                                                                  | *::String*                                                            | :heavy_check_mark:                                                    | ID of the List                                                        |