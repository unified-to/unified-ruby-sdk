# PatchMartechListRequest


## Fields

| Field                                                                    | Type                                                                     | Required                                                                 | Description                                                              |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ |
| `connection_id`                                                          | *String*                                                                 | :heavy_check_mark:                                                       | ID of the connection                                                     |
| `id`                                                                     | *String*                                                                 | :heavy_check_mark:                                                       | ID of the List                                                           |
| `marketing_list`                                                         | [T.nilable(Shared::MarketingList)](../../models/shared/marketinglist.md) | :heavy_minus_sign:                                                       | Mailing List                                                             |