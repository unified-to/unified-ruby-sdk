# PatchUcContactRequest


## Fields

| Field                                                                              | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `connection_id`                                                                    | *::String*                                                                         | :heavy_check_mark:                                                                 | ID of the connection                                                               |
| `id`                                                                               | *::String*                                                                         | :heavy_check_mark:                                                                 | ID of the Contact                                                                  |
| `uc_contact`                                                                       | [T.nilable(::UnifiedRubySDK::Shared::UcContact)](../../models/shared/uccontact.md) | :heavy_minus_sign:                                                                 | A contact represents a person that optionally is associated with a call            |