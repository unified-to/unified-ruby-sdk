# PropertyCrmEventEmail

The email object, when type = email


## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `attachment_file_ids`                                              | T::Array<*::String*>                                               | :heavy_minus_sign:                                                 | N/A                                                                |
| `body`                                                             | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | The event email's body                                             |
| `cc`                                                               | T::Array<*::String*>                                               | :heavy_minus_sign:                                                 | The event email's cc name & email (name <test@test.com>)           |
| `from`                                                             | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | The event email's from name & email address (name <test@test.com>) |
| `subject`                                                          | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | The event email's subject                                          |
| `to`                                                               | T::Array<*::String*>                                               | :heavy_minus_sign:                                                 | The event email's "to" name & email (name <test@test.com>)         |