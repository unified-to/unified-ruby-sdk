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
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.ticket.create_ticketing_ticket(::UnifiedRubySDK::Operations::CreateTicketingTicketSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", ticketing_ticket=::UnifiedRubySDK::Shared::TicketingTicket.new())

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                              | [::UnifiedRubySDK::Operations::CreateTicketingTicketSecurity](../../models/operations/createticketingticketsecurity.md) | :heavy_check_mark:                                                                                                      | The security requirements to use for the request.                                                                       |
| `connection_id`                                                                                                         | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | ID of the connection                                                                                                    |
| `ticketing_ticket`                                                                                                      | [::UnifiedRubySDK::Shared::TicketingTicket](../../models/shared/ticketingticket.md)                                     | :heavy_minus_sign:                                                                                                      | N/A                                                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateTicketingTicketResponse)](../../models/operations/createticketingticketresponse.md)**


## get_ticketing_ticket

Retrieve a ticket

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.ticket.get_ticketing_ticket(::UnifiedRubySDK::Operations::GetTicketingTicketSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::GetTicketingTicketSecurity](../../models/operations/getticketingticketsecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the Ticket                                                                                                  |
| `fields_`                                                                                                         | T::Array<*::String*>                                                                                              | :heavy_minus_sign:                                                                                                | Comma-delimited fields to return                                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetTicketingTicketResponse)](../../models/operations/getticketingticketresponse.md)**


## list_ticketing_tickets

List all tickets

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListTicketingTicketsRequest.new(
  connection_id: "<value>",
)
    
res = s.ticket.list_ticketing_tickets(req, ::UnifiedRubySDK::Operations::ListTicketingTicketsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.ticketing_tickets.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListTicketingTicketsRequest](../../models/operations/listticketingticketsrequest.md)   | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::ListTicketingTicketsSecurity](../../models/operations/listticketingticketssecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListTicketingTicketsResponse)](../../models/operations/listticketingticketsresponse.md)**


## patch_ticketing_ticket

Update a ticket

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.ticket.patch_ticketing_ticket(::UnifiedRubySDK::Operations::PatchTicketingTicketSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ticketing_ticket=::UnifiedRubySDK::Shared::TicketingTicket.new())

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::PatchTicketingTicketSecurity](../../models/operations/patchticketingticketsecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Ticket                                                                                                      |
| `ticketing_ticket`                                                                                                    | [::UnifiedRubySDK::Shared::TicketingTicket](../../models/shared/ticketingticket.md)                                   | :heavy_minus_sign:                                                                                                    | N/A                                                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchTicketingTicketResponse)](../../models/operations/patchticketingticketresponse.md)**


## remove_ticketing_ticket

Remove a ticket

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.ticket.remove_ticketing_ticket(::UnifiedRubySDK::Operations::RemoveTicketingTicketSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                              | [::UnifiedRubySDK::Operations::RemoveTicketingTicketSecurity](../../models/operations/removeticketingticketsecurity.md) | :heavy_check_mark:                                                                                                      | The security requirements to use for the request.                                                                       |
| `connection_id`                                                                                                         | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | ID of the connection                                                                                                    |
| `id`                                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | ID of the Ticket                                                                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveTicketingTicketResponse)](../../models/operations/removeticketingticketresponse.md)**


## update_ticketing_ticket

Update a ticket

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.ticket.update_ticketing_ticket(::UnifiedRubySDK::Operations::UpdateTicketingTicketSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ticketing_ticket=::UnifiedRubySDK::Shared::TicketingTicket.new())

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                              | [::UnifiedRubySDK::Operations::UpdateTicketingTicketSecurity](../../models/operations/updateticketingticketsecurity.md) | :heavy_check_mark:                                                                                                      | The security requirements to use for the request.                                                                       |
| `connection_id`                                                                                                         | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | ID of the connection                                                                                                    |
| `id`                                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | ID of the Ticket                                                                                                        |
| `ticketing_ticket`                                                                                                      | [::UnifiedRubySDK::Shared::TicketingTicket](../../models/shared/ticketingticket.md)                                     | :heavy_minus_sign:                                                                                                      | N/A                                                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateTicketingTicketResponse)](../../models/operations/updateticketingticketresponse.md)**

