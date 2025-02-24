# CreateMartechMemberRequest


## Fields

| Field                                                                               | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `marketing_member`                                                                  | [::UnifiedRubySDK::Shared::MarketingMember](../../models/shared/marketingmember.md) | :heavy_check_mark:                                                                  | A member represents a person                                                        |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `fields_`                                                                           | T::Array<*::String*>                                                                | :heavy_minus_sign:                                                                  | Comma-delimited fields to return                                                    |