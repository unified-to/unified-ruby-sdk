# PatchCrmDealRequest


## Fields

| Field                                                                          | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `connection_id`                                                                | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the connection                                                           |
| `id`                                                                           | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the Deal                                                                 |
| `crm_deal`                                                                     | [T.nilable(::UnifiedRubySDK::Shared::CrmDeal)](../../models/shared/crmdeal.md) | :heavy_minus_sign:                                                             | A deal represents an opportunity with companies and/or contacts                |
| `fields_`                                                                      | T::Array<*::String*>                                                           | :heavy_minus_sign:                                                             | Comma-delimited fields to return                                               |