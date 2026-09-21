# Note
(*note*)

## Overview

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

<!-- UsageSnippet language="ruby" operationID="createTicketingNote" method="post" path="/ticketing/{connection_id}/note" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.note.create_ticketing_note(ticketing_note: Models::Shared::TicketingNote.new(
  created_at: DateTime.iso8601('2019-07-23T15:05:03.241Z'),
  description: 'Civitas absum adipisci vitiosus recusandae tristis dedico libero comminor cena. Spes virgo absorbeo defluo nostrum.',
  id: '0e92d770-f83a-4574-b23e-9d32b18f5607',
  updated_at: DateTime.iso8601('2024-09-07T19:44:57.659Z'),
), connection_id: '<id>')

unless res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ticketing_note`                                                                                                                                 | [Models::Shared::TicketingNote](../../models/shared/ticketingnote.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateTicketingNoteQueryParamFields](../../models/operations/createticketingnotequeryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateTicketingNoteResponse)](../../models/operations/createticketingnoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ticketing_note

Retrieve a note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTicketingNote" method="get" path="/ticketing/{connection_id}/note/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.note.get_ticketing_note(connection_id: '<id>', id: '<id>')

unless res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Note                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetTicketingNoteQueryParamFields](../../models/operations/getticketingnotequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetTicketingNoteResponse)](../../models/operations/getticketingnoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ticketing_notes

List all notes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTicketingNotes" method="get" path="/ticketing/{connection_id}/note" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListTicketingNotesRequest.new(
  connection_id: '<id>',
)

res = s.note.list_ticketing_notes(request: req)

unless res.ticketing_notes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListTicketingNotesRequest](../../models/operations/listticketingnotesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListTicketingNotesResponse)](../../models/operations/listticketingnotesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ticketing_note

Update a note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchTicketingNote" method="patch" path="/ticketing/{connection_id}/note/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchTicketingNoteRequest.new(
  ticketing_note: Models::Shared::TicketingNote.new(
    created_at: DateTime.iso8601('2019-07-23T15:05:03.241Z'),
    description: 'Civitas absum adipisci vitiosus recusandae tristis dedico libero comminor cena. Spes virgo absorbeo defluo nostrum.',
    id: 'b8a209e8-dd1b-4b3e-8657-17503285f173',
    updated_at: DateTime.iso8601('2024-09-07T19:44:57.662Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.note.patch_ticketing_note(request: req)

unless res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchTicketingNoteRequest](../../models/operations/patchticketingnoterequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchTicketingNoteResponse)](../../models/operations/patchticketingnoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ticketing_note

Remove a note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeTicketingNote" method="delete" path="/ticketing/{connection_id}/note/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.note.remove_ticketing_note(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Note       |

### Response

**[T.nilable(Models::Operations::RemoveTicketingNoteResponse)](../../models/operations/removeticketingnoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ticketing_note

Update a note

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTicketingNote" method="put" path="/ticketing/{connection_id}/note/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateTicketingNoteRequest.new(
  ticketing_note: Models::Shared::TicketingNote.new(
    created_at: DateTime.iso8601('2019-07-23T15:05:03.241Z'),
    description: 'Civitas absum adipisci vitiosus recusandae tristis dedico libero comminor cena. Spes virgo absorbeo defluo nostrum.',
    id: 'b8a209e8-dd1b-4b3e-8657-17503285f173',
    updated_at: DateTime.iso8601('2024-09-07T19:44:57.662Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.note.update_ticketing_note(request: req)

unless res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateTicketingNoteRequest](../../models/operations/updateticketingnoterequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateTicketingNoteResponse)](../../models/operations/updateticketingnoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |