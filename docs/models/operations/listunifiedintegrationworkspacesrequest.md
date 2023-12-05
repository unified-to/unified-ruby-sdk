# ListUnifiedIntegrationWorkspacesRequest


## Fields

| Field                                                                                         | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `active`                                                                                      | *T.nilable(T::Boolean)*                                                                       | :heavy_minus_sign:                                                                            | Filter the results for only the workspace's active integrations                               |
| `categories`                                                                                  | T::Array<[Operations::QueryParamCategories](../../models/operations/queryparamcategories.md)> | :heavy_minus_sign:                                                                            | Filter the results on these categories                                                        |
| `env`                                                                                         | *T.nilable(String)*                                                                           | :heavy_minus_sign:                                                                            | N/A                                                                                           |
| `limit`                                                                                       | *T.nilable(Float)*                                                                            | :heavy_minus_sign:                                                                            | N/A                                                                                           |
| `offset`                                                                                      | *T.nilable(Float)*                                                                            | :heavy_minus_sign:                                                                            | N/A                                                                                           |
| `summary`                                                                                     | *T.nilable(T::Boolean)*                                                                       | :heavy_minus_sign:                                                                            | N/A                                                                                           |
| `updated_gte`                                                                                 | *T.nilable(String)*                                                                           | :heavy_minus_sign:                                                                            | N/A                                                                                           |
| `workspace_id`                                                                                | *String*                                                                                      | :heavy_check_mark:                                                                            | The ID of the workspace                                                                       |