# Customer
(*customer*)

## Overview

### Available Operations

* [create_ticketing_customer](#create_ticketing_customer) - Create a customer
* [get_ticketing_customer](#get_ticketing_customer) - Retrieve a customer
* [list_ticketing_customers](#list_ticketing_customers) - List all customers
* [patch_ticketing_customer](#patch_ticketing_customer) - Update a customer
* [remove_ticketing_customer](#remove_ticketing_customer) - Remove a customer
* [update_ticketing_customer](#update_ticketing_customer) - Update a customer

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

res = s.customer.create_ticketing_customer(ticketing_customer: Models::Shared::TicketingCustomer.new(
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

res = s.customer.get_ticketing_customer(connection_id: '<id>', id: '<id>')

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

res = s.customer.list_ticketing_customers(request: req)

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

res = s.customer.patch_ticketing_customer(request: req)

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

res = s.customer.remove_ticketing_customer(connection_id: '<id>', id: '<id>')

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

res = s.customer.update_ticketing_customer(request: req)

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