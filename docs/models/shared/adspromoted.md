# AdsPromoted

Promoted entity (e.g. page, app, product, tweet) for ads create


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | N/A                                                                       |
| `name`                                                                    | *T.nilable(::String)*                                                     | :heavy_minus_sign:                                                        | N/A                                                                       |
| `raw`                                                                     | T::Hash[Symbol, *::Object*]                                               | :heavy_minus_sign:                                                        | N/A                                                                       |
| `type`                                                                    | [Models::Shared::AdsPromotedType](../../models/shared/adspromotedtype.md) | :heavy_check_mark:                                                        | N/A                                                                       |