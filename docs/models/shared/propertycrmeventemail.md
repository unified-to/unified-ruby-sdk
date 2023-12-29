# PropertyCrmEventEmail

The email object, when type = email


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `body`                                                               | *T.nilable(String)*                                                  | :heavy_minus_sign:                                                   | N/A                                                                  |
| `cc`                                                                 | T::Array<*String*>                                                   | :heavy_minus_sign:                                                   | The event email's cc name & email (name <test@test.com>)             |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | N/A                                                                  |
| `from`                                                               | *T.nilable(String)*                                                  | :heavy_minus_sign:                                                   | N/A                                                                  |
| `subject`                                                            | *T.nilable(String)*                                                  | :heavy_minus_sign:                                                   | N/A                                                                  |
| `to`                                                                 | T::Array<*String*>                                                   | :heavy_minus_sign:                                                   | The event email's "to" name & email (name <test@test.com>)           |