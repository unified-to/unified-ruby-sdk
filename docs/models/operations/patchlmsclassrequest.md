# PatchLmsClassRequest


## Fields

| Field                                                                 | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `lms_class`                                                           | [::UnifiedRubySDK::Shared::LmsClass](../../models/shared/lmsclass.md) | :heavy_check_mark:                                                    | N/A                                                                   |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *::String*                                                            | :heavy_check_mark:                                                    | ID of the Class                                                       |
| `fields_`                                                             | T::Array<*::String*>                                                  | :heavy_minus_sign:                                                    | Comma-delimited fields to return                                      |