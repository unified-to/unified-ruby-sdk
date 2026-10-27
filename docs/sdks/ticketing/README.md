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

Creates a TicketingCategory. Provide the unified TicketingCategory fields in the request body; they are mapped to the provider's API. Returns the created TicketingCategory.

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
  id: 'fe95173b-44e5-497e-9dfb-9742b3b75f67',
  is_active: true,
  metadata: [],
  name: 'amicitia',
  updated_at: DateTime.iso8601('2026-01-19T07:07:01.989Z'),
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

Creates a TicketingCustomer. Provide the unified TicketingCustomer fields in the request body; they are mapped to the provider's API. Returns the created TicketingCustomer.

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
      email: 'christian.windler@gmail.com',
      type: Models::Shared::TicketingEmailType::HOME,
    ),
  ],
  id: '2d3775b1-3e01-4939-a955-a39611348328',
  metadata: [],
  name: 'Christian Windler',
  tags: [
    'quidem',
    'una',
  ],
  telephones: [
    Models::Shared::TicketingTelephone.new(
      telephone: '(299) 843-2042',
      type: Models::Shared::TicketingTelephoneType::OTHER,
    ),
    Models::Shared::TicketingTelephone.new(
      telephone: '(248) 482-6083',
      type: Models::Shared::TicketingTelephoneType::MOBILE,
    ),
    Models::Shared::TicketingTelephone.new(
      telephone: '(743) 328-3214',
      type: Models::Shared::TicketingTelephoneType::MOBILE,
    ),
  ],
  updated_at: DateTime.iso8601('2026-06-09T14:23:24.247Z'),
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

Creates a TicketingNote. Provide the unified TicketingNote fields in the request body; they are mapped to the provider's API. Returns the created TicketingNote.

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
  id: 'fe1dc7e7-f822-49ed-9c2a-a7a262ddefab',
  metadata: [],
  updated_at: DateTime.iso8601('2024-10-03T12:27:35.648Z'),
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

Creates a TicketingTicket. Provide the unified TicketingTicket fields in the request body; they are mapped to the provider's API. Returns the created TicketingTicket.

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
  attachment_ids: [],
  created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
  description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
  due_at: DateTime.iso8601('2021-07-07T17:39:49.813Z'),
  id: '20b1fa08-4a69-4056-bf4c-32dde4d48ee3',
  metadata: [],
  priority: 'MEDIUM',
  source: 'email',
  status: Models::Shared::TicketingTicketStatus::ACTIVE,
  subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
  tags: [
    'vilicus',
  ],
  updated_at: DateTime.iso8601('2021-07-03T19:03:53.612Z'),
  url: 'https://similar-velocity.net/',
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

Retrieves a single TicketingCategory by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Retrieves a single TicketingCustomer by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Retrieves a single TicketingNote by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Retrieves a single TicketingTicket by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Returns a list of TicketingCategories. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Returns a list of TicketingCustomers. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Returns a list of TicketingNotes. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Returns a list of TicketingTickets. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Updates the TicketingCategory identified by `id`. Provide the unified TicketingCategory fields to change in the request body.

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
    id: '5a01b168-f289-4a31-a7f3-ae380cae974a',
    is_active: true,
    metadata: [],
    name: 'amicitia',
    updated_at: DateTime.iso8601('2026-01-19T07:07:02.001Z'),
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

Updates the TicketingCustomer identified by `id`. Provide the unified TicketingCustomer fields to change in the request body.

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
        email: 'christian.windler@gmail.com',
        type: Models::Shared::TicketingEmailType::HOME,
      ),
    ],
    id: '8ea97b6e-fbc5-4cbc-a6f4-118d07356fc5',
    metadata: [],
    name: 'Christian Windler',
    tags: [
      'quidem',
      'una',
    ],
    telephones: [
      Models::Shared::TicketingTelephone.new(
        telephone: '(299) 843-2042',
        type: Models::Shared::TicketingTelephoneType::OTHER,
      ),
      Models::Shared::TicketingTelephone.new(
        telephone: '(248) 482-6083',
        type: Models::Shared::TicketingTelephoneType::MOBILE,
      ),
      Models::Shared::TicketingTelephone.new(
        telephone: '(743) 328-3214',
        type: Models::Shared::TicketingTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2026-06-09T14:23:24.275Z'),
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

Updates the TicketingNote identified by `id`. Provide the unified TicketingNote fields to change in the request body.

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
    id: 'b5c3ceae-6455-47a8-87c7-89a5ec33abf1',
    metadata: [],
    updated_at: DateTime.iso8601('2024-10-03T12:27:35.659Z'),
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

Updates the TicketingTicket identified by `id`. Provide the unified TicketingTicket fields to change in the request body.

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
    attachment_ids: [],
    created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
    description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
    due_at: DateTime.iso8601('2021-07-07T17:39:49.813Z'),
    id: 'b0693e6c-90b1-44fa-a93b-7870d099c989',
    metadata: [],
    priority: 'MEDIUM',
    source: 'email',
    status: Models::Shared::TicketingTicketStatus::ACTIVE,
    subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
    tags: [
      'vilicus',
    ],
    updated_at: DateTime.iso8601('2021-07-03T19:03:53.612Z'),
    url: 'https://similar-velocity.net/',
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

Deletes the TicketingCategory identified by `id`.

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

Deletes the TicketingCustomer identified by `id`.

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

Deletes the TicketingNote identified by `id`.

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

Deletes the TicketingTicket identified by `id`.

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

Updates the TicketingCategory identified by `id`. Provide the unified TicketingCategory fields to change in the request body.

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
    id: '5a01b168-f289-4a31-a7f3-ae380cae974a',
    is_active: true,
    metadata: [],
    name: 'amicitia',
    updated_at: DateTime.iso8601('2026-01-19T07:07:02.001Z'),
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

Updates the TicketingCustomer identified by `id`. Provide the unified TicketingCustomer fields to change in the request body.

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
        email: 'christian.windler@gmail.com',
        type: Models::Shared::TicketingEmailType::HOME,
      ),
    ],
    id: '8ea97b6e-fbc5-4cbc-a6f4-118d07356fc5',
    metadata: [],
    name: 'Christian Windler',
    tags: [
      'quidem',
      'una',
    ],
    telephones: [
      Models::Shared::TicketingTelephone.new(
        telephone: '(299) 843-2042',
        type: Models::Shared::TicketingTelephoneType::OTHER,
      ),
      Models::Shared::TicketingTelephone.new(
        telephone: '(248) 482-6083',
        type: Models::Shared::TicketingTelephoneType::MOBILE,
      ),
      Models::Shared::TicketingTelephone.new(
        telephone: '(743) 328-3214',
        type: Models::Shared::TicketingTelephoneType::MOBILE,
      ),
    ],
    updated_at: DateTime.iso8601('2026-06-09T14:23:24.275Z'),
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

Updates the TicketingNote identified by `id`. Provide the unified TicketingNote fields to change in the request body.

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
    id: 'b5c3ceae-6455-47a8-87c7-89a5ec33abf1',
    metadata: [],
    updated_at: DateTime.iso8601('2024-10-03T12:27:35.659Z'),
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

Updates the TicketingTicket identified by `id`. Provide the unified TicketingTicket fields to change in the request body.

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
    attachment_ids: [],
    created_at: DateTime.iso8601('2021-06-25T19:19:31.279Z'),
    description: 'Cura dignissimos aut clibanus vulgaris patrocinor. Laborum acies curiositas antepono coniuratio. Correptius curiositas sono censura coma. Bestia suus tot cotidie terror subito coniecto beneficium.',
    due_at: DateTime.iso8601('2021-07-07T17:39:49.813Z'),
    id: 'b0693e6c-90b1-44fa-a93b-7870d099c989',
    metadata: [],
    priority: 'MEDIUM',
    source: 'email',
    status: Models::Shared::TicketingTicketStatus::ACTIVE,
    subject: 'Thymbra ratione minus arbitro tricesimus cetera validus.',
    tags: [
      'vilicus',
    ],
    updated_at: DateTime.iso8601('2021-07-03T19:03:53.612Z'),
    url: 'https://similar-velocity.net/',
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