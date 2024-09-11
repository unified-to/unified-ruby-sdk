# CreateUcContactRequest


## Fields

| Field                                                                              | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `connection_id`                                                                    | *::String*                                                                         | :heavy_check_mark:                                                                 | ID of the connection                                                               |
| `uc_contact`                                                                       | [T.nilable(::UnifiedRubySDK::Shared::UcContact)](../../models/shared/uccontact.md) | :heavy_minus_sign:                                                                 | A contact represents a person that optionally is associated with a call            |
| `fields_`                                                                          | T::Array<*::String*>                                                               | :heavy_minus_sign:                                                                 | Comma-delimited fields to return                                                   |