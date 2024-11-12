# CreateRepoBranchRequest


## Fields

| Field                                                                                | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `connection_id`                                                                      | *::String*                                                                           | :heavy_check_mark:                                                                   | ID of the connection                                                                 |
| `repo_branch`                                                                        | [T.nilable(::UnifiedRubySDK::Shared::RepoBranch)](../../models/shared/repobranch.md) | :heavy_minus_sign:                                                                   | N/A                                                                                  |
| `fields_`                                                                            | T::Array<*::String*>                                                                 | :heavy_minus_sign:                                                                   | Comma-delimited fields to return                                                     |