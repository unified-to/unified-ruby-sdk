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

Creates a AccountingContact. Provide the unified AccountingContact fields in the request body; they are mapped to the provider's API. Returns the created AccountingContact.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingContact" method="post" path="/accounting/{connection_id}/contact" example="accounting_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.contact.create_accounting_contact(accounting_contact: Models::Shared::AccountingContact.new(
  associated_contacts: [],
  balance_amount: 55_574.0,
  billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
    address1: '9171 Parisian Gateway',
    city: 'Lake Keltonboro',
    country_code: 'US',
    postal_code: '70131-2908',
    region: 'Illinois',
    region_code: 'CO'
  ),
  company_name: 'Rice LLC',
  created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
  currency: 'AUD',
  emails: [
    Models::Shared::AccountingEmail.new(
      email: 'michele.breitenberg@ricellc.com',
      type: Models::Shared::AccountingEmailType::WORK
    ),
    Models::Shared::AccountingEmail.new(
      email: 'accounts@ricellc.com',
      type: Models::Shared::AccountingEmailType::OTHER
    ),
  ],
  first_name: 'Michele',
  id: '6337ea8f-1637-4996-947c-6216c14be4d8',
  identification: '508720595',
  is_active: true,
  is_customer: true,
  last_name: 'Breitenberg',
  metadata: [],
  name: 'Rice LLC',
  notes: 'Tabella reprehenderit sono corrupti approbo crastinus sopor ultra.',
  payment_methods: [
    Models::Shared::AccountingContactPaymentMethod.new(
      default: true,
      id: 'f9975245-6c3c-4481-8bc9-05b3df379b0f',
      name: 'Visa 5318',
      type: Models::Shared::AccountingContactPaymentMethodType::CARD
    ),
  ],
  portal_url: 'https://ricellc.com/billing',
  shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
    address1: '786 Dare Meadows',
    city: 'Phoenix',
    country_code: 'US',
    postal_code: '68675',
    region: 'Tennessee',
    region_code: 'NE'
  ),
  tax_exemption: Models::Shared::TaxExemption::FOREIGN,
  tax_number: '564107844',
  telephones: [
    Models::Shared::AccountingTelephone.new(
      telephone: '(217) 260-4409',
      type: Models::Shared::AccountingTelephoneType::FAX
    ),
  ],
  updated_at: DateTime.iso8601('2024-01-05T03:17:37.181Z'),
  website: 'https://ricellc.com'
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

Creates a CrmContact. Provide the unified CrmContact fields in the request body; they are mapped to the provider's API. Returns the created CrmContact.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmContact" method="post" path="/crm/{connection_id}/contact" example="crm_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.contact.create_crm_contact(crm_contact: Models::Shared::CrmContact.new(
  address: Models::Shared::PropertyCrmContactAddress.new(
    address1: '489 Eula Park',
    address2: 'Apt. 900',
    city: 'Archfield',
    country_code: 'US',
    postal_code: '60941-8210',
    region: 'Texas',
    region_code: 'NH'
  ),
  created_at: DateTime.iso8601('2021-01-02T00:41:38.885Z'),
  department: 'Health',
  emails: [
    Models::Shared::CrmEmail.new(
      email: 'alexandro.kuphal@hotmail.com',
      type: Models::Shared::CrmEmailType::HOME
    ),
  ],
  first_name: 'Alexandro',
  id: 'b7a2dc2d-af86-43b6-b7bd-7f756bb2f308',
  image_url: 'https://avatars.githubusercontent.com/u/26594214',
  last_name: 'Kuphal',
  link_urls: [
    'https://www.linkedin.com/in/alexandro-kuphal',
  ],
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        'display_name' => 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: '5e79c62b-7cff-4d90-b096-a3c9c3fb79de',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'amplus'
    ),
  ],
  name: 'Alexandro Kuphal',
  telephones: [
    Models::Shared::CrmTelephone.new(
      telephone: '(404) 452-9269',
      type: Models::Shared::CrmTelephoneType::OTHER
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(989) 758-8616',
      type: Models::Shared::CrmTelephoneType::WORK
    ),
  ],
  title: 'Direct Infrastructure Administrator',
  updated_at: DateTime.iso8601('2021-02-25T02:46:37.235Z')
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

Creates a UcContact. Provide the unified UcContact fields in the request body; they are mapped to the provider's API. Returns the created UcContact.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcContact" method="post" path="/uc/{connection_id}/contact" example="uc_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.contact.create_uc_contact(uc_contact: Models::Shared::UcContact.new(
  company: 'Olson - Stanton',
  created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
  emails: [
    Models::Shared::UcEmail.new(
      email: 'Norval_Brekke@gmail.com',
      type: Models::Shared::UcEmailType::WORK
    ),
  ],
  first_name: 'Norval',
  id: '9aa78d84-0283-4c17-b862-539e1557fc80',
  last_name: 'Brekke',
  metadata: [],
  name: 'Norval Brekke',
  telephones: [
    Models::Shared::UcTelephone.new(
      telephone: '(992) 368-1868',
      type: Models::Shared::UcTelephoneType::FAX
    ),
    Models::Shared::UcTelephone.new(
      telephone: '(238) 374-6019',
      type: Models::Shared::UcTelephoneType::HOME
    ),
    Models::Shared::UcTelephone.new(
      telephone: '(736) 235-7480',
      type: Models::Shared::UcTelephoneType::MOBILE
    ),
  ],
  title: 'Internal Creative Director',
  updated_at: DateTime.iso8601('2023-12-29T13:26:17.330Z')
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

Retrieves a single AccountingContact by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingContact" method="get" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single CrmContact by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmContact" method="get" path="/crm/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single UcContact by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcContact" method="get" path="/uc/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Returns a list of AccountingContacts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingContacts" method="get" path="/accounting/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingContactsRequest.new(
  connection_id: '<id>'
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

Returns a list of CrmContacts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmContacts" method="get" path="/crm/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCrmContactsRequest.new(
  connection_id: '<id>'
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

Returns a list of UcContacts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcContacts" method="get" path="/uc/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUcContactsRequest.new(
  connection_id: '<id>'
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

Updates the AccountingContact identified by `id`. Provide the unified AccountingContact fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingContact" method="patch" path="/accounting/{connection_id}/contact/{id}" example="accounting_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingContactRequest.new(
  accounting_contact: Models::Shared::AccountingContact.new(
    associated_contacts: [],
    balance_amount: 55_574.0,
    billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
      address1: '9171 Parisian Gateway',
      city: 'Lake Keltonboro',
      country_code: 'US',
      postal_code: '70131-2908',
      region: 'Illinois',
      region_code: 'CO'
    ),
    company_name: 'Rice LLC',
    created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
    currency: 'AUD',
    emails: [
      Models::Shared::AccountingEmail.new(
        email: 'michele.breitenberg@ricellc.com',
        type: Models::Shared::AccountingEmailType::WORK
      ),
      Models::Shared::AccountingEmail.new(
        email: 'accounts@ricellc.com',
        type: Models::Shared::AccountingEmailType::OTHER
      ),
    ],
    first_name: 'Michele',
    id: '970058af-ca27-46cc-9d01-701c343cbf1d',
    identification: '508720595',
    is_active: true,
    is_customer: true,
    last_name: 'Breitenberg',
    metadata: [],
    name: 'Rice LLC',
    notes: 'Tabella reprehenderit sono corrupti approbo crastinus sopor ultra.',
    payment_methods: [
      Models::Shared::AccountingContactPaymentMethod.new(
        default: true,
        id: '99f33ef2-4817-4e9c-a64b-b45554c6e007',
        name: 'Visa 5318',
        type: Models::Shared::AccountingContactPaymentMethodType::CARD
      ),
    ],
    portal_url: 'https://ricellc.com/billing',
    shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
      address1: '786 Dare Meadows',
      city: 'Phoenix',
      country_code: 'US',
      postal_code: '68675',
      region: 'Tennessee',
      region_code: 'NE'
    ),
    tax_exemption: Models::Shared::TaxExemption::FOREIGN,
    tax_number: '564107844',
    telephones: [
      Models::Shared::AccountingTelephone.new(
        telephone: '(217) 260-4409',
        type: Models::Shared::AccountingTelephoneType::FAX
      ),
    ],
    updated_at: DateTime.iso8601('2024-01-05T03:17:37.200Z'),
    website: 'https://ricellc.com'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the CrmContact identified by `id`. Provide the unified CrmContact fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmContact" method="patch" path="/crm/{connection_id}/contact/{id}" example="crm_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCrmContactRequest.new(
  crm_contact: Models::Shared::CrmContact.new(
    address: Models::Shared::PropertyCrmContactAddress.new(
      address1: '489 Eula Park',
      address2: 'Apt. 900',
      city: 'Archfield',
      country_code: 'US',
      postal_code: '60941-8210',
      region: 'Texas',
      region_code: 'NH'
    ),
    created_at: DateTime.iso8601('2021-01-02T00:41:38.885Z'),
    department: 'Health',
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'alexandro.kuphal@hotmail.com',
        type: Models::Shared::CrmEmailType::HOME
      ),
    ],
    first_name: 'Alexandro',
    id: '1a5043da-8c3c-45aa-9355-d58c91b5dcbd',
    image_url: 'https://avatars.githubusercontent.com/u/26594214',
    last_name: 'Kuphal',
    link_urls: [
      'https://www.linkedin.com/in/alexandro-kuphal',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '40459f97-a1a2-4b28-b1f9-6bf6adc1f4fd',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'amplus'
      ),
    ],
    name: 'Alexandro Kuphal',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(404) 452-9269',
        type: Models::Shared::CrmTelephoneType::OTHER
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(989) 758-8616',
        type: Models::Shared::CrmTelephoneType::WORK
      ),
    ],
    title: 'Direct Infrastructure Administrator',
    updated_at: DateTime.iso8601('2021-02-25T02:46:37.235Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the UcContact identified by `id`. Provide the unified UcContact fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUcContact" method="patch" path="/uc/{connection_id}/contact/{id}" example="uc_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchUcContactRequest.new(
  uc_contact: Models::Shared::UcContact.new(
    company: 'Olson - Stanton',
    created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
    emails: [
      Models::Shared::UcEmail.new(
        email: 'Norval_Brekke@gmail.com',
        type: Models::Shared::UcEmailType::WORK
      ),
    ],
    first_name: 'Norval',
    id: '9558a333-79c2-4b05-9757-9356f3a11be7',
    last_name: 'Brekke',
    metadata: [],
    name: 'Norval Brekke',
    telephones: [
      Models::Shared::UcTelephone.new(
        telephone: '(992) 368-1868',
        type: Models::Shared::UcTelephoneType::FAX
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(238) 374-6019',
        type: Models::Shared::UcTelephoneType::HOME
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(736) 235-7480',
        type: Models::Shared::UcTelephoneType::MOBILE
      ),
    ],
    title: 'Internal Creative Director',
    updated_at: DateTime.iso8601('2023-12-29T13:26:17.338Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Deletes the AccountingContact identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingContact" method="delete" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the CrmContact identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmContact" method="delete" path="/crm/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the UcContact identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUcContact" method="delete" path="/uc/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Updates the AccountingContact identified by `id`. Provide the unified AccountingContact fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingContact" method="put" path="/accounting/{connection_id}/contact/{id}" example="accounting_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingContactRequest.new(
  accounting_contact: Models::Shared::AccountingContact.new(
    associated_contacts: [],
    balance_amount: 55_574.0,
    billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
      address1: '9171 Parisian Gateway',
      city: 'Lake Keltonboro',
      country_code: 'US',
      postal_code: '70131-2908',
      region: 'Illinois',
      region_code: 'CO'
    ),
    company_name: 'Rice LLC',
    created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
    currency: 'AUD',
    emails: [
      Models::Shared::AccountingEmail.new(
        email: 'michele.breitenberg@ricellc.com',
        type: Models::Shared::AccountingEmailType::WORK
      ),
      Models::Shared::AccountingEmail.new(
        email: 'accounts@ricellc.com',
        type: Models::Shared::AccountingEmailType::OTHER
      ),
    ],
    first_name: 'Michele',
    id: '970058af-ca27-46cc-9d01-701c343cbf1d',
    identification: '508720595',
    is_active: true,
    is_customer: true,
    last_name: 'Breitenberg',
    metadata: [],
    name: 'Rice LLC',
    notes: 'Tabella reprehenderit sono corrupti approbo crastinus sopor ultra.',
    payment_methods: [
      Models::Shared::AccountingContactPaymentMethod.new(
        default: true,
        id: '99f33ef2-4817-4e9c-a64b-b45554c6e007',
        name: 'Visa 5318',
        type: Models::Shared::AccountingContactPaymentMethodType::CARD
      ),
    ],
    portal_url: 'https://ricellc.com/billing',
    shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
      address1: '786 Dare Meadows',
      city: 'Phoenix',
      country_code: 'US',
      postal_code: '68675',
      region: 'Tennessee',
      region_code: 'NE'
    ),
    tax_exemption: Models::Shared::TaxExemption::FOREIGN,
    tax_number: '564107844',
    telephones: [
      Models::Shared::AccountingTelephone.new(
        telephone: '(217) 260-4409',
        type: Models::Shared::AccountingTelephoneType::FAX
      ),
    ],
    updated_at: DateTime.iso8601('2024-01-05T03:17:37.200Z'),
    website: 'https://ricellc.com'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the CrmContact identified by `id`. Provide the unified CrmContact fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmContact" method="put" path="/crm/{connection_id}/contact/{id}" example="crm_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCrmContactRequest.new(
  crm_contact: Models::Shared::CrmContact.new(
    address: Models::Shared::PropertyCrmContactAddress.new(
      address1: '489 Eula Park',
      address2: 'Apt. 900',
      city: 'Archfield',
      country_code: 'US',
      postal_code: '60941-8210',
      region: 'Texas',
      region_code: 'NH'
    ),
    created_at: DateTime.iso8601('2021-01-02T00:41:38.885Z'),
    department: 'Health',
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'alexandro.kuphal@hotmail.com',
        type: Models::Shared::CrmEmailType::HOME
      ),
    ],
    first_name: 'Alexandro',
    id: '1a5043da-8c3c-45aa-9355-d58c91b5dcbd',
    image_url: 'https://avatars.githubusercontent.com/u/26594214',
    last_name: 'Kuphal',
    link_urls: [
      'https://www.linkedin.com/in/alexandro-kuphal',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '40459f97-a1a2-4b28-b1f9-6bf6adc1f4fd',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'amplus'
      ),
    ],
    name: 'Alexandro Kuphal',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(404) 452-9269',
        type: Models::Shared::CrmTelephoneType::OTHER
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(989) 758-8616',
        type: Models::Shared::CrmTelephoneType::WORK
      ),
    ],
    title: 'Direct Infrastructure Administrator',
    updated_at: DateTime.iso8601('2021-02-25T02:46:37.235Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the UcContact identified by `id`. Provide the unified UcContact fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUcContact" method="put" path="/uc/{connection_id}/contact/{id}" example="uc_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateUcContactRequest.new(
  uc_contact: Models::Shared::UcContact.new(
    company: 'Olson - Stanton',
    created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
    emails: [
      Models::Shared::UcEmail.new(
        email: 'Norval_Brekke@gmail.com',
        type: Models::Shared::UcEmailType::WORK
      ),
    ],
    first_name: 'Norval',
    id: '9558a333-79c2-4b05-9757-9356f3a11be7',
    last_name: 'Brekke',
    metadata: [],
    name: 'Norval Brekke',
    telephones: [
      Models::Shared::UcTelephone.new(
        telephone: '(992) 368-1868',
        type: Models::Shared::UcTelephoneType::FAX
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(238) 374-6019',
        type: Models::Shared::UcTelephoneType::HOME
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(736) 235-7480',
        type: Models::Shared::UcTelephoneType::MOBILE
      ),
    ],
    title: 'Internal Creative Director',
    updated_at: DateTime.iso8601('2023-12-29T13:26:17.338Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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