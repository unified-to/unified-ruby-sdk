# CreateKmsSpaceRequest


## Fields

| Field                                                                            | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `connection_id`                                                                  | *::String*                                                                       | :heavy_check_mark:                                                               | ID of the connection                                                             |
| `kms_space`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::KmsSpace)](../../models/shared/kmsspace.md) | :heavy_minus_sign:                                                               | N/A                                                                              |
| `fields_`                                                                        | T::Array<*::String*>                                                             | :heavy_minus_sign:                                                               | Comma-delimited fields to return                                                 |