# PropertyCrmEventMeeting

The meeting object, when type = meeting


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `description`                                                               | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | The event meeting's agendadescription                                       |
| `end_at`                                                                    | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)        | :heavy_minus_sign:                                                          | The event meeting's end datetime (ISO-8601 / YYYY-MM-DDTHH:MM:SSZ format)   |
| `start_at`                                                                  | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)        | :heavy_minus_sign:                                                          | The event meeting's start datetime (ISO-8601 / YYYY-MM-DDTHH:MM:SSZ format) |
| `title`                                                                     | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | The event meeting's topicsubject                                            |