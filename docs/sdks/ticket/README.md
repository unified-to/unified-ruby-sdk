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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateTicketingTicketRequest.new(
  connection_id="string",
  ticketing_ticket=Shared::TicketingTicket.new(
    raw=Shared::PropertyTicketingTicketRaw.new(),
    tags=[
      "string",
    ],
  ),
)
    
res = s.ticket.create_ticketing_ticket(connection_id="string", ticketing_ticket=Shared::TicketingTicket.new(
    raw=Shared::PropertyTicketingTicketRaw.new(),
    tags=[
      "string",
    ],
  ))

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetTicketingTicketRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.ticket.get_ticketing_ticket(connection_id="string", id="string", fields=[
    "string",
  ])

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListTicketingTicketsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchTicketingTicketRequest.new(
  connection_id="string",
  id="<ID>",
  ticketing_ticket=Shared::TicketingTicket.new(
    raw=Shared::PropertyTicketingTicketRaw.new(),
    tags=[
      "string",
    ],
  ),
)
    
res = s.ticket.patch_ticketing_ticket(connection_id="string", id="string", ticketing_ticket=Shared::TicketingTicket.new(
    raw=Shared::PropertyTicketingTicketRaw.new(),
    tags=[
      "string",
    ],
  ))

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveTicketingTicketRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.ticket.remove_ticketing_ticket(connection_id="string", id="string")

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateTicketingTicketRequest.new(
  connection_id="string",
  id="<ID>",
  ticketing_ticket=Shared::TicketingTicket.new(
    raw=Shared::PropertyTicketingTicketRaw.new(),
    tags=[
      "string",
    ],
  ),
)
    
res = s.ticket.update_ticketing_ticket(connection_id="string", id="string", ticketing_ticket=Shared::TicketingTicket.new(
    raw=Shared::PropertyTicketingTicketRaw.new(),
    tags=[
      "string",
    ],
  ))

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

