# Company
(*company*)

## Overview

### Available Operations

* [create_ats_company](#create_ats_company) - Create a company
* [create_crm_company](#create_crm_company) - Create a company
* [create_hris_company](#create_hris_company) - Create a company
* [get_ats_company](#get_ats_company) - Retrieve a company
* [get_crm_company](#get_crm_company) - Retrieve a company
* [get_hris_company](#get_hris_company) - Retrieve a company
* [list_ats_companies](#list_ats_companies) - List all companies
* [list_crm_companies](#list_crm_companies) - List all companies
* [list_enrich_companies](#list_enrich_companies) - Retrieve enrichment information for a company
* [list_hris_companies](#list_hris_companies) - List all companies
* [patch_ats_company](#patch_ats_company) - Update a company
* [patch_crm_company](#patch_crm_company) - Update a company
* [patch_hris_company](#patch_hris_company) - Update a company
* [remove_ats_company](#remove_ats_company) - Remove a company
* [remove_crm_company](#remove_crm_company) - Remove a company
* [remove_hris_company](#remove_hris_company) - Remove a company
* [update_ats_company](#update_ats_company) - Update a company
* [update_crm_company](#update_crm_company) - Update a company
* [update_hris_company](#update_hris_company) - Update a company

## create_ats_company

Create a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsCompany" method="post" path="/ats/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.company.create_ats_company(ats_company: Models::Shared::AtsCompany.new(
  created_at: DateTime.iso8601('2019-04-22T03:50:02.920Z'),
  id: 'bc88c053-d149-4889-9144-a45bbbbb011e',
  name: 'Gulgowski, Dibbert and Wilderman',
  phone: '1-882-360-2010',
  updated_at: DateTime.iso8601('2020-10-01T04:12:23.715Z'),
  website_url: 'https://www.gulgowskidibbert.com',
), connection_id: '<id>')

unless res.ats_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ats_company`                                                                                                                                    | [Models::Shared::AtsCompany](../../models/shared/atscompany.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAtsCompanyQueryParamFields](../../models/operations/createatscompanyqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAtsCompanyResponse)](../../models/operations/createatscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_crm_company

Create a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmCompany" method="post" path="/crm/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.company.create_crm_company(crm_company: Models::Shared::CrmCompany.new(
  address: Models::Shared::PropertyCrmCompanyAddress.new(
    address1: '3328 Wunsch Flat',
    address2: 'Suite 905',
    city: 'New Ryderfort',
    country_code: 'US',
    postal_code: '04674',
    region: 'Delaware',
    region_code: 'NY',
  ),
  created_at: DateTime.iso8601('2020-05-11T18:26:32.925Z'),
  description: 'Venustas cruentus votum patruus terebro.',
  domains: [
    'goodwinsons.com',
  ],
  emails: [
    Models::Shared::CrmEmail.new(
      email: 'info@goodwinsons.com',
      type: Models::Shared::CrmEmailType::WORK,
    ),
    Models::Shared::CrmEmail.new(
      email: 'sales@goodwinsons.com',
      type: Models::Shared::CrmEmailType::WORK,
    ),
    Models::Shared::CrmEmail.new(
      email: 'support@goodwinsons.com',
      type: Models::Shared::CrmEmailType::WORK,
    ),
  ],
  employees: 4177.0,
  id: '76899288-87bf-4646-974b-44a0fd1b3acd',
  industry: 'Metrics',
  is_active: true,
  link_urls: [
    'https://www.linkedin.com/company/goodwin-and-sons',
  ],
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: '31a67396-12ff-4ae0-b56e-f60d44ae7d5d',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'unde',
    ),
  ],
  name: 'Goodwin and Sons',
  tags: [
    'censura',
    'abstergo',
    'ipsam',
  ],
  telephones: [
    Models::Shared::CrmTelephone.new(
      telephone: '(667) 607-5872',
      type: Models::Shared::CrmTelephoneType::HOME,
    ),
  ],
  timezone: 'Atlantic/Azores',
  updated_at: DateTime.iso8601('2025-03-03T03:44:26.054Z'),
  websites: [
    'https://www.goodwinsons.com',
  ],
), connection_id: '<id>')

unless res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `crm_company`                                                                                                                                    | [Models::Shared::CrmCompany](../../models/shared/crmcompany.md)                                                                                  | :heavy_check_mark:                                                                                                                               | A company represents an organization that optionally is associated with a deal and/or contacts                                                   |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCrmCompanyQueryParamFields](../../models/operations/createcrmcompanyqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCrmCompanyResponse)](../../models/operations/createcrmcompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_company

Create a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisCompany" method="post" path="/hris/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.company.create_hris_company(hris_company: Models::Shared::HrisCompany.new(
  address: Models::Shared::PropertyHrisCompanyAddress.new(
    address1: '675 Lavinia Lights',
    city: 'Rocky Mount',
    country_code: 'US',
    postal_code: '67325',
    region: 'Kentucky',
    region_code: 'MO',
  ),
  created_at: DateTime.iso8601('2021-05-02T22:27:38.970Z'),
  id: 'c6c4605a-089e-4cfb-91a8-c88c7fcf7a68',
  legal_name: 'Gottlieb Group LLC',
  metadata: [],
  name: 'Gottlieb Group',
  updated_at: DateTime.iso8601('2026-10-08T16:22:56.386Z'),
), connection_id: '<id>')

unless res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_company`                                                                                                                                   | [Models::Shared::HrisCompany](../../models/shared/hriscompany.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisCompanyQueryParamFields](../../models/operations/createhriscompanyqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisCompanyResponse)](../../models/operations/createhriscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ats_company

Retrieve a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsCompany" method="get" path="/ats/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.company.get_ats_company(connection_id: '<id>', id: '<id>')

unless res.ats_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Company                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsCompanyQueryParamFields](../../models/operations/getatscompanyqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsCompanyResponse)](../../models/operations/getatscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_crm_company

Retrieve a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmCompany" method="get" path="/crm/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.company.get_crm_company(connection_id: '<id>', id: '<id>')

unless res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Company                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCrmCompanyQueryParamFields](../../models/operations/getcrmcompanyqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCrmCompanyResponse)](../../models/operations/getcrmcompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_company

Retrieve a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisCompany" method="get" path="/hris/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.company.get_hris_company(connection_id: '<id>', id: '<id>')

unless res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Company                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisCompanyQueryParamFields](../../models/operations/gethriscompanyqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisCompanyResponse)](../../models/operations/gethriscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ats_companies

List all companies

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsCompanies" method="get" path="/ats/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsCompaniesRequest.new(
  connection_id: '<id>',
)

res = s.company.list_ats_companies(request: req)

unless res.ats_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListAtsCompaniesRequest](../../models/operations/listatscompaniesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListAtsCompaniesResponse)](../../models/operations/listatscompaniesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_companies

List all companies

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmCompanies" method="get" path="/crm/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmCompaniesRequest.new(
  connection_id: '<id>',
)

res = s.company.list_crm_companies(request: req)

unless res.crm_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListCrmCompaniesRequest](../../models/operations/listcrmcompaniesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListCrmCompaniesResponse)](../../models/operations/listcrmcompaniesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_enrich_companies

Retrieve enrichment information for a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listEnrichCompanies" method="get" path="/enrich/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.company.list_enrich_companies(connection_id: '<id>')

unless res.enrich_company.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `connection_id`                     | *::String*                          | :heavy_check_mark:                  | ID of the connection                |
| `domain`                            | *T.nilable(::String)*               | :heavy_minus_sign:                  | The domain of the company to search |
| `name`                              | *T.nilable(::String)*               | :heavy_minus_sign:                  | The name of the company to search   |

### Response

**[T.nilable(Models::Operations::ListEnrichCompaniesResponse)](../../models/operations/listenrichcompaniesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_companies

List all companies

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisCompanies" method="get" path="/hris/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisCompaniesRequest.new(
  connection_id: '<id>',
)

res = s.company.list_hris_companies(request: req)

unless res.hris_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListHrisCompaniesRequest](../../models/operations/listhriscompaniesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListHrisCompaniesResponse)](../../models/operations/listhriscompaniesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ats_company

Update a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsCompany" method="patch" path="/ats/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAtsCompanyRequest.new(
  ats_company: Models::Shared::AtsCompany.new(
    created_at: DateTime.iso8601('2019-04-22T03:50:02.920Z'),
    id: 'b636b5e8-021c-497e-9250-478a87440e00',
    name: 'Gulgowski, Dibbert and Wilderman',
    phone: '1-882-360-2010',
    updated_at: DateTime.iso8601('2020-10-01T04:12:23.719Z'),
    website_url: 'https://www.gulgowskidibbert.com',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.company.patch_ats_company(request: req)

unless res.ats_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchAtsCompanyRequest](../../models/operations/patchatscompanyrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchAtsCompanyResponse)](../../models/operations/patchatscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_crm_company

Update a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmCompany" method="patch" path="/crm/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCrmCompanyRequest.new(
  crm_company: Models::Shared::CrmCompany.new(
    address: Models::Shared::PropertyCrmCompanyAddress.new(
      address1: '3328 Wunsch Flat',
      address2: 'Suite 905',
      city: 'New Ryderfort',
      country_code: 'US',
      postal_code: '04674',
      region: 'Delaware',
      region_code: 'NY',
    ),
    created_at: DateTime.iso8601('2020-05-11T18:26:32.925Z'),
    description: 'Venustas cruentus votum patruus terebro.',
    domains: [
      'goodwinsons.com',
    ],
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'info@goodwinsons.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
      Models::Shared::CrmEmail.new(
        email: 'sales@goodwinsons.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
      Models::Shared::CrmEmail.new(
        email: 'support@goodwinsons.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
    ],
    employees: 4177.0,
    id: 'cc28f72c-f444-453c-b4f6-2697156e25e2',
    industry: 'Metrics',
    is_active: true,
    link_urls: [
      'https://www.linkedin.com/company/goodwin-and-sons',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '01f0ae9f-23c2-49fe-a397-7f5bda43cc3e',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'unde',
      ),
    ],
    name: 'Goodwin and Sons',
    tags: [
      'censura',
      'abstergo',
      'ipsam',
    ],
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(667) 607-5872',
        type: Models::Shared::CrmTelephoneType::HOME,
      ),
    ],
    timezone: 'Atlantic/Azores',
    updated_at: DateTime.iso8601('2025-03-03T03:44:26.077Z'),
    websites: [
      'https://www.goodwinsons.com',
    ],
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.company.patch_crm_company(request: req)

unless res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchCrmCompanyRequest](../../models/operations/patchcrmcompanyrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchCrmCompanyResponse)](../../models/operations/patchcrmcompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_company

Update a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisCompany" method="patch" path="/hris/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisCompanyRequest.new(
  hris_company: Models::Shared::HrisCompany.new(
    address: Models::Shared::PropertyHrisCompanyAddress.new(
      address1: '675 Lavinia Lights',
      city: 'Rocky Mount',
      country_code: 'US',
      postal_code: '67325',
      region: 'Kentucky',
      region_code: 'MO',
    ),
    created_at: DateTime.iso8601('2021-05-02T22:27:38.970Z'),
    id: '1a037787-e022-401d-a3e7-32542733f2d2',
    legal_name: 'Gottlieb Group LLC',
    metadata: [],
    name: 'Gottlieb Group',
    updated_at: DateTime.iso8601('2026-10-08T16:22:56.398Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.company.patch_hris_company(request: req)

unless res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchHrisCompanyRequest](../../models/operations/patchhriscompanyrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchHrisCompanyResponse)](../../models/operations/patchhriscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ats_company

Remove a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsCompany" method="delete" path="/ats/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.company.remove_ats_company(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAtsCompanyResponse)](../../models/operations/removeatscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_crm_company

Remove a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmCompany" method="delete" path="/crm/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.company.remove_crm_company(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveCrmCompanyResponse)](../../models/operations/removecrmcompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_company

Remove a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisCompany" method="delete" path="/hris/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.company.remove_hris_company(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveHrisCompanyResponse)](../../models/operations/removehriscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ats_company

Update a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsCompany" method="put" path="/ats/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAtsCompanyRequest.new(
  ats_company: Models::Shared::AtsCompany.new(
    created_at: DateTime.iso8601('2019-04-22T03:50:02.920Z'),
    id: 'b636b5e8-021c-497e-9250-478a87440e00',
    name: 'Gulgowski, Dibbert and Wilderman',
    phone: '1-882-360-2010',
    updated_at: DateTime.iso8601('2020-10-01T04:12:23.719Z'),
    website_url: 'https://www.gulgowskidibbert.com',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.company.update_ats_company(request: req)

unless res.ats_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateAtsCompanyRequest](../../models/operations/updateatscompanyrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateAtsCompanyResponse)](../../models/operations/updateatscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_crm_company

Update a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmCompany" method="put" path="/crm/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCrmCompanyRequest.new(
  crm_company: Models::Shared::CrmCompany.new(
    address: Models::Shared::PropertyCrmCompanyAddress.new(
      address1: '3328 Wunsch Flat',
      address2: 'Suite 905',
      city: 'New Ryderfort',
      country_code: 'US',
      postal_code: '04674',
      region: 'Delaware',
      region_code: 'NY',
    ),
    created_at: DateTime.iso8601('2020-05-11T18:26:32.925Z'),
    description: 'Venustas cruentus votum patruus terebro.',
    domains: [
      'goodwinsons.com',
    ],
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'info@goodwinsons.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
      Models::Shared::CrmEmail.new(
        email: 'sales@goodwinsons.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
      Models::Shared::CrmEmail.new(
        email: 'support@goodwinsons.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
    ],
    employees: 4177.0,
    id: 'cc28f72c-f444-453c-b4f6-2697156e25e2',
    industry: 'Metrics',
    is_active: true,
    link_urls: [
      'https://www.linkedin.com/company/goodwin-and-sons',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '01f0ae9f-23c2-49fe-a397-7f5bda43cc3e',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'unde',
      ),
    ],
    name: 'Goodwin and Sons',
    tags: [
      'censura',
      'abstergo',
      'ipsam',
    ],
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(667) 607-5872',
        type: Models::Shared::CrmTelephoneType::HOME,
      ),
    ],
    timezone: 'Atlantic/Azores',
    updated_at: DateTime.iso8601('2025-03-03T03:44:26.077Z'),
    websites: [
      'https://www.goodwinsons.com',
    ],
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.company.update_crm_company(request: req)

unless res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateCrmCompanyRequest](../../models/operations/updatecrmcompanyrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateCrmCompanyResponse)](../../models/operations/updatecrmcompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_company

Update a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisCompany" method="put" path="/hris/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisCompanyRequest.new(
  hris_company: Models::Shared::HrisCompany.new(
    address: Models::Shared::PropertyHrisCompanyAddress.new(
      address1: '675 Lavinia Lights',
      city: 'Rocky Mount',
      country_code: 'US',
      postal_code: '67325',
      region: 'Kentucky',
      region_code: 'MO',
    ),
    created_at: DateTime.iso8601('2021-05-02T22:27:38.970Z'),
    id: '1a037787-e022-401d-a3e7-32542733f2d2',
    legal_name: 'Gottlieb Group LLC',
    metadata: [],
    name: 'Gottlieb Group',
    updated_at: DateTime.iso8601('2026-10-08T16:22:56.398Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.company.update_hris_company(request: req)

unless res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateHrisCompanyRequest](../../models/operations/updatehriscompanyrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateHrisCompanyResponse)](../../models/operations/updatehriscompanyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |