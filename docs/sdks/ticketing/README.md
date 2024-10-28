# Ticketing

## Overview

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
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.create_ticketing_customer(connection_id="<id>", ticketing_customer=::UnifiedRubySDK::Shared::TicketingCustomer.new(), fields_=[
  "<value>",
])

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                    | *::String*                                                                                         | :heavy_check_mark:                                                                                 | ID of the connection                                                                               |
| `ticketing_customer`                                                                               | [T.nilable(::UnifiedRubySDK::Shared::TicketingCustomer)](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                                                 | N/A                                                                                                |
| `fields_`                                                                                          | T::Array<*::String*>                                                                               | :heavy_minus_sign:                                                                                 | Comma-delimited fields to return                                                                   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateTicketingCustomerResponse)](../../models/operations/createticketingcustomerresponse.md)**



## create_ticketing_note

Create a note

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.create_ticketing_note(connection_id="<id>", ticketing_note=::UnifiedRubySDK::Shared::TicketingNote.new(), fields_=[
  "<value>",
])

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                  | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `connection_id`                                                                            | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the connection                                                                       |
| `ticketing_note`                                                                           | [T.nilable(::UnifiedRubySDK::Shared::TicketingNote)](../../models/shared/ticketingnote.md) | :heavy_minus_sign:                                                                         | N/A                                                                                        |
| `fields_`                                                                                  | T::Array<*::String*>                                                                       | :heavy_minus_sign:                                                                         | Comma-delimited fields to return                                                           |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateTicketingNoteResponse)](../../models/operations/createticketingnoteresponse.md)**



## create_ticketing_ticket

Create a ticket

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.create_ticketing_ticket(connection_id="<id>", ticketing_ticket=::UnifiedRubySDK::Shared::TicketingTicket.new(), fields_=[
  "<value>",
])

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `ticketing_ticket`                                                                             | [T.nilable(::UnifiedRubySDK::Shared::TicketingTicket)](../../models/shared/ticketingticket.md) | :heavy_minus_sign:                                                                             | N/A                                                                                            |
| `fields_`                                                                                      | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | Comma-delimited fields to return                                                               |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateTicketingTicketResponse)](../../models/operations/createticketingticketresponse.md)**



## get_ticketing_customer

Retrieve a customer

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.get_ticketing_customer(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Customer               |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetTicketingCustomerResponse)](../../models/operations/getticketingcustomerresponse.md)**



## get_ticketing_note

Retrieve a note

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.get_ticketing_note(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Note                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetTicketingNoteResponse)](../../models/operations/getticketingnoteresponse.md)**



## get_ticketing_ticket

Retrieve a ticket

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.get_ticketing_ticket(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Ticket                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetTicketingTicketResponse)](../../models/operations/getticketingticketresponse.md)**



## list_ticketing_customers

List all customers

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListTicketingCustomersRequest.new(
  connection_id: "<id>",
)
    
res = s.ticketing.list_ticketing_customers(req)

if ! res.ticketing_customers.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListTicketingCustomersRequest](../../models/operations/listticketingcustomersrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListTicketingCustomersResponse)](../../models/operations/listticketingcustomersresponse.md)**



## list_ticketing_notes

List all notes

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListTicketingNotesRequest.new(
  connection_id: "<id>",
)
    
res = s.ticketing.list_ticketing_notes(req)

if ! res.ticketing_notes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListTicketingNotesRequest](../../models/operations/listticketingnotesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListTicketingNotesResponse)](../../models/operations/listticketingnotesresponse.md)**



## list_ticketing_tickets

List all tickets

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListTicketingTicketsRequest.new(
  connection_id: "<id>",
)
    
res = s.ticketing.list_ticketing_tickets(req)

if ! res.ticketing_tickets.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::UnifiedRubySDK::Operations::ListTicketingTicketsRequest](../../models/operations/listticketingticketsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListTicketingTicketsResponse)](../../models/operations/listticketingticketsresponse.md)**



## patch_ticketing_customer

Update a customer

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.patch_ticketing_customer(connection_id="<id>", id="<id>", ticketing_customer=::UnifiedRubySDK::Shared::TicketingCustomer.new(), fields_=[
  "<value>",
])

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                    | *::String*                                                                                         | :heavy_check_mark:                                                                                 | ID of the connection                                                                               |
| `id`                                                                                               | *::String*                                                                                         | :heavy_check_mark:                                                                                 | ID of the Customer                                                                                 |
| `ticketing_customer`                                                                               | [T.nilable(::UnifiedRubySDK::Shared::TicketingCustomer)](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                                                 | N/A                                                                                                |
| `fields_`                                                                                          | T::Array<*::String*>                                                                               | :heavy_minus_sign:                                                                                 | Comma-delimited fields to return                                                                   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchTicketingCustomerResponse)](../../models/operations/patchticketingcustomerresponse.md)**



## patch_ticketing_note

Update a note

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.patch_ticketing_note(connection_id="<id>", id="<id>", ticketing_note=::UnifiedRubySDK::Shared::TicketingNote.new(), fields_=[
  "<value>",
])

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                  | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `connection_id`                                                                            | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the connection                                                                       |
| `id`                                                                                       | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the Note                                                                             |
| `ticketing_note`                                                                           | [T.nilable(::UnifiedRubySDK::Shared::TicketingNote)](../../models/shared/ticketingnote.md) | :heavy_minus_sign:                                                                         | N/A                                                                                        |
| `fields_`                                                                                  | T::Array<*::String*>                                                                       | :heavy_minus_sign:                                                                         | Comma-delimited fields to return                                                           |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchTicketingNoteResponse)](../../models/operations/patchticketingnoteresponse.md)**



## patch_ticketing_ticket

Update a ticket

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.patch_ticketing_ticket(connection_id="<id>", id="<id>", ticketing_ticket=::UnifiedRubySDK::Shared::TicketingTicket.new(), fields_=[
  "<value>",
])

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the Ticket                                                                               |
| `ticketing_ticket`                                                                             | [T.nilable(::UnifiedRubySDK::Shared::TicketingTicket)](../../models/shared/ticketingticket.md) | :heavy_minus_sign:                                                                             | N/A                                                                                            |
| `fields_`                                                                                      | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | Comma-delimited fields to return                                                               |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchTicketingTicketResponse)](../../models/operations/patchticketingticketresponse.md)**



## remove_ticketing_customer

Remove a customer

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.remove_ticketing_customer(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Customer   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveTicketingCustomerResponse)](../../models/operations/removeticketingcustomerresponse.md)**



## remove_ticketing_note

Remove a note

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.remove_ticketing_note(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveTicketingNoteResponse)](../../models/operations/removeticketingnoteresponse.md)**



## remove_ticketing_ticket

Remove a ticket

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.remove_ticketing_ticket(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveTicketingTicketResponse)](../../models/operations/removeticketingticketresponse.md)**



## update_ticketing_customer

Update a customer

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.update_ticketing_customer(connection_id="<id>", id="<id>", ticketing_customer=::UnifiedRubySDK::Shared::TicketingCustomer.new(), fields_=[
  "<value>",
])

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                    | *::String*                                                                                         | :heavy_check_mark:                                                                                 | ID of the connection                                                                               |
| `id`                                                                                               | *::String*                                                                                         | :heavy_check_mark:                                                                                 | ID of the Customer                                                                                 |
| `ticketing_customer`                                                                               | [T.nilable(::UnifiedRubySDK::Shared::TicketingCustomer)](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                                                 | N/A                                                                                                |
| `fields_`                                                                                          | T::Array<*::String*>                                                                               | :heavy_minus_sign:                                                                                 | Comma-delimited fields to return                                                                   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateTicketingCustomerResponse)](../../models/operations/updateticketingcustomerresponse.md)**



## update_ticketing_note

Update a note

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.update_ticketing_note(connection_id="<id>", id="<id>", ticketing_note=::UnifiedRubySDK::Shared::TicketingNote.new(), fields_=[
  "<value>",
])

if ! res.ticketing_note.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                  | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `connection_id`                                                                            | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the connection                                                                       |
| `id`                                                                                       | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the Note                                                                             |
| `ticketing_note`                                                                           | [T.nilable(::UnifiedRubySDK::Shared::TicketingNote)](../../models/shared/ticketingnote.md) | :heavy_minus_sign:                                                                         | N/A                                                                                        |
| `fields_`                                                                                  | T::Array<*::String*>                                                                       | :heavy_minus_sign:                                                                         | Comma-delimited fields to return                                                           |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateTicketingNoteResponse)](../../models/operations/updateticketingnoteresponse.md)**



## update_ticketing_ticket

Update a ticket

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ticketing.update_ticketing_ticket(connection_id="<id>", id="<id>", ticketing_ticket=::UnifiedRubySDK::Shared::TicketingTicket.new(), fields_=[
  "<value>",
])

if ! res.ticketing_ticket.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the Ticket                                                                               |
| `ticketing_ticket`                                                                             | [T.nilable(::UnifiedRubySDK::Shared::TicketingTicket)](../../models/shared/ticketingticket.md) | :heavy_minus_sign:                                                                             | N/A                                                                                            |
| `fields_`                                                                                      | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | Comma-delimited fields to return                                                               |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateTicketingTicketResponse)](../../models/operations/updateticketingticketresponse.md)**

