# Customer


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

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.customer.create_ticketing_customer(connection_id="string", ticketing_customer=::UnifiedRubySDK::Shared::TicketingCustomer.new(
    emails: [
      ::UnifiedRubySDK::Shared::TicketingEmail.new(
        email: "Guadalupe78@yahoo.com",
      ),
    ],
    raw: {
      "Borders": "string",
    },
    tags: [
      "string",
    ],
    telephones: [
      ::UnifiedRubySDK::Shared::TicketingTelephone.new(
        telephone: "string",
      ),
    ],
  ))

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `ticketing_customer`                                                                    | [::UnifiedRubySDK::Shared::TicketingCustomer](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateTicketingCustomerResponse)](../../models/operations/createticketingcustomerresponse.md)**


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

    
res = s.customer.get_ticketing_customer(connection_id="string", id="string", fields_=[
    "string",
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
  connection_id: "string",
  fields_: [
    "string",
  ],
)
    
res = s.customer.list_ticketing_customers(req)

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

    
res = s.customer.patch_ticketing_customer(connection_id="string", id="string", ticketing_customer=::UnifiedRubySDK::Shared::TicketingCustomer.new(
    emails: [
      ::UnifiedRubySDK::Shared::TicketingEmail.new(
        email: "Raymundo93@hotmail.com",
      ),
    ],
    raw: {
      "Brownsville": "string",
    },
    tags: [
      "string",
    ],
    telephones: [
      ::UnifiedRubySDK::Shared::TicketingTelephone.new(
        telephone: "string",
      ),
    ],
  ))

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Customer                                                                      |
| `ticketing_customer`                                                                    | [::UnifiedRubySDK::Shared::TicketingCustomer](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchTicketingCustomerResponse)](../../models/operations/patchticketingcustomerresponse.md)**


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

    
res = s.customer.remove_ticketing_customer(connection_id="string", id="string")

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

    
res = s.customer.update_ticketing_customer(connection_id="string", id="string", ticketing_customer=::UnifiedRubySDK::Shared::TicketingCustomer.new(
    emails: [
      ::UnifiedRubySDK::Shared::TicketingEmail.new(
        email: "Mohamed.Friesen@hotmail.com",
      ),
    ],
    raw: {
      "Barium": "string",
    },
    tags: [
      "string",
    ],
    telephones: [
      ::UnifiedRubySDK::Shared::TicketingTelephone.new(
        telephone: "string",
      ),
    ],
  ))

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Customer                                                                      |
| `ticketing_customer`                                                                    | [::UnifiedRubySDK::Shared::TicketingCustomer](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateTicketingCustomerResponse)](../../models/operations/updateticketingcustomerresponse.md)**

