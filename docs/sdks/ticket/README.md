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
    '54aa8cf6-015c-4ab0-82d6-f49c9403f5d1',
    '272f40df-027f-4804-b223-4b111c310308',
  ],
  category_id: 'vilicus',
  created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
  description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
  due_at: DateTime.iso8601('2025-08-10T20:08:44.756Z'),
  id: '4867146e-6dca-4d22-9a88-17d8ee9c8115',
  priority: 'LOW',
  source: 'atavus',
  source_ref: 'f877b738-44a1-4844-9d52-f39f4310ff42',
  status: Models::Shared::TicketingTicketStatus::ACTIVE,
  subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
  tags: [
    'tamen',
    'vitae',
    'torrens',
  ],
  updated_at: DateTime.iso8601('2023-06-07T13:05:59.427Z'),
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
      '4ebb27fb-438a-4782-bff9-b2e44533e724',
      'dffc3b2c-15b5-4517-9be2-bfd3890113ba',
    ],
    category_id: 'vilicus',
    created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
    description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
    due_at: DateTime.iso8601('2025-08-10T20:08:44.765Z'),
    id: 'b73d225c-6998-4d9b-9af9-55eea5a61411',
    priority: 'LOW',
    source: 'atavus',
    source_ref: '272c1fb2-2a9e-4888-8922-9b868b2bbaeb',
    status: Models::Shared::TicketingTicketStatus::ACTIVE,
    subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
    tags: [
      'tamen',
      'vitae',
      'torrens',
    ],
    updated_at: DateTime.iso8601('2023-06-07T13:05:59.431Z'),
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
      '4ebb27fb-438a-4782-bff9-b2e44533e724',
      'dffc3b2c-15b5-4517-9be2-bfd3890113ba',
    ],
    category_id: 'vilicus',
    created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
    description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
    due_at: DateTime.iso8601('2025-08-10T20:08:44.765Z'),
    id: 'b73d225c-6998-4d9b-9af9-55eea5a61411',
    priority: 'LOW',
    source: 'atavus',
    source_ref: '272c1fb2-2a9e-4888-8922-9b868b2bbaeb',
    status: Models::Shared::TicketingTicketStatus::ACTIVE,
    subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
    tags: [
      'tamen',
      'vitae',
      'torrens',
    ],
    updated_at: DateTime.iso8601('2023-06-07T13:05:59.431Z'),
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