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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateAccountingCustomerRequest.new(
  path_params=Operations::CreateAccountingCustomerRequest.new(
    connection_id="string",
    accounting_customer=Shared::AccountingCustomer.new(
      billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(
        address1="string",
        address2="string",
        city="New Raulfield",
        country="Libyan Arab Jamahiriya",
        country_code="IN",
        postal_code="22232",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2021-07-22T19:16:48.798Z'),
      currency="Dalasi",
      emails=.new[
        Shared::AccountingEmail.new(
          email="Loren78@gmail.com",
          type=Shared::Type::WORK,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyAccountingCustomerRaw.new(),
      shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(
        address1="string",
        address2="string",
        city="Fort Gregton",
        country="Monaco",
        country_code="CM",
        postal_code="90629",
        region="string",
        region_code="string",
      ),
      tax_exemption=Shared::TaxExemption::FEDERAL_GOV,
      telephones=.new[
        Shared::AccountingTelephone.new(
          telephone="string",
          type=Shared::AccountingTelephoneType::FAX,
        ),
      ],
      updated_at=DateTime.iso8601('2023-06-07T17:38:20.030Z'),
    ),
  ),
  accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(
      address1="string",
      address2="string",
      city="West Rylee",
      country="Papua New Guinea",
      country_code="SI",
      postal_code="86762",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2022-03-05T17:07:05.218Z'),
    currency="Kwanza",
    emails=.new[
      Shared::AccountingEmail.new(
        email="Max.Kuhn@yahoo.com",
        type=Shared::Type::HOME,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(
      address1="string",
      address2="string",
      city="Elmiraburgh",
      country="French Guiana",
      country_code="MM",
      postal_code="83052",
      region="string",
      region_code="string",
    ),
    tax_exemption=Shared::TaxExemption::EDUCATIONAL_ORG,
    telephones=.new[
      Shared::AccountingTelephone.new(
        telephone="string",
        type=Shared::AccountingTelephoneType::WORK,
      ),
    ],
    updated_at=DateTime.iso8601('2021-07-15T20:46:24.576Z'),
  ),
)
    
res = s.customer.create_accounting_customer(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateTicketingCustomerRequest.new(
  path_params=Operations::CreateTicketingCustomerRequest.new(
    connection_id="string",
    ticketing_customer=Shared::TicketingCustomer.new(
      created_at=DateTime.iso8601('2022-06-19T07:03:19.095Z'),
      emails=.new[
        Shared::TicketingEmail.new(
          email="Jenifer.Friesen50@yahoo.com",
          type=Shared::TicketingEmailType::OTHER,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyTicketingCustomerRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::TicketingTelephone.new(
          telephone="string",
          type=Shared::TicketingTelephoneType::MOBILE,
        ),
      ],
      updated_at=DateTime.iso8601('2021-03-09T06:04:13.585Z'),
    ),
  ),
  ticketing_customer=Shared::TicketingCustomer.new(
    created_at=DateTime.iso8601('2021-08-01T06:29:30.132Z'),
    emails=.new[
      Shared::TicketingEmail.new(
        email="Christ_Mayer73@gmail.com",
        type=Shared::TicketingEmailType::HOME,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::TicketingTelephone.new(
        telephone="string",
        type=Shared::TicketingTelephoneType::MOBILE,
      ),
    ],
    updated_at=DateTime.iso8601('2021-03-11T03:16:53.846Z'),
  ),
)
    
res = s.customer.create_ticketing_customer(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetAccountingCustomerRequest.new(
  path_params=Operations::GetAccountingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAccountingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.customer.get_accounting_customer(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetTicketingCustomerRequest.new(
  path_params=Operations::GetTicketingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetTicketingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.customer.get_ticketing_customer(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListAccountingCustomersRequest.new(
  path_params=Operations::ListAccountingCustomersRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=7844.09,
    offset=4439.53,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-08-23T13:14:33.970Z'),
  ),
  query_params=Operations::ListAccountingCustomersRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=3920.2,
    offset=4166.46,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-02-18T10:24:41.670Z'),
  ),
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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListTicketingCustomersRequest.new(
  path_params=Operations::ListTicketingCustomersRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=3917.11,
    offset=274.81,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-06-05T16:20:32.808Z'),
  ),
  query_params=Operations::ListTicketingCustomersRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=7893.11,
    offset=989.94,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-09-27T09:05:19.132Z'),
  ),
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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchAccountingCustomerRequest.new(
  path_params=Operations::PatchAccountingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    accounting_customer=Shared::AccountingCustomer.new(
      billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(
        address1="string",
        address2="string",
        city="Visalia",
        country="Norway",
        country_code="LY",
        postal_code="50996-7347",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2023-08-27T01:00:12.169Z'),
      currency="Kina",
      emails=.new[
        Shared::AccountingEmail.new(
          email="Imani57@yahoo.com",
          type=Shared::Type::OTHER,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyAccountingCustomerRaw.new(),
      shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(
        address1="string",
        address2="string",
        city="Fort Yesenia",
        country="Singapore",
        country_code="BS",
        postal_code="35480",
        region="string",
        region_code="string",
      ),
      tax_exemption=Shared::TaxExemption::RELIGIOUS_ORG,
      telephones=.new[
        Shared::AccountingTelephone.new(
          telephone="string",
          type=Shared::AccountingTelephoneType::WORK,
        ),
      ],
      updated_at=DateTime.iso8601('2021-08-04T22:46:11.309Z'),
    ),
  ),
  accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(
      address1="string",
      address2="string",
      city="Fort Abraham",
      country="Bahrain",
      country_code="CK",
      postal_code="40120",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2021-06-02T14:55:14.569Z'),
    currency="Forint",
    emails=.new[
      Shared::AccountingEmail.new(
        email="Reta_Rau63@hotmail.com",
        type=Shared::Type::OTHER,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(
      address1="string",
      address2="string",
      city="Glendora",
      country="Taiwan",
      country_code="GM",
      postal_code="62031-9598",
      region="string",
      region_code="string",
    ),
    tax_exemption=Shared::TaxExemption::RESALE,
    telephones=.new[
      Shared::AccountingTelephone.new(
        telephone="string",
        type=Shared::AccountingTelephoneType::MOBILE,
      ),
    ],
    updated_at=DateTime.iso8601('2023-07-28T14:03:12.852Z'),
  ),
)
    
res = s.customer.patch_accounting_customer(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchTicketingCustomerRequest.new(
  path_params=Operations::PatchTicketingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    ticketing_customer=Shared::TicketingCustomer.new(
      created_at=DateTime.iso8601('2023-06-30T19:19:15.782Z'),
      emails=.new[
        Shared::TicketingEmail.new(
          email="Rosalinda.Abshire11@hotmail.com",
          type=Shared::TicketingEmailType::WORK,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyTicketingCustomerRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::TicketingTelephone.new(
          telephone="string",
          type=Shared::TicketingTelephoneType::MOBILE,
        ),
      ],
      updated_at=DateTime.iso8601('2022-07-05T12:41:24.747Z'),
    ),
  ),
  ticketing_customer=Shared::TicketingCustomer.new(
    created_at=DateTime.iso8601('2023-03-18T05:35:21.382Z'),
    emails=.new[
      Shared::TicketingEmail.new(
        email="Rosella58@hotmail.com",
        type=Shared::TicketingEmailType::WORK,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::TicketingTelephone.new(
        telephone="string",
        type=Shared::TicketingTelephoneType::HOME,
      ),
    ],
    updated_at=DateTime.iso8601('2021-06-29T01:51:39.383Z'),
  ),
)
    
res = s.customer.patch_ticketing_customer(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAccountingCustomerRequest.new(
  path_params=Operations::RemoveAccountingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.customer.remove_accounting_customer(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveTicketingCustomerRequest.new(
  path_params=Operations::RemoveTicketingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.customer.remove_ticketing_customer(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAccountingCustomerRequest.new(
  path_params=Operations::UpdateAccountingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    accounting_customer=Shared::AccountingCustomer.new(
      billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(
        address1="string",
        address2="string",
        city="Renton",
        country="Iceland",
        country_code="VN",
        postal_code="77223-4340",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2023-05-08T08:34:01.295Z'),
      currency="Guinea Franc",
      emails=.new[
        Shared::AccountingEmail.new(
          email="Johnson53@hotmail.com",
          type=Shared::Type::OTHER,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyAccountingCustomerRaw.new(),
      shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(
        address1="string",
        address2="string",
        city="West Lowellberg",
        country="Republic of Korea",
        country_code="KR",
        postal_code="50451",
        region="string",
        region_code="string",
      ),
      tax_exemption=Shared::TaxExemption::CHARITABLE_ORG,
      telephones=.new[
        Shared::AccountingTelephone.new(
          telephone="string",
          type=Shared::AccountingTelephoneType::HOME,
        ),
      ],
      updated_at=DateTime.iso8601('2021-08-31T04:44:28.093Z'),
    ),
  ),
  accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(
      address1="string",
      address2="string",
      city="Jimmiefort",
      country="Seychelles",
      country_code="NC",
      postal_code="90328-9419",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2021-04-07T00:53:13.501Z'),
    currency="Kroon",
    emails=.new[
      Shared::AccountingEmail.new(
        email="Gretchen_Powlowski51@yahoo.com",
        type=Shared::Type::HOME,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(
      address1="string",
      address2="string",
      city="Sallystad",
      country="Armenia",
      country_code="VE",
      postal_code="00651",
      region="string",
      region_code="string",
    ),
    tax_exemption=Shared::TaxExemption::RELIGIOUS_ORG,
    telephones=.new[
      Shared::AccountingTelephone.new(
        telephone="string",
        type=Shared::AccountingTelephoneType::MOBILE,
      ),
    ],
    updated_at=DateTime.iso8601('2021-04-18T13:51:03.263Z'),
  ),
)
    
res = s.customer.update_accounting_customer(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateTicketingCustomerRequest.new(
  path_params=Operations::UpdateTicketingCustomerRequest.new(
    connection_id="string",
    id="<ID>",
    ticketing_customer=Shared::TicketingCustomer.new(
      created_at=DateTime.iso8601('2023-10-13T13:29:08.944Z'),
      emails=.new[
        Shared::TicketingEmail.new(
          email="Demetris72@hotmail.com",
          type=Shared::TicketingEmailType::HOME,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyTicketingCustomerRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::TicketingTelephone.new(
          telephone="string",
          type=Shared::TicketingTelephoneType::HOME,
        ),
      ],
      updated_at=DateTime.iso8601('2022-07-16T20:40:35.925Z'),
    ),
  ),
  ticketing_customer=Shared::TicketingCustomer.new(
    created_at=DateTime.iso8601('2022-04-03T02:29:57.034Z'),
    emails=.new[
      Shared::TicketingEmail.new(
        email="Annalise93@yahoo.com",
        type=Shared::TicketingEmailType::WORK,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyTicketingCustomerRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::TicketingTelephone.new(
        telephone="string",
        type=Shared::TicketingTelephoneType::FAX,
      ),
    ],
    updated_at=DateTime.iso8601('2023-11-10T18:20:33.368Z'),
  ),
)
    
res = s.customer.update_ticketing_customer(req)

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

