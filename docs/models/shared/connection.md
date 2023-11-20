# Connection

A connection represents a specific authentication of an integration.


## Fields

| Field                                                                                                   | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `auth`                                                                                                  | [T.nilable(Shared::PropertyConnectionAuth)](../../models/shared/propertyconnectionauth.md)              | :heavy_minus_sign:                                                                                      | An authentication object that represents a specific authorized user's connection to an integration.     |
| `auth_aws_arn`                                                                                          | *T.nilable(String)*                                                                                     | :heavy_minus_sign:                                                                                      | N/A                                                                                                     |
| `categories`                                                                                            | T::Array<[Shared::PropertyConnectionCategories](../../models/shared/propertyconnectioncategories.md)>   | :heavy_check_mark:                                                                                      | The Integration categories that this connection supports                                                |
| `created_at`                                                                                            | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                    | :heavy_minus_sign:                                                                                      | N/A                                                                                                     |
| `environment`                                                                                           | *T.nilable(String)*                                                                                     | :heavy_minus_sign:                                                                                      | N/A                                                                                                     |
| `external_xref`                                                                                         | *T.nilable(String)*                                                                                     | :heavy_minus_sign:                                                                                      | N/A                                                                                                     |
| `id`                                                                                                    | *T.nilable(String)*                                                                                     | :heavy_minus_sign:                                                                                      | N/A                                                                                                     |
| `integration_type`                                                                                      | *String*                                                                                                | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `is_paused`                                                                                             | *T.nilable(T::Boolean)*                                                                                 | :heavy_minus_sign:                                                                                      | N/A                                                                                                     |
| `permissions`                                                                                           | T::Array<[Shared::PropertyConnectionPermissions](../../models/shared/propertyconnectionpermissions.md)> | :heavy_check_mark:                                                                                      | N/A                                                                                                     |
| `updated_at`                                                                                            | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                    | :heavy_minus_sign:                                                                                      | N/A                                                                                                     |
| `workspace_id`                                                                                          | *T.nilable(String)*                                                                                     | :heavy_minus_sign:                                                                                      | N/A                                                                                                     |