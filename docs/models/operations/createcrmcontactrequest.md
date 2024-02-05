# CreateCrmContactRequest


## Fields

| Field                                                                                    | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `crm_contact`                                                                            | [T.nilable(::UnifiedRubySDK::Shared::CrmContact)](../../models/shared/crmcontact.md)     | :heavy_minus_sign:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |