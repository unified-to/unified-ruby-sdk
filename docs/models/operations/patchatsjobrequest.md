# PatchAtsJobRequest


## Fields

| Field                                                             | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `ats_job`                                                         | [::UnifiedRubySDK::Shared::AtsJob](../../models/shared/atsjob.md) | :heavy_check_mark:                                                | N/A                                                               |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | ID of the Job                                                     |
| `fields_`                                                         | T::Array<*::String*>                                              | :heavy_minus_sign:                                                | Comma-delimited fields to return                                  |