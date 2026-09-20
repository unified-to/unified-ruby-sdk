# Ticketing
(*ticketing*)

## Overview

### Available Operations

* [create_ticketing_category](#create_ticketing_category) - Create a category
* [create_ticketing_customer](#create_ticketing_customer) - Create a customer
* [create_ticketing_note](#create_ticketing_note) - Create a note
* [create_ticketing_ticket](#create_ticketing_ticket) - Create a ticket
* [get_ticketing_category](#get_ticketing_category) - Retrieve a category
* [get_ticketing_customer](#get_ticketing_customer) - Retrieve a customer
* [get_ticketing_note](#get_ticketing_note) - Retrieve a note
* [get_ticketing_ticket](#get_ticketing_ticket) - Retrieve a ticket
* [list_ticketing_categories](#list_ticketing_categories) - List all categories
* [list_ticketing_customers](#list_ticketing_customers) - List all customers
* [list_ticketing_notes](#list_ticketing_notes) - List all notes
* [list_ticketing_tickets](#list_ticketing_tickets) - List all tickets
* [patch_ticketing_category](#patch_ticketing_category) - Update a category
* [patch_ticketing_customer](#patch_ticketing_customer) - Update a customer
* [patch_ticketing_note](#patch_ticketing_note) - Update a note
* [patch_ticketing_ticket](#patch_ticketing_ticket) - Update a ticket
* [remove_ticketing_category](#remove_ticketing_category) - Remove a category
* [remove_ticketing_customer](#remove_ticketing_customer) - Remove a customer
* [remove_ticketing_note](#remove_ticketing_note) - Remove a note
* [remove_ticketing_ticket](#remove_ticketing_ticket) - Remove a ticket
* [update_ticketing_category](#update_ticketing_category) - Update a category
* [update_ticketing_customer](#update_ticketing_customer) - Update a customer
* [update_ticketing_note](#update_ticketing_note) - Update a note
* [update_ticketing_ticket](#update_ticketing_ticket) - Update a ticket

## create_ticketing_category

Create a category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTicketingCategory" method="post" path="/ticketing/{connection_id}/category" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ticketing.create_ticketing_category(ticketing_category: Models::Shared::TicketingCategory.new(
  created_at: DateTime.iso8601('2019-10-19T22:02:51.067Z'),
  description: 'Tempus umbra cibus carpo depulso torqueo. Curtus aperiam nam optio tendo. Bardus tumultus delectus arbitro amplus tollo coerceo clam comprehendo vulnero.',
  id: 'ff1338e9-857b-4ca8-bd16-4fb0cc3f4945',
  is_active: true,
  name: 'amicitia',
  updated_at: DateTime.iso8601('2025-12-17T09:39:40.825Z'),
), connection_id: '<id>')

unless res.ticketing_category.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ticketing_category`                                                                                                                             | [Models::Shared::TicketingCategory](../../models/shared/ticketingcategory.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateTicketingCategoryQueryParamFields](../../models/operations/createticketingcategoryqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateTicketingCategoryResponse)](../../models/operations/createticketingcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_ticketing_customer

Create a customer

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTicketingCustomer" method="post" path="/ticketing/{connection_id}/customer" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ticketing.create_ticketing_customer(ticketing_customer: Models::Shared::TicketingCustomer.new(
  created_at: DateTime.iso8601('2021-03-15T12:33:14.875Z'),
  emails: [
    Models::Shared::TicketingEmail.new(
      email: 'Christian_Windler@gmail.com',
      type: Models::Shared::TicketingEmailType::HOME,
    ),
  ],
  id: '3a2574f7-7294-4b70-accb-013ea73f1d3a',
  name: 'Christian Windler',
  tags: [
    'casso',
    'peccatus',
  ],
  telephones: [
    Models::Shared::TicketingTelephone.new(
      telephone: '(532) 242-0482',
      type: Models::Shared::TicketingTelephoneType::OTHER,
    ),
    Models::Shared::TicketingTelephone.new(
      telephone: '(826) 283-7431',
      type: Models::Shared::TicketingTelephoneType::MOBILE,
    ),
    Models::Shared::TicketingTelephone.new(
      telephone: '(483) 314-6826',
      type: Models::Shared::TicketingTelephoneType::MOBILE,
    ),
  ],
  updated_at: DateTime.iso8601('2026-05-06T04:06:55.504Z'),
), connection_id: '<id>')

unless res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ticketing_customer`                                                                                                                             | [Models::Shared::TicketingCustomer](../../models/shared/ticketingcustomer.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateTicketingCustomerQueryParamFields](../../models/operations/createticketingcustomerqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateTicketingCustomerResponse)](../../models/operations/createticketingcustomerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.ticketing.create_ticketing_note(ticketing_note: Models::Shared::TicketingNote.new(
  created_at: DateTime.iso8601('2019-07-23T15:05:03.241Z'),
  description: 'Civitas absum adipisci vitiosus recusandae tristis dedico libero comminor cena. Spes virgo absorbeo defluo nostrum.',
  id: '86bd1250-b6db-494d-a783-f0f1bab4c649',
  updated_at: DateTime.iso8601('2024-09-07T01:47:29.020Z'),
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

res = s.ticketing.create_ticketing_ticket(ticketing_ticket: Models::Shared::TicketingTicket.new(
  attachment_ids: [
    '3469d79d-01df-4e5c-9c7c-c26423764577',
    '907e62e1-7781-4429-b22e-b01de278bd27',
  ],
  category_id: 'vilicus',
  created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
  description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
  due_at: DateTime.iso8601('2025-07-21T17:02:47.773Z'),
  id: '0e3e9fc5-737a-487d-b43f-7d533cd5cdc4',
  priority: 'LOW',
  source: 'atavus',
  source_ref: '90ea2838-61bc-42f4-aaa5-9037506a50e1',
  status: Models::Shared::TicketingTicketStatus::ACTIVE,
  subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
  tags: [
    'tamen',
    'vitae',
    'torrens',
  ],
  updated_at: DateTime.iso8601('2023-05-29T00:56:32.099Z'),
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

## get_ticketing_category

Retrieve a category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTicketingCategory" method="get" path="/ticketing/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ticketing.get_ticketing_category(connection_id: '<id>', id: '<id>')

unless res.ticketing_category.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Category                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetTicketingCategoryQueryParamFields](../../models/operations/getticketingcategoryqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetTicketingCategoryResponse)](../../models/operations/getticketingcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ticketing_customer

Retrieve a customer

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTicketingCustomer" method="get" path="/ticketing/{connection_id}/customer/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ticketing.get_ticketing_customer(connection_id: '<id>', id: '<id>')

unless res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Customer                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetTicketingCustomerQueryParamFields](../../models/operations/getticketingcustomerqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetTicketingCustomerResponse)](../../models/operations/getticketingcustomerresponse.md)**

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

res = s.ticketing.get_ticketing_note(connection_id: '<id>', id: '<id>')

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

res = s.ticketing.get_ticketing_ticket(connection_id: '<id>', id: '<id>')

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

## list_ticketing_categories

List all categories

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTicketingCategories" method="get" path="/ticketing/{connection_id}/category" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListTicketingCategoriesRequest.new(
  connection_id: '<id>',
)

res = s.ticketing.list_ticketing_categories(request: req)

unless res.ticketing_categories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListTicketingCategoriesRequest](../../models/operations/listticketingcategoriesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListTicketingCategoriesResponse)](../../models/operations/listticketingcategoriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ticketing_customers

List all customers

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTicketingCustomers" method="get" path="/ticketing/{connection_id}/customer" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListTicketingCustomersRequest.new(
  connection_id: '<id>',
)

res = s.ticketing.list_ticketing_customers(request: req)

unless res.ticketing_customers.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListTicketingCustomersRequest](../../models/operations/listticketingcustomersrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListTicketingCustomersResponse)](../../models/operations/listticketingcustomersresponse.md)**

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

res = s.ticketing.list_ticketing_notes(request: req)

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

res = s.ticketing.list_ticketing_tickets(request: req)

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

## patch_ticketing_category

Update a category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchTicketingCategory" method="patch" path="/ticketing/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchTicketingCategoryRequest.new(
  ticketing_category: Models::Shared::TicketingCategory.new(
    created_at: DateTime.iso8601('2019-10-19T22:02:51.067Z'),
    description: 'Tempus umbra cibus carpo depulso torqueo. Curtus aperiam nam optio tendo. Bardus tumultus delectus arbitro amplus tollo coerceo clam comprehendo vulnero.',
    id: '2f8a093c-52a4-41b6-9bf3-93266a2082ea',
    is_active: true,
    name: 'amicitia',
    updated_at: DateTime.iso8601('2025-12-17T09:39:40.832Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ticketing.patch_ticketing_category(request: req)

unless res.ticketing_category.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchTicketingCategoryRequest](../../models/operations/patchticketingcategoryrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchTicketingCategoryResponse)](../../models/operations/patchticketingcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ticketing_customer

Update a customer

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchTicketingCustomer" method="patch" path="/ticketing/{connection_id}/customer/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchTicketingCustomerRequest.new(
  ticketing_customer: Models::Shared::TicketingCustomer.new(
    created_at: DateTime.iso8601('2021-03-15T12:33:14.875Z'),
    emails: [
      Models::Shared::TicketingEmail.new(
        email: 'Christian_Windler@gmail.com',
        type: Models::Shared::TicketingEmailType::HOME,
      ),
    ],
    id: 'fd7b3484-de4a-41f2-bb35-bc6f15542c1b',
    name: 'Christian Windler',
    tags: [
      'casso',
      'peccatus',
    ],
    telephones: [
      Models::Shared::TicketingTelephone.new(
        telephone: '(532) 242-0482',
        type: Models::Shared::TicketingTelephoneType::OTHER,
      ),
      Models::Shared::TicketingTelephone.new(
        telephone: '(826) 283-7431',
        type: Models::Shared::TicketingTelephoneType::MOBILE,
      ),
      Models::Shared::TicketingTelephone.new(
        telephone: '(483) 314-6826',
        type: Models::Shared::TicketingTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2026-05-06T04:06:55.518Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ticketing.patch_ticketing_customer(request: req)

unless res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchTicketingCustomerRequest](../../models/operations/patchticketingcustomerrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchTicketingCustomerResponse)](../../models/operations/patchticketingcustomerresponse.md)**

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
    id: '8314028e-bec4-4c99-8e09-285e9aed9bb2',
    updated_at: DateTime.iso8601('2024-09-07T01:47:29.025Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ticketing.patch_ticketing_note(request: req)

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
      '3f0d99b0-c1cc-45d8-9bf2-fa2440517120',
      '58df0216-681c-4d24-87ac-22fe2e4e6417',
    ],
    category_id: 'vilicus',
    created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
    description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
    due_at: DateTime.iso8601('2025-07-21T17:02:47.782Z'),
    id: '31ebc641-3b21-4e16-972d-d67fef0fe24a',
    priority: 'LOW',
    source: 'atavus',
    source_ref: '582c27dd-3052-4495-be3a-3dcb4db5796e',
    status: Models::Shared::TicketingTicketStatus::ACTIVE,
    subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
    tags: [
      'tamen',
      'vitae',
      'torrens',
    ],
    updated_at: DateTime.iso8601('2023-05-29T00:56:32.103Z'),
    url: 'https://yellowish-testimonial.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ticketing.patch_ticketing_ticket(request: req)

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

## remove_ticketing_category

Remove a category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeTicketingCategory" method="delete" path="/ticketing/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ticketing.remove_ticketing_category(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Category   |

### Response

**[T.nilable(Models::Operations::RemoveTicketingCategoryResponse)](../../models/operations/removeticketingcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ticketing_customer

Remove a customer

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeTicketingCustomer" method="delete" path="/ticketing/{connection_id}/customer/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ticketing.remove_ticketing_customer(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveTicketingCustomerResponse)](../../models/operations/removeticketingcustomerresponse.md)**

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

res = s.ticketing.remove_ticketing_note(connection_id: '<id>', id: '<id>')

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

res = s.ticketing.remove_ticketing_ticket(connection_id: '<id>', id: '<id>')

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

## update_ticketing_category

Update a category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTicketingCategory" method="put" path="/ticketing/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateTicketingCategoryRequest.new(
  ticketing_category: Models::Shared::TicketingCategory.new(
    created_at: DateTime.iso8601('2019-10-19T22:02:51.067Z'),
    description: 'Tempus umbra cibus carpo depulso torqueo. Curtus aperiam nam optio tendo. Bardus tumultus delectus arbitro amplus tollo coerceo clam comprehendo vulnero.',
    id: '2f8a093c-52a4-41b6-9bf3-93266a2082ea',
    is_active: true,
    name: 'amicitia',
    updated_at: DateTime.iso8601('2025-12-17T09:39:40.832Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ticketing.update_ticketing_category(request: req)

unless res.ticketing_category.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateTicketingCategoryRequest](../../models/operations/updateticketingcategoryrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateTicketingCategoryResponse)](../../models/operations/updateticketingcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ticketing_customer

Update a customer

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTicketingCustomer" method="put" path="/ticketing/{connection_id}/customer/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateTicketingCustomerRequest.new(
  ticketing_customer: Models::Shared::TicketingCustomer.new(
    created_at: DateTime.iso8601('2021-03-15T12:33:14.875Z'),
    emails: [
      Models::Shared::TicketingEmail.new(
        email: 'Christian_Windler@gmail.com',
        type: Models::Shared::TicketingEmailType::HOME,
      ),
    ],
    id: 'fd7b3484-de4a-41f2-bb35-bc6f15542c1b',
    name: 'Christian Windler',
    tags: [
      'casso',
      'peccatus',
    ],
    telephones: [
      Models::Shared::TicketingTelephone.new(
        telephone: '(532) 242-0482',
        type: Models::Shared::TicketingTelephoneType::OTHER,
      ),
      Models::Shared::TicketingTelephone.new(
        telephone: '(826) 283-7431',
        type: Models::Shared::TicketingTelephoneType::MOBILE,
      ),
      Models::Shared::TicketingTelephone.new(
        telephone: '(483) 314-6826',
        type: Models::Shared::TicketingTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2026-05-06T04:06:55.518Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ticketing.update_ticketing_customer(request: req)

unless res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateTicketingCustomerRequest](../../models/operations/updateticketingcustomerrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateTicketingCustomerResponse)](../../models/operations/updateticketingcustomerresponse.md)**

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
    id: '8314028e-bec4-4c99-8e09-285e9aed9bb2',
    updated_at: DateTime.iso8601('2024-09-07T01:47:29.025Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ticketing.update_ticketing_note(request: req)

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
      '3f0d99b0-c1cc-45d8-9bf2-fa2440517120',
      '58df0216-681c-4d24-87ac-22fe2e4e6417',
    ],
    category_id: 'vilicus',
    created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
    description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
    due_at: DateTime.iso8601('2025-07-21T17:02:47.782Z'),
    id: '31ebc641-3b21-4e16-972d-d67fef0fe24a',
    priority: 'LOW',
    source: 'atavus',
    source_ref: '582c27dd-3052-4495-be3a-3dcb4db5796e',
    status: Models::Shared::TicketingTicketStatus::ACTIVE,
    subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
    tags: [
      'tamen',
      'vitae',
      'torrens',
    ],
    updated_at: DateTime.iso8601('2023-05-29T00:56:32.103Z'),
    url: 'https://yellowish-testimonial.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ticketing.update_ticketing_ticket(request: req)

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