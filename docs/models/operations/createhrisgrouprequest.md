# CreateHrisGroupRequest


## Fields

| Field                                                                              | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `connection_id`                                                                    | *::String*                                                                         | :heavy_check_mark:                                                                 | ID of the connection                                                               |
| `hris_group`                                                                       | [T.nilable(::UnifiedRubySDK::Shared::HrisGroup)](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                                                 | N/A                                                                                |
| `fields_`                                                                          | T::Array<*::String*>                                                               | :heavy_minus_sign:                                                                 | Comma-delimited fields to return                                                   |