# GenaiSkill


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `created_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | (ISO-8601 / YYYY-MM-DDTHH:MM:SSZ format)                             |
| `description`                                                        | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | What the skill does and when to use it.                              |
| `id`                                                                 | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | N/A                                                                  |
| `name`                                                               | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | N/A                                                                  |
| `raw`                                                                | T::Hash[Symbol, *::Object*]                                          | :heavy_minus_sign:                                                   | N/A                                                                  |
| `updated_at`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | (ISO-8601 / YYYY-MM-DDTHH:MM:SSZ format)                             |
| `version`                                                            | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | The version that is used when a prompt does not pin one.             |