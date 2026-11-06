# PropertyCalendarBotAutomaticLeave


## Fields

| Field                                                                  | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `detect_bots`                                                          | *T.nilable(T::Boolean)*                                                | :heavy_minus_sign:                                                     | Whether to leave if only bots remain                                   |
| `no_participants_timeout`                                              | *T.nilable(::Float)*                                                   | :heavy_minus_sign:                                                     | Seconds to wait when no other participants before leaving (default: 2) |
| `waiting_room_timeout`                                                 | *T.nilable(::Float)*                                                   | :heavy_minus_sign:                                                     | Seconds to wait in waiting room before leaving (default: 1200)         |