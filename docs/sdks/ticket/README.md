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
    '7bd88e89-248b-4365-a664-2c9d8c875834',
    'd3f71004-0c34-4c64-a3da-a93cb42ae7b9',
  ],
  category_id: 'vilicus',
  created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
  description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
  due_at: DateTime.iso8601('2025-07-22T12:33:03.832Z'),
  id: '8e4bd24d-1460-4051-943a-2eca1c4e55f4',
  priority: 'LOW',
  source: 'atavus',
  source_ref: 'aa0ac6fa-a0c8-4d53-a46c-5087a7e65f97',
  status: Models::Shared::TicketingTicketStatus::ACTIVE,
  subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
  tags: [
    'tamen',
    'vitae',
    'torrens',
  ],
  updated_at: DateTime.iso8601('2023-05-29T10:09:13.669Z'),
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
      '5e97ec82-7cc3-47fb-b686-bea15836daeb',
      '9e213d81-c7b7-445b-8b84-fe195e0a76a1',
    ],
    category_id: 'vilicus',
    created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
    description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
    due_at: DateTime.iso8601('2025-07-22T12:33:03.840Z'),
    id: '304a28df-8ac9-45ca-a304-26c7830a274f',
    priority: 'LOW',
    source: 'atavus',
    source_ref: '2007a2e2-c681-445f-b9b9-9cd7e037b863',
    status: Models::Shared::TicketingTicketStatus::ACTIVE,
    subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
    tags: [
      'tamen',
      'vitae',
      'torrens',
    ],
    updated_at: DateTime.iso8601('2023-05-29T10:09:13.673Z'),
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
      '5e97ec82-7cc3-47fb-b686-bea15836daeb',
      '9e213d81-c7b7-445b-8b84-fe195e0a76a1',
    ],
    category_id: 'vilicus',
    created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
    description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
    due_at: DateTime.iso8601('2025-07-22T12:33:03.840Z'),
    id: '304a28df-8ac9-45ca-a304-26c7830a274f',
    priority: 'LOW',
    source: 'atavus',
    source_ref: '2007a2e2-c681-445f-b9b9-9cd7e037b863',
    status: Models::Shared::TicketingTicketStatus::ACTIVE,
    subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
    tags: [
      'tamen',
      'vitae',
      'torrens',
    ],
    updated_at: DateTime.iso8601('2023-05-29T10:09:13.673Z'),
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