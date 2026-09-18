# Contact
(*contact*)

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

<!-- UsageSnippet language="ruby" operationID="createAccountingContact" method="post" path="/accounting/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.contact.create_accounting_contact(accounting_contact: Models::Shared::AccountingContact.new(
  associated_contacts: [
    Models::Shared::AccountingAssociatedContact.new(
      id: 'd525ae4d-d9c6-4acc-81bd-027ef5e8a76e',
      name: 'Delores Reynolds',
    ),
    Models::Shared::AccountingAssociatedContact.new(
      id: '68dc5f0e-242a-4649-9046-8ce461d6b93d',
      name: 'Delores Reynolds',
    ),
  ],
  billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
    address1: '2633 Stoney Lane',
    address2: 'Suite 176',
    city: 'Ladariusboro',
    country_code: 'US',
    postal_code: '70131-2908',
    region: 'Illinois',
    region_code: 'NV',
  ),
  company_name: 'Marquardt Inc',
  created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
  currency: 'ISK',
  emails: [
    Models::Shared::AccountingEmail.new(
      email: 'Delores.Reynolds10@hotmail.com',
      type: Models::Shared::AccountingEmailType::HOME,
    ),
  ],
  first_name: 'Delores',
  id: '6d01203b-9e81-46fb-a101-7b29d374a4e4',
  identification: 'amicitia',
  is_active: true,
  is_customer: true,
  last_name: 'Reynolds',
  name: 'Delores Reynolds',
  payment_methods: [
    Models::Shared::AccountingContactPaymentMethod.new(
      default: true,
      id: '3523e539-1561-452d-ae3c-0840b0464b33',
      name: 'Visa 1234',
      type: Models::Shared::AccountingContactPaymentMethodType::CARD,
    ),
  ],
  portal_url: 'https://scented-t-shirt.info/',
  shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
    address1: '786 Renner Stream',
    address2: 'Apt. 555',
    city: 'Roanoke',
    country_code: 'US',
    postal_code: '80686-7556',
    region: 'Vermont',
    region_code: 'NE',
  ),
  tax_exemption: Models::Shared::TaxExemption::RESALE,
  tax_number: 'amplexus',
  telephones: [
    Models::Shared::AccountingTelephone.new(
      telephone: '(427) 701-7160',
      type: Models::Shared::AccountingTelephoneType::HOME,
    ),
    Models::Shared::AccountingTelephone.new(
      telephone: '(540) 913-9171',
      type: Models::Shared::AccountingTelephoneType::FAX,
    ),
  ],
  updated_at: DateTime.iso8601('2023-12-04T22:26:30.009Z'),
), connection_id: '<id>')

unless res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_contact`                                                                                                                             | [Models::Shared::AccountingContact](../../models/shared/accountingcontact.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingContactQueryParamFields](../../models/operations/createaccountingcontactqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingContactResponse)](../../models/operations/createaccountingcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_crm_contact

Create a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmContact" method="post" path="/crm/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.contact.create_crm_contact(crm_contact: Models::Shared::CrmContact.new(
  address: Models::Shared::PropertyCrmContactAddress.new(
    address1: '518 Brannon Burg',
    city: 'East Helenebury',
    country_code: 'US',
    postal_code: '92622-2406',
    region: 'Vermont',
    region_code: 'AZ',
  ),
  company: 'Lowe - Jakubowski',
  created_at: DateTime.iso8601('2021-01-02T00:41:38.885Z'),
  department: 'systematic',
  emails: [
    Models::Shared::CrmEmail.new(
      email: 'Mohammad.Bartell45@hotmail.com',
      type: Models::Shared::CrmEmailType::HOME,
    ),
    Models::Shared::CrmEmail.new(
      email: 'Mohammad.Bartell90@hotmail.com',
      type: Models::Shared::CrmEmailType::HOME,
    ),
    Models::Shared::CrmEmail.new(
      email: 'Mohammad_Bartell@hotmail.com',
      type: Models::Shared::CrmEmailType::WORK,
    ),
  ],
  first_name: 'Mohammad',
  id: '044bd9d5-4207-49ab-a42d-86ff53cc84b8',
  image_url: 'https://picsum.photos/seed/zmbPeg/2905/378',
  last_name: 'Bartell',
  link_urls: [
    'https://limited-parade.info',
    'https://faint-papa.com/',
    'https://windy-accountability.name',
  ],
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: '4c434064-0547-4007-8384-afa37b266eb5',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'autem',
    ),
  ],
  name: 'Mohammad Bartell',
  telephones: [
    Models::Shared::CrmTelephone.new(
      telephone: '(975) 986-1658',
      type: Models::Shared::CrmTelephoneType::WORK,
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(489) 332-3509',
      type: Models::Shared::CrmTelephoneType::HOME,
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(205) 880-8886',
      type: Models::Shared::CrmTelephoneType::HOME,
    ),
  ],
  title: 'National Tactics Analyst',
  updated_at: DateTime.iso8601('2021-02-23T09:13:04.804Z'),
), connection_id: '<id>')

unless res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `crm_contact`                                                                                                                                    | [Models::Shared::CrmContact](../../models/shared/crmcontact.md)                                                                                  | :heavy_check_mark:                                                                                                                               | A contact represents a person that optionally is associated with a deal and/or a company                                                         |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCrmContactQueryParamFields](../../models/operations/createcrmcontactqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCrmContactResponse)](../../models/operations/createcrmcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_uc_contact

Create a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcContact" method="post" path="/uc/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.contact.create_uc_contact(uc_contact: Models::Shared::UcContact.new(
  company: 'Tillman Group',
  created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
  emails: [
    Models::Shared::UcEmail.new(
      email: 'Luther_Rogahn32@yahoo.com',
      type: Models::Shared::UcEmailType::WORK,
    ),
  ],
  first_name: 'Luther',
  id: '68649461-99c2-412e-ad3c-ecd09b6c2ffb',
  last_name: 'Rogahn',
  name: 'Luther Rogahn',
  telephones: [
    Models::Shared::UcTelephone.new(
      telephone: '(809) 992-1681',
      type: Models::Shared::UcTelephoneType::FAX,
    ),
    Models::Shared::UcTelephone.new(
      telephone: '(868) 238-2746',
      type: Models::Shared::UcTelephoneType::HOME,
    ),
    Models::Shared::UcTelephone.new(
      telephone: '(219) 736-0357',
      type: Models::Shared::UcTelephoneType::MOBILE,
    ),
  ],
  title: 'Chief Optimization Executive',
  updated_at: DateTime.iso8601('2023-11-18T22:28:26.560Z'),
), connection_id: '<id>')

unless res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `uc_contact`                                                                                                                                     | [Models::Shared::UcContact](../../models/shared/uccontact.md)                                                                                    | :heavy_check_mark:                                                                                                                               | A contact represents a person that optionally is associated with a call                                                                          |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateUcContactQueryParamFields](../../models/operations/createuccontactqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateUcContactResponse)](../../models/operations/createuccontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_contact

Retrieve a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingContact" method="get" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.contact.get_accounting_contact(connection_id: '<id>', id: '<id>')

unless res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Contact                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingContactQueryParamFields](../../models/operations/getaccountingcontactqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingContactResponse)](../../models/operations/getaccountingcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_crm_contact

Retrieve a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmContact" method="get" path="/crm/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.contact.get_crm_contact(connection_id: '<id>', id: '<id>')

unless res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Contact                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCrmContactQueryParamFields](../../models/operations/getcrmcontactqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCrmContactResponse)](../../models/operations/getcrmcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_uc_contact

Retrieve a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcContact" method="get" path="/uc/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.contact.get_uc_contact(connection_id: '<id>', id: '<id>')

unless res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Contact                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetUcContactQueryParamFields](../../models/operations/getuccontactqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetUcContactResponse)](../../models/operations/getuccontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_contacts

List all contacts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingContacts" method="get" path="/accounting/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingContactsRequest.new(
  connection_id: '<id>',
)

res = s.contact.list_accounting_contacts(request: req)

unless res.accounting_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingContactsRequest](../../models/operations/listaccountingcontactsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingContactsResponse)](../../models/operations/listaccountingcontactsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_contacts

List all contacts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmContacts" method="get" path="/crm/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmContactsRequest.new(
  connection_id: '<id>',
)

res = s.contact.list_crm_contacts(request: req)

unless res.crm_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListCrmContactsRequest](../../models/operations/listcrmcontactsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListCrmContactsResponse)](../../models/operations/listcrmcontactsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_uc_contacts

List all contacts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcContacts" method="get" path="/uc/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUcContactsRequest.new(
  connection_id: '<id>',
)

res = s.contact.list_uc_contacts(request: req)

unless res.uc_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListUcContactsRequest](../../models/operations/listuccontactsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListUcContactsResponse)](../../models/operations/listuccontactsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_contact

Update a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingContact" method="patch" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingContactRequest.new(
  accounting_contact: Models::Shared::AccountingContact.new(
    associated_contacts: [
      Models::Shared::AccountingAssociatedContact.new(
        id: '10071446-e0bf-48e8-adb6-834823d92db6',
        name: 'Delores Reynolds',
      ),
      Models::Shared::AccountingAssociatedContact.new(
        id: '86c61f21-ecff-4ce0-8818-50613f8505d5',
        name: 'Delores Reynolds',
      ),
    ],
    billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
      address1: '2633 Stoney Lane',
      address2: 'Suite 176',
      city: 'Ladariusboro',
      country_code: 'US',
      postal_code: '70131-2908',
      region: 'Illinois',
      region_code: 'NV',
    ),
    company_name: 'Marquardt Inc',
    created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
    currency: 'ISK',
    emails: [
      Models::Shared::AccountingEmail.new(
        email: 'Delores.Reynolds10@hotmail.com',
        type: Models::Shared::AccountingEmailType::HOME,
      ),
    ],
    first_name: 'Delores',
    id: 'b17e63cf-e91b-4b5c-80e4-f0f2dd2c9c16',
    identification: 'amicitia',
    is_active: true,
    is_customer: true,
    last_name: 'Reynolds',
    name: 'Delores Reynolds',
    payment_methods: [
      Models::Shared::AccountingContactPaymentMethod.new(
        default: true,
        id: '68ae4f24-72de-4cb1-9812-2f5b56873368',
        name: 'Visa 1234',
        type: Models::Shared::AccountingContactPaymentMethodType::CARD,
      ),
    ],
    portal_url: 'https://scented-t-shirt.info/',
    shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
      address1: '786 Renner Stream',
      address2: 'Apt. 555',
      city: 'Roanoke',
      country_code: 'US',
      postal_code: '80686-7556',
      region: 'Vermont',
      region_code: 'NE',
    ),
    tax_exemption: Models::Shared::TaxExemption::RESALE,
    tax_number: 'amplexus',
    telephones: [
      Models::Shared::AccountingTelephone.new(
        telephone: '(427) 701-7160',
        type: Models::Shared::AccountingTelephoneType::HOME,
      ),
      Models::Shared::AccountingTelephone.new(
        telephone: '(540) 913-9171',
        type: Models::Shared::AccountingTelephoneType::FAX,
      ),
    ],
    updated_at: DateTime.iso8601('2023-12-04T22:26:30.024Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.contact.patch_accounting_contact(request: req)

unless res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingContactRequest](../../models/operations/patchaccountingcontactrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingContactResponse)](../../models/operations/patchaccountingcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_crm_contact

Update a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmContact" method="patch" path="/crm/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCrmContactRequest.new(
  crm_contact: Models::Shared::CrmContact.new(
    address: Models::Shared::PropertyCrmContactAddress.new(
      address1: '518 Brannon Burg',
      city: 'East Helenebury',
      country_code: 'US',
      postal_code: '92622-2406',
      region: 'Vermont',
      region_code: 'AZ',
    ),
    company: 'Lowe - Jakubowski',
    created_at: DateTime.iso8601('2021-01-02T00:41:38.885Z'),
    department: 'systematic',
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'Mohammad.Bartell45@hotmail.com',
        type: Models::Shared::CrmEmailType::HOME,
      ),
      Models::Shared::CrmEmail.new(
        email: 'Mohammad.Bartell90@hotmail.com',
        type: Models::Shared::CrmEmailType::HOME,
      ),
      Models::Shared::CrmEmail.new(
        email: 'Mohammad_Bartell@hotmail.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
    ],
    first_name: 'Mohammad',
    id: '91442d56-299e-4fbd-b06f-e26380d6656b',
    image_url: 'https://picsum.photos/seed/zmbPeg/2905/378',
    last_name: 'Bartell',
    link_urls: [
      'https://limited-parade.info',
      'https://faint-papa.com/',
      'https://windy-accountability.name',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '42b19565-d886-42ec-ad7b-5d560bbe7c3d',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'autem',
      ),
    ],
    name: 'Mohammad Bartell',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(975) 986-1658',
        type: Models::Shared::CrmTelephoneType::WORK,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(489) 332-3509',
        type: Models::Shared::CrmTelephoneType::HOME,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(205) 880-8886',
        type: Models::Shared::CrmTelephoneType::HOME,
      ),
    ],
    title: 'National Tactics Analyst',
    updated_at: DateTime.iso8601('2021-02-23T09:13:04.805Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.contact.patch_crm_contact(request: req)

unless res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchCrmContactRequest](../../models/operations/patchcrmcontactrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchCrmContactResponse)](../../models/operations/patchcrmcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_uc_contact

Update a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUcContact" method="patch" path="/uc/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchUcContactRequest.new(
  uc_contact: Models::Shared::UcContact.new(
    company: 'Tillman Group',
    created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
    emails: [
      Models::Shared::UcEmail.new(
        email: 'Luther_Rogahn32@yahoo.com',
        type: Models::Shared::UcEmailType::WORK,
      ),
    ],
    first_name: 'Luther',
    id: '88fbbccc-9149-4030-b687-719937bb18a6',
    last_name: 'Rogahn',
    name: 'Luther Rogahn',
    telephones: [
      Models::Shared::UcTelephone.new(
        telephone: '(809) 992-1681',
        type: Models::Shared::UcTelephoneType::FAX,
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(868) 238-2746',
        type: Models::Shared::UcTelephoneType::HOME,
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(219) 736-0357',
        type: Models::Shared::UcTelephoneType::MOBILE,
      ),
    ],
    title: 'Chief Optimization Executive',
    updated_at: DateTime.iso8601('2023-11-18T22:28:26.565Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.contact.patch_uc_contact(request: req)

unless res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchUcContactRequest](../../models/operations/patchuccontactrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchUcContactResponse)](../../models/operations/patchuccontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_contact

Remove a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingContact" method="delete" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.contact.remove_accounting_contact(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAccountingContactResponse)](../../models/operations/removeaccountingcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_crm_contact

Remove a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmContact" method="delete" path="/crm/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.contact.remove_crm_contact(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveCrmContactResponse)](../../models/operations/removecrmcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_uc_contact

Remove a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUcContact" method="delete" path="/uc/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.contact.remove_uc_contact(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveUcContactResponse)](../../models/operations/removeuccontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_contact

Update a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingContact" method="put" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingContactRequest.new(
  accounting_contact: Models::Shared::AccountingContact.new(
    associated_contacts: [
      Models::Shared::AccountingAssociatedContact.new(
        id: '10071446-e0bf-48e8-adb6-834823d92db6',
        name: 'Delores Reynolds',
      ),
      Models::Shared::AccountingAssociatedContact.new(
        id: '86c61f21-ecff-4ce0-8818-50613f8505d5',
        name: 'Delores Reynolds',
      ),
    ],
    billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
      address1: '2633 Stoney Lane',
      address2: 'Suite 176',
      city: 'Ladariusboro',
      country_code: 'US',
      postal_code: '70131-2908',
      region: 'Illinois',
      region_code: 'NV',
    ),
    company_name: 'Marquardt Inc',
    created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
    currency: 'ISK',
    emails: [
      Models::Shared::AccountingEmail.new(
        email: 'Delores.Reynolds10@hotmail.com',
        type: Models::Shared::AccountingEmailType::HOME,
      ),
    ],
    first_name: 'Delores',
    id: 'b17e63cf-e91b-4b5c-80e4-f0f2dd2c9c16',
    identification: 'amicitia',
    is_active: true,
    is_customer: true,
    last_name: 'Reynolds',
    name: 'Delores Reynolds',
    payment_methods: [
      Models::Shared::AccountingContactPaymentMethod.new(
        default: true,
        id: '68ae4f24-72de-4cb1-9812-2f5b56873368',
        name: 'Visa 1234',
        type: Models::Shared::AccountingContactPaymentMethodType::CARD,
      ),
    ],
    portal_url: 'https://scented-t-shirt.info/',
    shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
      address1: '786 Renner Stream',
      address2: 'Apt. 555',
      city: 'Roanoke',
      country_code: 'US',
      postal_code: '80686-7556',
      region: 'Vermont',
      region_code: 'NE',
    ),
    tax_exemption: Models::Shared::TaxExemption::RESALE,
    tax_number: 'amplexus',
    telephones: [
      Models::Shared::AccountingTelephone.new(
        telephone: '(427) 701-7160',
        type: Models::Shared::AccountingTelephoneType::HOME,
      ),
      Models::Shared::AccountingTelephone.new(
        telephone: '(540) 913-9171',
        type: Models::Shared::AccountingTelephoneType::FAX,
      ),
    ],
    updated_at: DateTime.iso8601('2023-12-04T22:26:30.024Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.contact.update_accounting_contact(request: req)

unless res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingContactRequest](../../models/operations/updateaccountingcontactrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingContactResponse)](../../models/operations/updateaccountingcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_crm_contact

Update a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmContact" method="put" path="/crm/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCrmContactRequest.new(
  crm_contact: Models::Shared::CrmContact.new(
    address: Models::Shared::PropertyCrmContactAddress.new(
      address1: '518 Brannon Burg',
      city: 'East Helenebury',
      country_code: 'US',
      postal_code: '92622-2406',
      region: 'Vermont',
      region_code: 'AZ',
    ),
    company: 'Lowe - Jakubowski',
    created_at: DateTime.iso8601('2021-01-02T00:41:38.885Z'),
    department: 'systematic',
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'Mohammad.Bartell45@hotmail.com',
        type: Models::Shared::CrmEmailType::HOME,
      ),
      Models::Shared::CrmEmail.new(
        email: 'Mohammad.Bartell90@hotmail.com',
        type: Models::Shared::CrmEmailType::HOME,
      ),
      Models::Shared::CrmEmail.new(
        email: 'Mohammad_Bartell@hotmail.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
    ],
    first_name: 'Mohammad',
    id: '91442d56-299e-4fbd-b06f-e26380d6656b',
    image_url: 'https://picsum.photos/seed/zmbPeg/2905/378',
    last_name: 'Bartell',
    link_urls: [
      'https://limited-parade.info',
      'https://faint-papa.com/',
      'https://windy-accountability.name',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '42b19565-d886-42ec-ad7b-5d560bbe7c3d',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'autem',
      ),
    ],
    name: 'Mohammad Bartell',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(975) 986-1658',
        type: Models::Shared::CrmTelephoneType::WORK,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(489) 332-3509',
        type: Models::Shared::CrmTelephoneType::HOME,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(205) 880-8886',
        type: Models::Shared::CrmTelephoneType::HOME,
      ),
    ],
    title: 'National Tactics Analyst',
    updated_at: DateTime.iso8601('2021-02-23T09:13:04.805Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.contact.update_crm_contact(request: req)

unless res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateCrmContactRequest](../../models/operations/updatecrmcontactrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateCrmContactResponse)](../../models/operations/updatecrmcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_uc_contact

Update a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUcContact" method="put" path="/uc/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateUcContactRequest.new(
  uc_contact: Models::Shared::UcContact.new(
    company: 'Tillman Group',
    created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
    emails: [
      Models::Shared::UcEmail.new(
        email: 'Luther_Rogahn32@yahoo.com',
        type: Models::Shared::UcEmailType::WORK,
      ),
    ],
    first_name: 'Luther',
    id: '88fbbccc-9149-4030-b687-719937bb18a6',
    last_name: 'Rogahn',
    name: 'Luther Rogahn',
    telephones: [
      Models::Shared::UcTelephone.new(
        telephone: '(809) 992-1681',
        type: Models::Shared::UcTelephoneType::FAX,
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(868) 238-2746',
        type: Models::Shared::UcTelephoneType::HOME,
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(219) 736-0357',
        type: Models::Shared::UcTelephoneType::MOBILE,
      ),
    ],
    title: 'Chief Optimization Executive',
    updated_at: DateTime.iso8601('2023-11-18T22:28:26.565Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.contact.update_uc_contact(request: req)

unless res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateUcContactRequest](../../models/operations/updateuccontactrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateUcContactResponse)](../../models/operations/updateuccontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |