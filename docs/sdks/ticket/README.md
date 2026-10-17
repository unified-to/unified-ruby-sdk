# Ticket
(*ticket*)

## Overview

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

<!-- UsageSnippet language="ruby" operationID="createTicketingTicket" method="post" path="/ticketing/{connection_id}/ticket" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ticket.create_ticketing_ticket(ticketing_ticket: Models::Shared::TicketingTicket.new(
  attachment_ids: [
    'f94cb7b9-7834-4a6c-b023-267c72b6b389',
    '2ab46ba5-b26f-465b-b283-30bbe225fd10',
  ],
  category_id: 'vilicus',
  created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
  description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
  due_at: DateTime.iso8601('2025-08-11T17:15:13.291Z'),
  id: '91c63fce-7bc9-43c6-9b29-cc54a32d8502',
  priority: 'LOW',
  source: 'atavus',
  source_ref: 'b31626c6-f4a2-4383-a7f7-907940337da0',
  status: Models::Shared::TicketingTicketStatus::ACTIVE,
  subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
  tags: [
    'tamen',
    'vitae',
    'torrens',
  ],
  updated_at: DateTime.iso8601('2023-06-07T23:04:07.216Z'),
  url: 'https://yellowish-testimonial.biz',
), connection_id: '<id>')

unless res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ticketing_ticket`                                                                                                                               | [Models::Shared::TicketingTicket](../../models/shared/ticketingticket.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateTicketingTicketQueryParamFields](../../models/operations/createticketingticketqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateTicketingTicketResponse)](../../models/operations/createticketingticketresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ticketing_ticket

Retrieve a ticket

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTicketingTicket" method="get" path="/ticketing/{connection_id}/ticket/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ticket.get_ticketing_ticket(connection_id: '<id>', id: '<id>')

unless res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Ticket                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetTicketingTicketQueryParamFields](../../models/operations/getticketingticketqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetTicketingTicketResponse)](../../models/operations/getticketingticketresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ticketing_tickets

List all tickets

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTicketingTickets" method="get" path="/ticketing/{connection_id}/ticket" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListTicketingTicketsRequest.new(
  connection_id: '<id>',
)

res = s.ticket.list_ticketing_tickets(request: req)

unless res.ticketing_tickets.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListTicketingTicketsRequest](../../models/operations/listticketingticketsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListTicketingTicketsResponse)](../../models/operations/listticketingticketsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ticketing_ticket

Update a ticket

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchTicketingTicket" method="patch" path="/ticketing/{connection_id}/ticket/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchTicketingTicketRequest.new(
  ticketing_ticket: Models::Shared::TicketingTicket.new(
    attachment_ids: [
      'a3668bd9-f5b3-4cc0-bec8-f43f19df33ee',
      'e46c21af-96eb-47cc-a40a-fd93252bebcc',
    ],
    category_id: 'vilicus',
    created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
    description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
    due_at: DateTime.iso8601('2025-08-11T17:15:13.300Z'),
    id: 'b8bef494-484d-42a1-8398-67760ca9219c',
    priority: 'LOW',
    source: 'atavus',
    source_ref: 'f7b12ae8-9f54-49c9-9cf5-37d5355fb8fb',
    status: Models::Shared::TicketingTicketStatus::ACTIVE,
    subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
    tags: [
      'tamen',
      'vitae',
      'torrens',
    ],
    updated_at: DateTime.iso8601('2023-06-07T23:04:07.220Z'),
    url: 'https://yellowish-testimonial.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ticket.patch_ticketing_ticket(request: req)

unless res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchTicketingTicketRequest](../../models/operations/patchticketingticketrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchTicketingTicketResponse)](../../models/operations/patchticketingticketresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ticketing_ticket

Remove a ticket

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeTicketingTicket" method="delete" path="/ticketing/{connection_id}/ticket/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ticket.remove_ticketing_ticket(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Ticket     |

### Response

**[T.nilable(Models::Operations::RemoveTicketingTicketResponse)](../../models/operations/removeticketingticketresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ticketing_ticket

Update a ticket

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTicketingTicket" method="put" path="/ticketing/{connection_id}/ticket/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateTicketingTicketRequest.new(
  ticketing_ticket: Models::Shared::TicketingTicket.new(
    attachment_ids: [
      'a3668bd9-f5b3-4cc0-bec8-f43f19df33ee',
      'e46c21af-96eb-47cc-a40a-fd93252bebcc',
    ],
    category_id: 'vilicus',
    created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
    description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
    due_at: DateTime.iso8601('2025-08-11T17:15:13.300Z'),
    id: 'b8bef494-484d-42a1-8398-67760ca9219c',
    priority: 'LOW',
    source: 'atavus',
    source_ref: 'f7b12ae8-9f54-49c9-9cf5-37d5355fb8fb',
    status: Models::Shared::TicketingTicketStatus::ACTIVE,
    subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
    tags: [
      'tamen',
      'vitae',
      'torrens',
    ],
    updated_at: DateTime.iso8601('2023-06-07T23:04:07.220Z'),
    url: 'https://yellowish-testimonial.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ticket.update_ticketing_ticket(request: req)

unless res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateTicketingTicketRequest](../../models/operations/updateticketingticketrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateTicketingTicketResponse)](../../models/operations/updateticketingticketresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |