# Ticketing


### Available Operations

* [create_ticketing_customer](#create_ticketing_customer) - Create a customer
* [create_ticketing_note](#create_ticketing_note) - Create a note
* [create_ticketing_ticket](#create_ticketing_ticket) - Create a ticket
* [get_ticketing_customer](#get_ticketing_customer) - Retrieve a customer
* [get_ticketing_note](#get_ticketing_note) - Retrieve a note
* [get_ticketing_ticket](#get_ticketing_ticket) - Retrieve a ticket
* [list_ticketing_customers](#list_ticketing_customers) - List all customers
* [list_ticketing_notes](#list_ticketing_notes) - List all notes
* [list_ticketing_tickets](#list_ticketing_tickets) - List all tickets
* [patch_ticketing_customer](#patch_ticketing_customer) - Update a customer
* [patch_ticketing_note](#patch_ticketing_note) - Update a note
* [patch_ticketing_ticket](#patch_ticketing_ticket) - Update a ticket
* [remove_ticketing_customer](#remove_ticketing_customer) - Remove a customer
* [remove_ticketing_note](#remove_ticketing_note) - Remove a note
* [remove_ticketing_ticket](#remove_ticketing_ticket) - Remove a ticket
* [update_ticketing_customer](#update_ticketing_customer) - Update a customer
* [update_ticketing_note](#update_ticketing_note) - Update a note
* [update_ticketing_ticket](#update_ticketing_ticket) - Update a ticket

## create_ticketing_customer

Create a customer

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateTicketingCustomerRequest.new(
  path_params=Operations::CreateTicketingCustomerRequest.new(
    connection_id="string",
    ticketing_customer=Shared::TicketingCustomer.new(
      created_at=DateTime.iso8601('2022-06-19T07:03:19.095Z'),
      emails=.new[
        Shared::TicketingEmail.new(
          email="Jenifer.Friesen50@yahoo.com",
          type=Shared::TicketingEmailType::OTHER,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyTicketingCustomerRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::TicketingTelephone.new(
          telephone="string",
          type=Shared::TicketingTelephoneType::MOBILE,
        ),
      ],
      updated_at=DateTime.iso8601('2021-03-09T06:04:13.585Z'),
    ),
  ),
  ticketing_customer=Shared::TicketingCustomer.new(
    created_at=DateTime.iso8601('2021-08-01T06:29:30.132Z'),
    emails=.new[
      Shared::TicketingEmail.new(
        email="Christ_Mayer73@gmail.com",
        type=Shared::TicketingEmailType::HOME,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::TicketingTelephone.new(
        telephone="string",
        type=Shared::TicketingTelephoneType::MOBILE,
      ),
    ],
    updated_at=DateTime.iso8601('2021-03-11T03:16:53.846Z'),
  ),
)
    
res = s.ticketing.create_ticketing_customer(req)

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `ticketing_customer`                                                  | [Shared::TicketingCustomer](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateTicketingCustomerResponse)](../../models/operations/createticketingcustomerresponse.md)**


## create_ticketing_note

Create a note

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateTicketingNoteRequest.new(
  path_params=Operations::CreateTicketingNoteRequest.new(
    connection_id="string",
    ticketing_note=Shared::TicketingNote.new(
      agent_id="string",
      created_at=DateTime.iso8601('2023-04-20T19:05:27.564Z'),
      customer_id="string",
      description="Distributed 4th generation portal",
      id="<ID>",
      raw=Shared::PropertyTicketingNoteRaw.new(),
      ticket_id="string",
      updated_at="string",
    ),
  ),
  ticketing_note=Shared::TicketingNote.new(
    agent_id="string",
    created_at=DateTime.iso8601('2021-08-15T20:47:54.351Z'),
    customer_id="string",
    description="Up-sized systemic system engine",
    id="<ID>",
    raw=Shared::PropertyTicketingNoteRaw.new(),
    ticket_id="string",
    updated_at="string",
  ),
)
    
res = s.ticketing.create_ticketing_note(req)

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `connection_id`                                               | *String*                                                      | :heavy_check_mark:                                            | ID of the connection                                          |
| `ticketing_note`                                              | [Shared::TicketingNote](../../models/shared/ticketingnote.md) | :heavy_minus_sign:                                            | N/A                                                           |


### Response

**[T.nilable(Operations::CreateTicketingNoteResponse)](../../models/operations/createticketingnoteresponse.md)**


## create_ticketing_ticket

Create a ticket

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
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
    
res = s.ticketing.create_ticketing_ticket(req)

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


## get_ticketing_customer

Retrieve a customer

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetTicketingCustomerRequest.new(
  path_params=Operations::GetTicketingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetTicketingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.ticketing.get_ticketing_customer(req)

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Customer               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetTicketingCustomerResponse)](../../models/operations/getticketingcustomerresponse.md)**


## get_ticketing_note

Retrieve a note

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetTicketingNoteRequest.new(
  path_params=Operations::GetTicketingNoteRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetTicketingNoteRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.ticketing.get_ticketing_note(req)

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Note                   |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetTicketingNoteResponse)](../../models/operations/getticketingnoteresponse.md)**


## get_ticketing_ticket

Retrieve a ticket

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
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
    
res = s.ticketing.get_ticketing_ticket(req)

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


## list_ticketing_customers

List all customers

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListTicketingCustomersRequest.new(
  path_params=Operations::ListTicketingCustomersRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=3917.11,
    offset=274.81,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-06-05T16:20:32.808Z'),
  ),
  query_params=Operations::ListTicketingCustomersRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=7893.11,
    offset=989.94,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-09-27T09:05:19.132Z'),
  ),
)
    
res = s.ticketing.list_ticketing_customers(req)

if ! res.ticketing_customers.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListTicketingCustomersRequest](../../models/operations/listticketingcustomersrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListTicketingCustomersResponse)](../../models/operations/listticketingcustomersresponse.md)**


## list_ticketing_notes

List all notes

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListTicketingNotesRequest.new(
  path_params=Operations::ListTicketingNotesRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=6345.23,
    offset=8100.5,
    order="string",
    query="string",
    sort="string",
    ticket_id="string",
    updated_gte=DateTime.iso8601('2023-09-20T18:22:08.785Z'),
  ),
  query_params=Operations::ListTicketingNotesRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=978.81,
    offset=590.84,
    order="string",
    query="string",
    sort="string",
    ticket_id="string",
    updated_gte=DateTime.iso8601('2023-12-29T02:24:44.898Z'),
  ),
)
    
res = s.ticketing.list_ticketing_notes(req)

if ! res.ticketing_notes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Operations::ListTicketingNotesRequest](../../models/operations/listticketingnotesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(Operations::ListTicketingNotesResponse)](../../models/operations/listticketingnotesresponse.md)**


## list_ticketing_tickets

List all tickets

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
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
    
res = s.ticketing.list_ticketing_tickets(req)

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


## patch_ticketing_customer

Update a customer

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchTicketingCustomerRequest.new(
  path_params=Operations::PatchTicketingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    ticketing_customer=Shared::TicketingCustomer.new(
      created_at=DateTime.iso8601('2023-06-30T19:19:15.782Z'),
      emails=.new[
        Shared::TicketingEmail.new(
          email="Rosalinda.Abshire11@hotmail.com",
          type=Shared::TicketingEmailType::WORK,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyTicketingCustomerRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::TicketingTelephone.new(
          telephone="string",
          type=Shared::TicketingTelephoneType::MOBILE,
        ),
      ],
      updated_at=DateTime.iso8601('2022-07-05T12:41:24.747Z'),
    ),
  ),
  ticketing_customer=Shared::TicketingCustomer.new(
    created_at=DateTime.iso8601('2023-03-18T05:35:21.382Z'),
    emails=.new[
      Shared::TicketingEmail.new(
        email="Rosella58@hotmail.com",
        type=Shared::TicketingEmailType::WORK,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::TicketingTelephone.new(
        telephone="string",
        type=Shared::TicketingTelephoneType::HOME,
      ),
    ],
    updated_at=DateTime.iso8601('2021-06-29T01:51:39.383Z'),
  ),
)
    
res = s.ticketing.patch_ticketing_customer(req)

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Customer                                                    |
| `ticketing_customer`                                                  | [Shared::TicketingCustomer](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchTicketingCustomerResponse)](../../models/operations/patchticketingcustomerresponse.md)**


## patch_ticketing_note

Update a note

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchTicketingNoteRequest.new(
  path_params=Operations::PatchTicketingNoteRequest.new(
    connection_id="string",
    id="<ID>",
    ticketing_note=Shared::TicketingNote.new(
      agent_id="string",
      created_at=DateTime.iso8601('2023-09-04T23:33:24.591Z'),
      customer_id="string",
      description="Right-sized national productivity",
      id="<ID>",
      raw=Shared::PropertyTicketingNoteRaw.new(),
      ticket_id="string",
      updated_at="string",
    ),
  ),
  ticketing_note=Shared::TicketingNote.new(
    agent_id="string",
    created_at=DateTime.iso8601('2021-04-25T23:23:24.599Z'),
    customer_id="string",
    description="Versatile object-oriented system engine",
    id="<ID>",
    raw=Shared::PropertyTicketingNoteRaw.new(),
    ticket_id="string",
    updated_at="string",
  ),
)
    
res = s.ticketing.patch_ticketing_note(req)

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `connection_id`                                               | *String*                                                      | :heavy_check_mark:                                            | ID of the connection                                          |
| `id`                                                          | *String*                                                      | :heavy_check_mark:                                            | ID of the Note                                                |
| `ticketing_note`                                              | [Shared::TicketingNote](../../models/shared/ticketingnote.md) | :heavy_minus_sign:                                            | N/A                                                           |


### Response

**[T.nilable(Operations::PatchTicketingNoteResponse)](../../models/operations/patchticketingnoteresponse.md)**


## patch_ticketing_ticket

Update a ticket

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
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
    
res = s.ticketing.patch_ticketing_ticket(req)

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


## remove_ticketing_customer

Remove a customer

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveTicketingCustomerRequest.new(
  path_params=Operations::RemoveTicketingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.ticketing.remove_ticketing_customer(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Customer   |


### Response

**[T.nilable(Operations::RemoveTicketingCustomerResponse)](../../models/operations/removeticketingcustomerresponse.md)**


## remove_ticketing_note

Remove a note

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveTicketingNoteRequest.new(
  path_params=Operations::RemoveTicketingNoteRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.ticketing.remove_ticketing_note(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Note       |


### Response

**[T.nilable(Operations::RemoveTicketingNoteResponse)](../../models/operations/removeticketingnoteresponse.md)**


## remove_ticketing_ticket

Remove a ticket

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveTicketingTicketRequest.new(
  path_params=Operations::RemoveTicketingTicketRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.ticketing.remove_ticketing_ticket(req)

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


## update_ticketing_customer

Update a customer

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateTicketingCustomerRequest.new(
  path_params=Operations::UpdateTicketingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    ticketing_customer=Shared::TicketingCustomer.new(
      created_at=DateTime.iso8601('2023-10-13T13:29:08.944Z'),
      emails=.new[
        Shared::TicketingEmail.new(
          email="Demetris72@hotmail.com",
          type=Shared::TicketingEmailType::HOME,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyTicketingCustomerRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::TicketingTelephone.new(
          telephone="string",
          type=Shared::TicketingTelephoneType::HOME,
        ),
      ],
      updated_at=DateTime.iso8601('2022-07-16T20:40:35.925Z'),
    ),
  ),
  ticketing_customer=Shared::TicketingCustomer.new(
    created_at=DateTime.iso8601('2022-04-03T02:29:57.034Z'),
    emails=.new[
      Shared::TicketingEmail.new(
        email="Annalise93@yahoo.com",
        type=Shared::TicketingEmailType::WORK,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::TicketingTelephone.new(
        telephone="string",
        type=Shared::TicketingTelephoneType::FAX,
      ),
    ],
    updated_at=DateTime.iso8601('2023-11-10T18:20:33.368Z'),
  ),
)
    
res = s.ticketing.update_ticketing_customer(req)

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Customer                                                    |
| `ticketing_customer`                                                  | [Shared::TicketingCustomer](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateTicketingCustomerResponse)](../../models/operations/updateticketingcustomerresponse.md)**


## update_ticketing_note

Update a note

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateTicketingNoteRequest.new(
  path_params=Operations::UpdateTicketingNoteRequest.new(
    connection_id="string",
    id="<ID>",
    ticketing_note=Shared::TicketingNote.new(
      agent_id="string",
      created_at=DateTime.iso8601('2023-05-15T06:19:14.487Z'),
      customer_id="string",
      description="Versatile value-added utilisation",
      id="<ID>",
      raw=Shared::PropertyTicketingNoteRaw.new(),
      ticket_id="string",
      updated_at="string",
    ),
  ),
  ticketing_note=Shared::TicketingNote.new(
    agent_id="string",
    created_at=DateTime.iso8601('2021-05-27T05:08:21.453Z'),
    customer_id="string",
    description="Pre-emptive needs-based infrastructure",
    id="<ID>",
    raw=Shared::PropertyTicketingNoteRaw.new(),
    ticket_id="string",
    updated_at="string",
  ),
)
    
res = s.ticketing.update_ticketing_note(req)

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `connection_id`                                               | *String*                                                      | :heavy_check_mark:                                            | ID of the connection                                          |
| `id`                                                          | *String*                                                      | :heavy_check_mark:                                            | ID of the Note                                                |
| `ticketing_note`                                              | [Shared::TicketingNote](../../models/shared/ticketingnote.md) | :heavy_minus_sign:                                            | N/A                                                           |


### Response

**[T.nilable(Operations::UpdateTicketingNoteResponse)](../../models/operations/updateticketingnoteresponse.md)**


## update_ticketing_ticket

Update a ticket

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
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
    
res = s.ticketing.update_ticketing_ticket(req)

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

