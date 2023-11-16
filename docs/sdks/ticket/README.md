# Ticket


### Available Operations

* [create_ticketing_ticket](#create_ticketing_ticket) - Create a ticket
* [get_ticketing_ticket](#get_ticketing_ticket) - Retrieve a ticket
* [list_ticketing_tickets](#list_ticketing_tickets) - List all tickets
* [patch_ticketing_ticket](#patch_ticketing_ticket) - Update a ticket
* [remove_ticketing_ticket](#remove_ticketing_ticket) - Remove a ticket
* [update_ticketing_ticket](#update_ticketing_ticket) - Update a ticket

## create_ticketing_ticket

Create a ticket

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::CreateTicketingTicketRequest.new(
  path_params=Operations::CreateTicketingTicketRequest.new(
    connection_id="string",
    ticketing_ticket=Shared::TicketingTicket.new(
      category="string",
      closed_at=DateTime.iso8601('2021-06-28T11:20:21.005Z'),
      created_at=DateTime.iso8601('2022-08-19T22:26:35.479Z'),
      customer_id="string",
      description="Automated composite productivity",
      id="<ID>",
      priority="string",
      raw=Shared::PropertyTicketingTicketRaw.new(),
      source="string",
      source_ref="string",
      status=Shared::TicketingTicketStatus::CLOSED,
      subject="string",
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2023-05-07T02:01:09.815Z'),
    ),
  ),
  ticketing_ticket=Shared::TicketingTicket.new(
    category="string",
    closed_at=DateTime.iso8601('2023-12-07T07:31:56.249Z'),
    created_at=DateTime.iso8601('2021-07-31T11:54:47.053Z'),
    customer_id="string",
    description="Synergistic multimedia interface",
    id="<ID>",
    priority="string",
    raw=Shared::PropertyTicketingTicketRaw.new(),
    source="string",
    source_ref="string",
    status=Shared::TicketingTicketStatus::ACTIVE,
    subject="string",
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2023-08-10T16:44:56.220Z'),
  ),
)
    
res = s.ticket.create_ticketing_ticket(req)

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *String*                                                          | :heavy_check_mark:                                                | ID of the connection                                              |
| `ticketing_ticket`                                                | [Shared::TicketingTicket](../../models/shared/ticketingticket.md) | :heavy_minus_sign:                                                | N/A                                                               |


### Response

**[T.nilable(Operations::CreateTicketingTicketResponse)](../../models/operations/createticketingticketresponse.md)**


## get_ticketing_ticket

Retrieve a ticket

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::GetTicketingTicketRequest.new(
  path_params=Operations::GetTicketingTicketRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetTicketingTicketRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.ticket.get_ticketing_ticket(req)

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Ticket                 |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetTicketingTicketResponse)](../../models/operations/getticketingticketresponse.md)**


## list_ticketing_tickets

List all tickets

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::ListTicketingTicketsRequest.new(
  path_params=Operations::ListTicketingTicketsRequest.new(
    agent_id="string",
    connection_id="string",
    customer_id="string",
    fields=.new[
      "string",
    ],
    limit=6139.39,
    offset=1839.22,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-02-28T14:14:11.846Z'),
  ),
  query_params=Operations::ListTicketingTicketsRequest.new(
    agent_id="string",
    connection_id="string",
    customer_id="string",
    fields=.new[
      "string",
    ],
    limit=920.33,
    offset=9819.93,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-05-09T21:55:02.079Z'),
  ),
)
    
res = s.ticket.list_ticketing_tickets(req)

if ! res.ticketing_tickets.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Operations::ListTicketingTicketsRequest](../../models/operations/listticketingticketsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(Operations::ListTicketingTicketsResponse)](../../models/operations/listticketingticketsresponse.md)**


## patch_ticketing_ticket

Update a ticket

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::PatchTicketingTicketRequest.new(
  path_params=Operations::PatchTicketingTicketRequest.new(
    connection_id="string",
    id="<ID>",
    ticketing_ticket=Shared::TicketingTicket.new(
      category="string",
      closed_at=DateTime.iso8601('2021-09-14T12:10:45.667Z'),
      created_at=DateTime.iso8601('2022-09-29T23:22:13.568Z'),
      customer_id="string",
      description="Operative composite strategy",
      id="<ID>",
      priority="string",
      raw=Shared::PropertyTicketingTicketRaw.new(),
      source="string",
      source_ref="string",
      status=Shared::TicketingTicketStatus::CLOSED,
      subject="string",
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2023-07-06T16:05:08.020Z'),
    ),
  ),
  ticketing_ticket=Shared::TicketingTicket.new(
    category="string",
    closed_at=DateTime.iso8601('2021-09-28T07:48:44.785Z'),
    created_at=DateTime.iso8601('2021-10-23T20:42:43.325Z'),
    customer_id="string",
    description="Fully-configurable zero administration contingency",
    id="<ID>",
    priority="string",
    raw=Shared::PropertyTicketingTicketRaw.new(),
    source="string",
    source_ref="string",
    status=Shared::TicketingTicketStatus::CLOSED,
    subject="string",
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2021-11-20T17:05:11.248Z'),
  ),
)
    
res = s.ticket.patch_ticketing_ticket(req)

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *String*                                                          | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *String*                                                          | :heavy_check_mark:                                                | ID of the Ticket                                                  |
| `ticketing_ticket`                                                | [Shared::TicketingTicket](../../models/shared/ticketingticket.md) | :heavy_minus_sign:                                                | N/A                                                               |


### Response

**[T.nilable(Operations::PatchTicketingTicketResponse)](../../models/operations/patchticketingticketresponse.md)**


## remove_ticketing_ticket

Remove a ticket

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::RemoveTicketingTicketRequest.new(
  path_params=Operations::RemoveTicketingTicketRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.ticket.remove_ticketing_ticket(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Ticket     |


### Response

**[T.nilable(Operations::RemoveTicketingTicketResponse)](../../models/operations/removeticketingticketresponse.md)**


## update_ticketing_ticket

Update a ticket

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::UpdateTicketingTicketRequest.new(
  path_params=Operations::UpdateTicketingTicketRequest.new(
    connection_id="string",
    id="<ID>",
    ticketing_ticket=Shared::TicketingTicket.new(
      category="string",
      closed_at=DateTime.iso8601('2021-05-30T22:19:31.995Z'),
      created_at=DateTime.iso8601('2023-04-29T18:27:57.571Z'),
      customer_id="string",
      description="Configurable user-facing middleware",
      id="<ID>",
      priority="string",
      raw=Shared::PropertyTicketingTicketRaw.new(),
      source="string",
      source_ref="string",
      status=Shared::TicketingTicketStatus::ACTIVE,
      subject="string",
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2022-01-16T17:18:07.743Z'),
    ),
  ),
  ticketing_ticket=Shared::TicketingTicket.new(
    category="string",
    closed_at=DateTime.iso8601('2022-01-25T19:24:04.324Z'),
    created_at=DateTime.iso8601('2023-08-17T23:33:52.943Z'),
    customer_id="string",
    description="Configurable executive policy",
    id="<ID>",
    priority="string",
    raw=Shared::PropertyTicketingTicketRaw.new(),
    source="string",
    source_ref="string",
    status=Shared::TicketingTicketStatus::ACTIVE,
    subject="string",
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2022-06-27T20:32:42.434Z'),
  ),
)
    
res = s.ticket.update_ticketing_ticket(req)

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *String*                                                          | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *String*                                                          | :heavy_check_mark:                                                | ID of the Ticket                                                  |
| `ticketing_ticket`                                                | [Shared::TicketingTicket](../../models/shared/ticketingticket.md) | :heavy_minus_sign:                                                | N/A                                                               |


### Response

**[T.nilable(Operations::UpdateTicketingTicketResponse)](../../models/operations/updateticketingticketresponse.md)**

