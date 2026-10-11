# UcRecordingTranscript


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `contact_id`                                                         | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | (reference to UcContact)                                             |
| `end_at`                                                             | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | (ISO-8601 / YYYY-MM-DDTHH:MM:SSZ format)                             |
| `start_at`                                                           | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | (ISO-8601 / YYYY-MM-DDTHH:MM:SSZ format)                             |
| `text`                                                               | *::String*                                                           | :heavy_check_mark:                                                   | N/A                                                                  |
| `user_id`                                                            | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | reference to HrisEmployee (reference to HrisEmployee)                |