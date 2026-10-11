# AdSchedule


## Fields

| Field                                                         | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `bid_modifier`                                                | *T.nilable(::Float)*                                          | :heavy_minus_sign:                                            | 0.1-10.0                                                      |
| `day_of_week`                                                 | [Models::Shared::DayOfWeek](../../models/shared/dayofweek.md) | :heavy_check_mark:                                            | N/A                                                           |
| `end_hour`                                                    | *::Float*                                                     | :heavy_check_mark:                                            | 0-24 (24 = end of day)                                        |
| `end_minute`                                                  | *T.nilable(::Float)*                                          | :heavy_minus_sign:                                            | 0, 15, 30, 45                                                 |
| `start_hour`                                                  | *::Float*                                                     | :heavy_check_mark:                                            | 0-23                                                          |
| `start_minute`                                                | *T.nilable(::Float)*                                          | :heavy_minus_sign:                                            | 0, 15, 30, 45                                                 |