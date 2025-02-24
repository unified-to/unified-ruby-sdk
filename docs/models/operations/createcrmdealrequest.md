# CreateCrmDealRequest


## Fields

| Field                                                               | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `crm_deal`                                                          | [::UnifiedRubySDK::Shared::CrmDeal](../../models/shared/crmdeal.md) | :heavy_check_mark:                                                  | A deal represents an opportunity with companies and/or contacts     |
| `connection_id`                                                     | *::String*                                                          | :heavy_check_mark:                                                  | ID of the connection                                                |
| `fields_`                                                           | T::Array<*::String*>                                                | :heavy_minus_sign:                                                  | Comma-delimited fields to return                                    |