# AdsTarget

Targeting search result (for ads_target list endpoint)


## Fields

| Field                                                                            | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `id`                                                                             | *::String*                                                                       | :heavy_check_mark:                                                               | N/A                                                                              |
| `is_active`                                                                      | *T.nilable(T::Boolean)*                                                          | :heavy_minus_sign:                                                               | N/A                                                                              |
| `name`                                                                           | *T.nilable(::String)*                                                            | :heavy_minus_sign:                                                               | N/A                                                                              |
| `parent_id`                                                                      | *T.nilable(::String)*                                                            | :heavy_minus_sign:                                                               | N/A                                                                              |
| `raw`                                                                            | T::Hash[Symbol, *::Object*]                                                      | :heavy_minus_sign:                                                               | N/A                                                                              |
| `type`                                                                           | [T.nilable(Models::Shared::AdsTargetType)](../../models/shared/adstargettype.md) | :heavy_minus_sign:                                                               | N/A                                                                              |