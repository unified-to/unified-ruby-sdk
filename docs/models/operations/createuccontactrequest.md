# CreateUcContactRequest


## Fields

| Field                                                                   | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `uc_contact`                                                            | [::UnifiedRubySDK::Shared::UcContact](../../models/shared/uccontact.md) | :heavy_check_mark:                                                      | A contact represents a person that optionally is associated with a call |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `fields_`                                                               | T::Array<*::String*>                                                    | :heavy_minus_sign:                                                      | Comma-delimited fields to return                                        |