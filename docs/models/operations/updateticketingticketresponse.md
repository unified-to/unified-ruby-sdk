# UpdateTicketingTicketResponse


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `content_type`                                                               | *String*                                                                     | :heavy_check_mark:                                                           | HTTP response content type for this operation                                |
| `status_code`                                                                | *Integer*                                                                    | :heavy_check_mark:                                                           | HTTP response status code for this operation                                 |
| `raw_response`                                                               | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response)  | :heavy_minus_sign:                                                           | Raw HTTP response; suitable for custom response parsing                      |
| `ticketing_ticket`                                                           | [T.nilable(Shared::TicketingTicket)](../../models/shared/ticketingticket.md) | :heavy_minus_sign:                                                           | Successful                                                                   |