# Company


### Available Operations

* [create_crm_company](#create_crm_company) - Create a company
* [get_ats_company](#get_ats_company) - Retrieve a company
* [get_crm_company](#get_crm_company) - Retrieve a company
* [list_ats_companies](#list_ats_companies) - List all companies
* [list_crm_companies](#list_crm_companies) - List all companies
* [list_enrich_companies](#list_enrich_companies) - Retrieve enrichment information for a company
* [patch_crm_company](#patch_crm_company) - Update a company
* [remove_crm_company](#remove_crm_company) - Remove a company
* [update_crm_company](#update_crm_company) - Update a company

## create_crm_company

Create a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.company.create_crm_company(connection_id="string", crm_company=::UnifiedRubySDK::Shared::CrmCompany.new(
    address: ::UnifiedRubySDK::Shared::PropertyCrmCompanyAddress.new(),
    deal_ids: [
      "string",
    ],
    emails: [
      ::UnifiedRubySDK::Shared::CrmEmail.new(),
    ],
    link_urls: [
      "string",
    ],
    raw: {
      "connecting": "string",
    },
    tags: [
      "string",
    ],
    telephones: [
      ::UnifiedRubySDK::Shared::CrmTelephone.new(
        telephone: "string",
      ),
    ],
    websites: [
      "string",
    ],
  ))

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `crm_company`                                                                                  | [::UnifiedRubySDK::Shared::CrmCompany](../../models/shared/crmcompany.md)                      | :heavy_minus_sign:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCrmCompanyResponse)](../../models/operations/createcrmcompanyresponse.md)**


## get_ats_company

Retrieve a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.company.get_ats_company(connection_id="string", id="string", fields_=[
    "string",
  ])

if ! res.ats_company.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Company                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsCompanyResponse)](../../models/operations/getatscompanyresponse.md)**


## get_crm_company

Retrieve a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.company.get_crm_company(connection_id="string", id="string", fields_=[
    "string",
  ])

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Company                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCrmCompanyResponse)](../../models/operations/getcrmcompanyresponse.md)**


## list_ats_companies

List all companies

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsCompaniesRequest.new(
  connection_id: "string",
  fields_: [
    "string",
  ],
)
    
res = s.company.list_ats_companies(req)

if ! res.ats_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListAtsCompaniesRequest](../../models/operations/listatscompaniesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsCompaniesResponse)](../../models/operations/listatscompaniesresponse.md)**


## list_crm_companies

List all companies

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCrmCompaniesRequest.new(
  connection_id: "string",
  fields_: [
    "string",
  ],
)
    
res = s.company.list_crm_companies(req)

if ! res.crm_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListCrmCompaniesRequest](../../models/operations/listcrmcompaniesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCrmCompaniesResponse)](../../models/operations/listcrmcompaniesresponse.md)**


## list_enrich_companies

Retrieve enrichment information for a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.company.list_enrich_companies(connection_id="string", domain="string", name="string")

if ! res.enrich_company.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `connection_id`                     | *::String*                          | :heavy_check_mark:                  | ID of the connection                |
| `domain`                            | *::String*                          | :heavy_minus_sign:                  | The domain of the company to search |
| `name`                              | *::String*                          | :heavy_minus_sign:                  | The name of the company to search   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListEnrichCompaniesResponse)](../../models/operations/listenrichcompaniesresponse.md)**


## patch_crm_company

Update a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.company.patch_crm_company(connection_id="string", id="string", crm_company=::UnifiedRubySDK::Shared::CrmCompany.new(
    address: ::UnifiedRubySDK::Shared::PropertyCrmCompanyAddress.new(),
    deal_ids: [
      "string",
    ],
    emails: [
      ::UnifiedRubySDK::Shared::CrmEmail.new(),
    ],
    link_urls: [
      "string",
    ],
    raw: {
      "Producer": "string",
    },
    tags: [
      "string",
    ],
    telephones: [
      ::UnifiedRubySDK::Shared::CrmTelephone.new(
        telephone: "string",
      ),
    ],
    websites: [
      "string",
    ],
  ))

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the Company                                                                              |
| `crm_company`                                                                                  | [::UnifiedRubySDK::Shared::CrmCompany](../../models/shared/crmcompany.md)                      | :heavy_minus_sign:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCrmCompanyResponse)](../../models/operations/patchcrmcompanyresponse.md)**


## remove_crm_company

Remove a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.company.remove_crm_company(connection_id="string", id="string")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Company    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCrmCompanyResponse)](../../models/operations/removecrmcompanyresponse.md)**


## update_crm_company

Update a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.company.update_crm_company(connection_id="string", id="string", crm_company=::UnifiedRubySDK::Shared::CrmCompany.new(
    address: ::UnifiedRubySDK::Shared::PropertyCrmCompanyAddress.new(),
    deal_ids: [
      "string",
    ],
    emails: [
      ::UnifiedRubySDK::Shared::CrmEmail.new(),
    ],
    link_urls: [
      "string",
    ],
    raw: {
      "SMS": "string",
    },
    tags: [
      "string",
    ],
    telephones: [
      ::UnifiedRubySDK::Shared::CrmTelephone.new(
        telephone: "string",
      ),
    ],
    websites: [
      "string",
    ],
  ))

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the Company                                                                              |
| `crm_company`                                                                                  | [::UnifiedRubySDK::Shared::CrmCompany](../../models/shared/crmcompany.md)                      | :heavy_minus_sign:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCrmCompanyResponse)](../../models/operations/updatecrmcompanyresponse.md)**

