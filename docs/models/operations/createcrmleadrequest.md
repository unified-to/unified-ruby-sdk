# CreateCrmLeadRequest


## Fields

| Field                                                                          | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `connection_id`                                                                | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the connection                                                           |
| `crm_lead`                                                                     | [T.nilable(::UnifiedRubySDK::Shared::CrmLead)](../../models/shared/crmlead.md) | :heavy_minus_sign:                                                             | N/A                                                                            |
| `fields_`                                                                      | T::Array<*::String*>                                                           | :heavy_minus_sign:                                                             | Comma-delimited fields to return                                               |