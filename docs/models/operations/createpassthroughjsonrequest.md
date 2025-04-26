# CreatePassthroughJsonRequest


## Fields

| Field                        | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `request_body`               | *T.nilable(::Object)*        | :heavy_minus_sign:           | integration-specific payload |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *::String*                   | :heavy_check_mark:           | N/A                          |
| `query`                      | T::Hash[Symbol, *::Object*]  | :heavy_minus_sign:           | N/A                          |