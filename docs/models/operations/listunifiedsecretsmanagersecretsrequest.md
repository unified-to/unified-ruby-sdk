# ListUnifiedSecretsmanagerSecretsRequest


## Fields

| Field                                    | Type                                     | Required                                 | Description                              |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| `limit`                                  | *T.nilable(::Float)*                     | :heavy_minus_sign:                       | Maximum number of secrets to return      |
| `offset`                                 | *T.nilable(::Float)*                     | :heavy_minus_sign:                       | Number of secrets to skip                |
| `query`                                  | *T.nilable(::String)*                    | :heavy_minus_sign:                       | Filter secrets by name                   |
| `secretsmanager_id`                      | *::String*                               | :heavy_check_mark:                       | The secrets manager to list secrets from |