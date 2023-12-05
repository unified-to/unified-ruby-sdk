# Customer


### Available Operations

* [create_accounting_customer](#create_accounting_customer) - Create a customer
* [create_ticketing_customer](#create_ticketing_customer) - Create a customer
* [get_accounting_customer](#get_accounting_customer) - Retrieve a customer
* [get_ticketing_customer](#get_ticketing_customer) - Retrieve a customer
* [list_accounting_customers](#list_accounting_customers) - List all customers
* [list_ticketing_customers](#list_ticketing_customers) - List all customers
* [patch_accounting_customer](#patch_accounting_customer) - Update a customer
* [patch_ticketing_customer](#patch_ticketing_customer) - Update a customer
* [remove_accounting_customer](#remove_accounting_customer) - Remove a customer
* [remove_ticketing_customer](#remove_ticketing_customer) - Remove a customer
* [update_accounting_customer](#update_accounting_customer) - Update a customer
* [update_ticketing_customer](#update_ticketing_customer) - Update a customer

## create_accounting_customer

Create a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAccountingCustomerRequest.new(
  connection_id="string",
  accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Kevon_Schultz42@gmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.customer.create_accounting_customer(connection_id="string", accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Craig39@gmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `accounting_customer`                                                   | [Shared::AccountingCustomer](../../models/shared/accountingcustomer.md) | :heavy_minus_sign:                                                      | N/A                                                                     |


### Response

**[T.nilable(Operations::CreateAccountingCustomerResponse)](../../models/operations/createaccountingcustomerresponse.md)**


## create_ticketing_customer

Create a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateTicketingCustomerRequest.new(
  connection_id="string",
  ticketing_customer=Shared::TicketingCustomer.new(
    emails=[
      Shared::TicketingEmail.new(
        email="Guadalupe78@yahoo.com",
      ),
    ],
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::TicketingTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.customer.create_ticketing_customer(connection_id="string", ticketing_customer=Shared::TicketingCustomer.new(
    emails=[
      Shared::TicketingEmail.new(
        email="Jodie.Thompson19@gmail.com",
      ),
    ],
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::TicketingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `ticketing_customer`                                                  | [Shared::TicketingCustomer](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateTicketingCustomerResponse)](../../models/operations/createticketingcustomerresponse.md)**


## get_accounting_customer

Retrieve a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetAccountingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.customer.get_accounting_customer(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Customer               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingCustomerResponse)](../../models/operations/getaccountingcustomerresponse.md)**


## get_ticketing_customer

Retrieve a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetTicketingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.customer.get_ticketing_customer(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Customer               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetTicketingCustomerResponse)](../../models/operations/getticketingcustomerresponse.md)**


## list_accounting_customers

List all customers

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListAccountingCustomersRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.customer.list_accounting_customers(req)

if ! res.accounting_customers.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Operations::ListAccountingCustomersRequest](../../models/operations/listaccountingcustomersrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(Operations::ListAccountingCustomersResponse)](../../models/operations/listaccountingcustomersresponse.md)**


## list_ticketing_customers

List all customers

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListTicketingCustomersRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.customer.list_ticketing_customers(req)

if ! res.ticketing_customers.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListTicketingCustomersRequest](../../models/operations/listticketingcustomersrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListTicketingCustomersResponse)](../../models/operations/listticketingcustomersresponse.md)**


## patch_accounting_customer

Update a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchAccountingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Trever_Orn@hotmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.customer.patch_accounting_customer(connection_id="string", id="string", accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Adonis_Wilkinson72@yahoo.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the Customer                                                      |
| `accounting_customer`                                                   | [Shared::AccountingCustomer](../../models/shared/accountingcustomer.md) | :heavy_minus_sign:                                                      | N/A                                                                     |


### Response

**[T.nilable(Operations::PatchAccountingCustomerResponse)](../../models/operations/patchaccountingcustomerresponse.md)**


## patch_ticketing_customer

Update a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchTicketingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
  ticketing_customer=Shared::TicketingCustomer.new(
    emails=[
      Shared::TicketingEmail.new(
        email="Raymundo93@hotmail.com",
      ),
    ],
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::TicketingTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.customer.patch_ticketing_customer(connection_id="string", id="string", ticketing_customer=Shared::TicketingCustomer.new(
    emails=[
      Shared::TicketingEmail.new(
        email="Bianka_Franey73@gmail.com",
      ),
    ],
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::TicketingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Customer                                                    |
| `ticketing_customer`                                                  | [Shared::TicketingCustomer](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchTicketingCustomerResponse)](../../models/operations/patchticketingcustomerresponse.md)**


## remove_accounting_customer

Remove a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveAccountingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.customer.remove_accounting_customer(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Customer   |


### Response

**[T.nilable(Operations::RemoveAccountingCustomerResponse)](../../models/operations/removeaccountingcustomerresponse.md)**


## remove_ticketing_customer

Remove a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveTicketingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.customer.remove_ticketing_customer(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Customer   |


### Response

**[T.nilable(Operations::RemoveTicketingCustomerResponse)](../../models/operations/removeticketingcustomerresponse.md)**


## update_accounting_customer

Update a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateAccountingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Myrtice_Jacobi77@hotmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.customer.update_accounting_customer(connection_id="string", id="string", accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Eda40@hotmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the Customer                                                      |
| `accounting_customer`                                                   | [Shared::AccountingCustomer](../../models/shared/accountingcustomer.md) | :heavy_minus_sign:                                                      | N/A                                                                     |


### Response

**[T.nilable(Operations::UpdateAccountingCustomerResponse)](../../models/operations/updateaccountingcustomerresponse.md)**


## update_ticketing_customer

Update a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateTicketingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
  ticketing_customer=Shared::TicketingCustomer.new(
    emails=[
      Shared::TicketingEmail.new(
        email="Mohamed.Friesen@hotmail.com",
      ),
    ],
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::TicketingTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.customer.update_ticketing_customer(connection_id="string", id="string", ticketing_customer=Shared::TicketingCustomer.new(
    emails=[
      Shared::TicketingEmail.new(
        email="Jaquelin.Goldner@hotmail.com",
      ),
    ],
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::TicketingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.ticketing_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Customer                                                    |
| `ticketing_customer`                                                  | [Shared::TicketingCustomer](../../models/shared/ticketingcustomer.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateTicketingCustomerResponse)](../../models/operations/updateticketingcustomerresponse.md)**

