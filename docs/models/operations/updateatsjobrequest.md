# UpdateAtsJobRequest


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `connection_id`                                                              | *::String*                                                                   | :heavy_check_mark:                                                           | ID of the connection                                                         |
| `id`                                                                         | *::String*                                                                   | :heavy_check_mark:                                                           | ID of the Job                                                                |
| `ats_job`                                                                    | [T.nilable(::UnifiedRubySDK::Shared::AtsJob)](../../models/shared/atsjob.md) | :heavy_minus_sign:                                                           | N/A                                                                          |
| `fields_`                                                                    | T::Array<*::String*>                                                         | :heavy_minus_sign:                                                           | Comma-delimited fields to return                                             |