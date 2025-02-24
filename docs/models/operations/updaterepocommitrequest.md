# UpdateRepoCommitRequest


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `repo_commit`                                                             | [::UnifiedRubySDK::Shared::RepoCommit](../../models/shared/repocommit.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `connection_id`                                                           | *::String*                                                                | :heavy_check_mark:                                                        | ID of the connection                                                      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Commit                                                          |
| `fields_`                                                                 | T::Array<*::String*>                                                      | :heavy_minus_sign:                                                        | Comma-delimited fields to return                                          |