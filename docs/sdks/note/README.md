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
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateTicketingNoteRequest.new(
  connection_id="string",
  ticketing_note=Shared::TicketingNote.new(
    raw=Shared::PropertyTicketingNoteRaw.new(),
  ),
)
    
res = s.note.create_ticketing_note(connection_id="string", ticketing_note=Shared::TicketingNote.new(
    raw=Shared::PropertyTicketingNoteRaw.new(),
  ))

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
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetTicketingNoteRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.note.get_ticketing_note(connection_id="string", id="string", fields=[
    "string",
  ])

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
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListTicketingNotesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchTicketingNoteRequest.new(
  connection_id="string",
  id="<ID>",
  ticketing_note=Shared::TicketingNote.new(
    raw=Shared::PropertyTicketingNoteRaw.new(),
  ),
)
    
res = s.note.patch_ticketing_note(connection_id="string", id="string", ticketing_note=Shared::TicketingNote.new(
    raw=Shared::PropertyTicketingNoteRaw.new(),
  ))

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
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveTicketingNoteRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.note.remove_ticketing_note(connection_id="string", id="string")

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
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateTicketingNoteRequest.new(
  connection_id="string",
  id="<ID>",
  ticketing_note=Shared::TicketingNote.new(
    raw=Shared::PropertyTicketingNoteRaw.new(),
  ),
)
    
res = s.note.update_ticketing_note(connection_id="string", id="string", ticketing_note=Shared::TicketingNote.new(
    raw=Shared::PropertyTicketingNoteRaw.new(),
  ))

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

