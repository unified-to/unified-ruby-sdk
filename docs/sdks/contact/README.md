# Contact


### Available Operations

* [create_accounting_contact](#create_accounting_contact) - Create a contact
* [create_crm_contact](#create_crm_contact) - Create a contact
* [create_uc_contact](#create_uc_contact) - Create a contact
* [get_accounting_contact](#get_accounting_contact) - Retrieve a contact
* [get_crm_contact](#get_crm_contact) - Retrieve a contact
* [get_uc_contact](#get_uc_contact) - Retrieve a contact
* [list_accounting_contacts](#list_accounting_contacts) - List all contacts
* [list_crm_contacts](#list_crm_contacts) - List all contacts
* [list_uc_contacts](#list_uc_contacts) - List all contacts
* [patch_accounting_contact](#patch_accounting_contact) - Update a contact
* [patch_crm_contact](#patch_crm_contact) - Update a contact
* [patch_uc_contact](#patch_uc_contact) - Update a contact
* [remove_accounting_contact](#remove_accounting_contact) - Remove a contact
* [remove_crm_contact](#remove_crm_contact) - Remove a contact
* [remove_uc_contact](#remove_uc_contact) - Remove a contact
* [update_accounting_contact](#update_accounting_contact) - Update a contact
* [update_crm_contact](#update_crm_contact) - Update a contact
* [update_uc_contact](#update_uc_contact) - Update a contact

## create_accounting_contact

Create a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.create_accounting_contact(connection_id="string", accounting_contact=Shared::AccountingContact.new(
    billing_address=Shared::PropertyAccountingContactBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Mac36@gmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingContactRaw.new(),
    shipping_address=Shared::PropertyAccountingContactShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `accounting_contact`                                                  | [Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateAccountingContactResponse)](../../models/operations/createaccountingcontactresponse.md)**


## create_crm_contact

Create a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.create_crm_contact(connection_id="string", crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(),
    company_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `crm_contact`                                                                            | [Shared::CrmContact](../../models/shared/crmcontact.md)                                  | :heavy_minus_sign:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |


### Response

**[T.nilable(Operations::CreateCrmContactResponse)](../../models/operations/createcrmcontactresponse.md)**


## create_uc_contact

Create a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.create_uc_contact(connection_id="string", uc_contact=Shared::UcContact.new(
    emails=[
      Shared::UcEmail.new(
        email="Dulce_Becker30@yahoo.com",
      ),
    ],
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=[
      Shared::UcTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `uc_contact`                                                            | [Shared::UcContact](../../models/shared/uccontact.md)                   | :heavy_minus_sign:                                                      | A contact represents a person that optionally is associated with a call |


### Response

**[T.nilable(Operations::CreateUcContactResponse)](../../models/operations/createuccontactresponse.md)**


## get_accounting_contact

Retrieve a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.get_accounting_contact(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Contact                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingContactResponse)](../../models/operations/getaccountingcontactresponse.md)**


## get_crm_contact

Retrieve a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.get_crm_contact(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Contact                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmContactResponse)](../../models/operations/getcrmcontactresponse.md)**


## get_uc_contact

Retrieve a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.get_uc_contact(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Contact                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetUcContactResponse)](../../models/operations/getuccontactresponse.md)**


## list_accounting_contacts

List all contacts

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingContactsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.contact.list_accounting_contacts(req)

if ! res.accounting_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListAccountingContactsRequest](../../models/operations/listaccountingcontactsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListAccountingContactsResponse)](../../models/operations/listaccountingcontactsresponse.md)**


## list_crm_contacts

List all contacts

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListCrmContactsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.contact.list_crm_contacts(req)

if ! res.crm_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::ListCrmContactsRequest](../../models/operations/listcrmcontactsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::ListCrmContactsResponse)](../../models/operations/listcrmcontactsresponse.md)**


## list_uc_contacts

List all contacts

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListUcContactsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.contact.list_uc_contacts(req)

if ! res.uc_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Operations::ListUcContactsRequest](../../models/operations/listuccontactsrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |


### Response

**[T.nilable(Operations::ListUcContactsResponse)](../../models/operations/listuccontactsresponse.md)**


## patch_accounting_contact

Update a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.patch_accounting_contact(connection_id="string", id="string", accounting_contact=Shared::AccountingContact.new(
    billing_address=Shared::PropertyAccountingContactBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Sylvester.Kuhic@yahoo.com",
      ),
    ],
    raw=Shared::PropertyAccountingContactRaw.new(),
    shipping_address=Shared::PropertyAccountingContactShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Contact                                                     |
| `accounting_contact`                                                  | [Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAccountingContactResponse)](../../models/operations/patchaccountingcontactresponse.md)**


## patch_crm_contact

Update a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.patch_crm_contact(connection_id="string", id="string", crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(),
    company_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the Contact                                                                        |
| `crm_contact`                                                                            | [Shared::CrmContact](../../models/shared/crmcontact.md)                                  | :heavy_minus_sign:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |


### Response

**[T.nilable(Operations::PatchCrmContactResponse)](../../models/operations/patchcrmcontactresponse.md)**


## patch_uc_contact

Update a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.patch_uc_contact(connection_id="string", id="string", uc_contact=Shared::UcContact.new(
    emails=[
      Shared::UcEmail.new(
        email="Norene_Boehm97@hotmail.com",
      ),
    ],
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=[
      Shared::UcTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the Contact                                                       |
| `uc_contact`                                                            | [Shared::UcContact](../../models/shared/uccontact.md)                   | :heavy_minus_sign:                                                      | A contact represents a person that optionally is associated with a call |


### Response

**[T.nilable(Operations::PatchUcContactResponse)](../../models/operations/patchuccontactresponse.md)**


## remove_accounting_contact

Remove a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.remove_accounting_contact(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Contact    |


### Response

**[T.nilable(Operations::RemoveAccountingContactResponse)](../../models/operations/removeaccountingcontactresponse.md)**


## remove_crm_contact

Remove a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.remove_crm_contact(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Contact    |


### Response

**[T.nilable(Operations::RemoveCrmContactResponse)](../../models/operations/removecrmcontactresponse.md)**


## remove_uc_contact

Remove a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.remove_uc_contact(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Contact    |


### Response

**[T.nilable(Operations::RemoveUcContactResponse)](../../models/operations/removeuccontactresponse.md)**


## update_accounting_contact

Update a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.update_accounting_contact(connection_id="string", id="string", accounting_contact=Shared::AccountingContact.new(
    billing_address=Shared::PropertyAccountingContactBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Kaci_Hane@hotmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingContactRaw.new(),
    shipping_address=Shared::PropertyAccountingContactShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Contact                                                     |
| `accounting_contact`                                                  | [Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateAccountingContactResponse)](../../models/operations/updateaccountingcontactresponse.md)**


## update_crm_contact

Update a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.update_crm_contact(connection_id="string", id="string", crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(),
    company_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the Contact                                                                        |
| `crm_contact`                                                                            | [Shared::CrmContact](../../models/shared/crmcontact.md)                                  | :heavy_minus_sign:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |


### Response

**[T.nilable(Operations::UpdateCrmContactResponse)](../../models/operations/updatecrmcontactresponse.md)**


## update_uc_contact

Update a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.update_uc_contact(connection_id="string", id="string", uc_contact=Shared::UcContact.new(
    emails=[
      Shared::UcEmail.new(
        email="Kianna.Witting90@gmail.com",
      ),
    ],
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=[
      Shared::UcTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the Contact                                                       |
| `uc_contact`                                                            | [Shared::UcContact](../../models/shared/uccontact.md)                   | :heavy_minus_sign:                                                      | A contact represents a person that optionally is associated with a call |


### Response

**[T.nilable(Operations::UpdateUcContactResponse)](../../models/operations/updateuccontactresponse.md)**

