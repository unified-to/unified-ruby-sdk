# UpdateAtsScorecardRequest


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `ats_scorecard`                                                               | [::UnifiedRubySDK::Shared::AtsScorecard](../../models/shared/atsscorecard.md) | :heavy_check_mark:                                                            | N/A                                                                           |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Scorecard                                                           |
| `fields_`                                                                     | T::Array<*::String*>                                                          | :heavy_minus_sign:                                                            | Comma-delimited fields to return                                              |