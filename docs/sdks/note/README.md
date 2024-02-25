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
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.note.create_ticketing_note(::UnifiedRubySDK::Operations::CreateTicketingNoteSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", ticketing_note=::UnifiedRubySDK::Shared::TicketingNote.new())

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::CreateTicketingNoteSecurity](../../models/operations/createticketingnotesecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `ticketing_note`                                                                                                    | [::UnifiedRubySDK::Shared::TicketingNote](../../models/shared/ticketingnote.md)                                     | :heavy_minus_sign:                                                                                                  | N/A                                                                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateTicketingNoteResponse)](../../models/operations/createticketingnoteresponse.md)**


## get_ticketing_note

Retrieve a note

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.note.get_ticketing_note(::UnifiedRubySDK::Operations::GetTicketingNoteSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                    | [::UnifiedRubySDK::Operations::GetTicketingNoteSecurity](../../models/operations/getticketingnotesecurity.md) | :heavy_check_mark:                                                                                            | The security requirements to use for the request.                                                             |
| `connection_id`                                                                                               | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | ID of the connection                                                                                          |
| `id`                                                                                                          | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | ID of the Note                                                                                                |
| `fields_`                                                                                                     | T::Array<*::String*>                                                                                          | :heavy_minus_sign:                                                                                            | Comma-delimited fields to return                                                                              |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetTicketingNoteResponse)](../../models/operations/getticketingnoteresponse.md)**


## list_ticketing_notes

List all notes

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListTicketingNotesRequest.new(
  connection_id: "<value>",
)
    
res = s.note.list_ticketing_notes(req, ::UnifiedRubySDK::Operations::ListTicketingNotesSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.ticketing_notes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::UnifiedRubySDK::Operations::ListTicketingNotesRequest](../../models/operations/listticketingnotesrequest.md)   | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::ListTicketingNotesSecurity](../../models/operations/listticketingnotessecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListTicketingNotesResponse)](../../models/operations/listticketingnotesresponse.md)**


## patch_ticketing_note

Update a note

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.note.patch_ticketing_note(::UnifiedRubySDK::Operations::PatchTicketingNoteSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ticketing_note=::UnifiedRubySDK::Shared::TicketingNote.new())

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::PatchTicketingNoteSecurity](../../models/operations/patchticketingnotesecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the Note                                                                                                    |
| `ticketing_note`                                                                                                  | [::UnifiedRubySDK::Shared::TicketingNote](../../models/shared/ticketingnote.md)                                   | :heavy_minus_sign:                                                                                                | N/A                                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchTicketingNoteResponse)](../../models/operations/patchticketingnoteresponse.md)**


## remove_ticketing_note

Remove a note

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.note.remove_ticketing_note(::UnifiedRubySDK::Operations::RemoveTicketingNoteSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::RemoveTicketingNoteSecurity](../../models/operations/removeticketingnotesecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `id`                                                                                                                | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the Note                                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveTicketingNoteResponse)](../../models/operations/removeticketingnoteresponse.md)**


## update_ticketing_note

Update a note

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.note.update_ticketing_note(::UnifiedRubySDK::Operations::UpdateTicketingNoteSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ticketing_note=::UnifiedRubySDK::Shared::TicketingNote.new())

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::UpdateTicketingNoteSecurity](../../models/operations/updateticketingnotesecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `id`                                                                                                                | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the Note                                                                                                      |
| `ticketing_note`                                                                                                    | [::UnifiedRubySDK::Shared::TicketingNote](../../models/shared/ticketingnote.md)                                     | :heavy_minus_sign:                                                                                                  | N/A                                                                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateTicketingNoteResponse)](../../models/operations/updateticketingnoteresponse.md)**

