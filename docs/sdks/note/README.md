# Note


### Available Operations

* [create_ticketing_note](#create_ticketing_note) - Create a note
* [get_ticketing_note](#get_ticketing_note) - Retrieve a note
* [list_ticketing_notes](#list_ticketing_notes) - List all notes
* [patch_ticketing_note](#patch_ticketing_note) - Update a note
* [remove_ticketing_note](#remove_ticketing_note) - Remove a note
* [update_ticketing_note](#update_ticketing_note) - Update a note

## create_ticketing_note

Create a note

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.note.create_ticketing_note(req)

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


## get_ticketing_note

Retrieve a note

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.note.get_ticketing_note(req)

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


## list_ticketing_notes

List all notes

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.note.list_ticketing_notes(req)

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


## patch_ticketing_note

Update a note

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.note.patch_ticketing_note(req)

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


## remove_ticketing_note

Remove a note

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::RemoveTicketingNoteRequest.new(
  path_params=Operations::RemoveTicketingNoteRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.note.remove_ticketing_note(req)

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


## update_ticketing_note

Update a note

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.note.update_ticketing_note(req)

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

