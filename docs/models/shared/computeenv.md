# ComputeEnv


## Fields

| Field                                                   | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `name`                                                  | *::String*                                              | :heavy_check_mark:                                      | Environment variable name                               |
| `value`                                                 | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | Environment variable value (write-only; never returned) |