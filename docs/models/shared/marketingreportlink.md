# MarketingReportLink


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `click_percentage`                                                   | *T.nilable(::Float)*                                                 | :heavy_minus_sign:                                                   | Percentage of total clicks                                           |
| `last_click_at`                                                      | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | Last click timestamp (ISO-8601 / YYYY-MM-DDTHH:MM:SSZ format)        |
| `total_clicks`                                                       | *T.nilable(::Float)*                                                 | :heavy_minus_sign:                                                   | Total clicks on this link                                            |
| `unique_click_percentage`                                            | *T.nilable(::Float)*                                                 | :heavy_minus_sign:                                                   | Percentage of unique clicks                                          |
| `unique_clicks`                                                      | *T.nilable(::Float)*                                                 | :heavy_minus_sign:                                                   | Unique clicks on this link                                           |
| `url`                                                                | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | The URL                                                              |