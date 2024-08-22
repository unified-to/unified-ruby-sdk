# Contact

## Overview

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
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.create_accounting_contact(connection_id="<value>", accounting_contact=::UnifiedRubySDK::Shared::AccountingContact.new())

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `accounting_contact`                                                                    | [::UnifiedRubySDK::Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingContactResponse)](../../models/operations/createaccountingcontactresponse.md)**




## create_crm_contact

Create a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.create_crm_contact(connection_id="<value>", crm_contact=::UnifiedRubySDK::Shared::CrmContact.new())

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `crm_contact`                                                                            | [::UnifiedRubySDK::Shared::CrmContact](../../models/shared/crmcontact.md)                | :heavy_minus_sign:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCrmContactResponse)](../../models/operations/createcrmcontactresponse.md)**




## create_uc_contact

Create a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.create_uc_contact(connection_id="<value>", uc_contact=::UnifiedRubySDK::Shared::UcContact.new())

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `uc_contact`                                                            | [::UnifiedRubySDK::Shared::UcContact](../../models/shared/uccontact.md) | :heavy_minus_sign:                                                      | A contact represents a person that optionally is associated with a call |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateUcContactResponse)](../../models/operations/createuccontactresponse.md)**




## get_accounting_contact

Retrieve a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.get_accounting_contact(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Contact                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingContactResponse)](../../models/operations/getaccountingcontactresponse.md)**




## get_crm_contact

Retrieve a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.get_crm_contact(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Contact                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCrmContactResponse)](../../models/operations/getcrmcontactresponse.md)**




## get_uc_contact

Retrieve a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.get_uc_contact(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Contact                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUcContactResponse)](../../models/operations/getuccontactresponse.md)**




## list_accounting_contacts

List all contacts

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAccountingContactsRequest.new(
  connection_id: "<value>",
)
    
res = s.contact.list_accounting_contacts(req)

if ! res.accounting_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingContactsRequest](../../models/operations/listaccountingcontactsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingContactsResponse)](../../models/operations/listaccountingcontactsresponse.md)**




## list_crm_contacts

List all contacts

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCrmContactsRequest.new(
  connection_id: "<value>",
)
    
res = s.contact.list_crm_contacts(req)

if ! res.crm_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::UnifiedRubySDK::Operations::ListCrmContactsRequest](../../models/operations/listcrmcontactsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCrmContactsResponse)](../../models/operations/listcrmcontactsresponse.md)**




## list_uc_contacts

List all contacts

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListUcContactsRequest.new(
  connection_id: "<value>",
)
    
res = s.contact.list_uc_contacts(req)

if ! res.uc_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::UnifiedRubySDK::Operations::ListUcContactsRequest](../../models/operations/listuccontactsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUcContactsResponse)](../../models/operations/listuccontactsresponse.md)**




## patch_accounting_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.patch_accounting_contact(connection_id="<value>", id="<value>", accounting_contact=::UnifiedRubySDK::Shared::AccountingContact.new())

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Contact                                                                       |
| `accounting_contact`                                                                    | [::UnifiedRubySDK::Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingContactResponse)](../../models/operations/patchaccountingcontactresponse.md)**




## patch_crm_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.patch_crm_contact(connection_id="<value>", id="<value>", crm_contact=::UnifiedRubySDK::Shared::CrmContact.new())

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the Contact                                                                        |
| `crm_contact`                                                                            | [::UnifiedRubySDK::Shared::CrmContact](../../models/shared/crmcontact.md)                | :heavy_minus_sign:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCrmContactResponse)](../../models/operations/patchcrmcontactresponse.md)**




## patch_uc_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.patch_uc_contact(connection_id="<value>", id="<value>", uc_contact=::UnifiedRubySDK::Shared::UcContact.new())

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Contact                                                       |
| `uc_contact`                                                            | [::UnifiedRubySDK::Shared::UcContact](../../models/shared/uccontact.md) | :heavy_minus_sign:                                                      | A contact represents a person that optionally is associated with a call |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchUcContactResponse)](../../models/operations/patchuccontactresponse.md)**




## remove_accounting_contact

Remove a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.remove_accounting_contact(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Contact    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingContactResponse)](../../models/operations/removeaccountingcontactresponse.md)**




## remove_crm_contact

Remove a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.remove_crm_contact(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Contact    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCrmContactResponse)](../../models/operations/removecrmcontactresponse.md)**




## remove_uc_contact

Remove a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.remove_uc_contact(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Contact    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveUcContactResponse)](../../models/operations/removeuccontactresponse.md)**




## update_accounting_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.update_accounting_contact(connection_id="<value>", id="<value>", accounting_contact=::UnifiedRubySDK::Shared::AccountingContact.new())

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Contact                                                                       |
| `accounting_contact`                                                                    | [::UnifiedRubySDK::Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingContactResponse)](../../models/operations/updateaccountingcontactresponse.md)**




## update_crm_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.update_crm_contact(connection_id="<value>", id="<value>", crm_contact=::UnifiedRubySDK::Shared::CrmContact.new())

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the Contact                                                                        |
| `crm_contact`                                                                            | [::UnifiedRubySDK::Shared::CrmContact](../../models/shared/crmcontact.md)                | :heavy_minus_sign:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCrmContactResponse)](../../models/operations/updatecrmcontactresponse.md)**




## update_uc_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.contact.update_uc_contact(connection_id="<value>", id="<value>", uc_contact=::UnifiedRubySDK::Shared::UcContact.new())

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Contact                                                       |
| `uc_contact`                                                            | [::UnifiedRubySDK::Shared::UcContact](../../models/shared/uccontact.md) | :heavy_minus_sign:                                                      | A contact represents a person that optionally is associated with a call |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateUcContactResponse)](../../models/operations/updateuccontactresponse.md)**


