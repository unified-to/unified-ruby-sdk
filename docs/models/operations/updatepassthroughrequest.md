# UpdatePassthroughRequest


## Fields

| Field                        | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *String*                     | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *String*                     | :heavy_check_mark:           | N/A                          |
| `request_body`               | T::Hash[Symbol, *Object*]    | :heavy_minus_sign:           | integration-specific payload |