# Crm
(*crm*)

## Overview

### Available Operations

* [create_crm_company](#create_crm_company) - Create a company
* [create_crm_contact](#create_crm_contact) - Create a contact
* [create_crm_deal](#create_crm_deal) - Create a deal
* [create_crm_event](#create_crm_event) - Create an event
* [create_crm_lead](#create_crm_lead) - Create a lead
* [create_crm_pipeline](#create_crm_pipeline) - Create a pipeline
* [get_crm_company](#get_crm_company) - Retrieve a company
* [get_crm_contact](#get_crm_contact) - Retrieve a contact
* [get_crm_deal](#get_crm_deal) - Retrieve a deal
* [get_crm_event](#get_crm_event) - Retrieve an event
* [get_crm_lead](#get_crm_lead) - Retrieve a lead
* [get_crm_pipeline](#get_crm_pipeline) - Retrieve a pipeline
* [list_crm_companies](#list_crm_companies) - List all companies
* [list_crm_contacts](#list_crm_contacts) - List all contacts
* [list_crm_deals](#list_crm_deals) - List all deals
* [list_crm_events](#list_crm_events) - List all events
* [list_crm_leads](#list_crm_leads) - List all leads
* [list_crm_pipelines](#list_crm_pipelines) - List all pipelines
* [list_crm_taxonomies](#list_crm_taxonomies) - List all taxonomies
* [patch_crm_company](#patch_crm_company) - Update a company
* [patch_crm_contact](#patch_crm_contact) - Update a contact
* [patch_crm_deal](#patch_crm_deal) - Update a deal
* [patch_crm_event](#patch_crm_event) - Update an event
* [patch_crm_lead](#patch_crm_lead) - Update a lead
* [patch_crm_pipeline](#patch_crm_pipeline) - Update a pipeline
* [remove_crm_company](#remove_crm_company) - Remove a company
* [remove_crm_contact](#remove_crm_contact) - Remove a contact
* [remove_crm_deal](#remove_crm_deal) - Remove a deal
* [remove_crm_event](#remove_crm_event) - Remove an event
* [remove_crm_lead](#remove_crm_lead) - Remove a lead
* [remove_crm_pipeline](#remove_crm_pipeline) - Remove a pipeline
* [update_crm_company](#update_crm_company) - Update a company
* [update_crm_contact](#update_crm_contact) - Update a contact
* [update_crm_deal](#update_crm_deal) - Update a deal
* [update_crm_event](#update_crm_event) - Update an event
* [update_crm_lead](#update_crm_lead) - Update a lead
* [update_crm_pipeline](#update_crm_pipeline) - Update a pipeline

## create_crm_company

Creates a CrmCompany. Provide the unified CrmCompany fields in the request body; they are mapped to the provider's API. Returns the created CrmCompany.

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

res = s.crm.create_crm_company(crm_company: Models::Shared::CrmCompany.new(
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
  id: 'b126086c-5501-4d92-aa1e-161063e8c58d',
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
      id: 'ebd1f9f8-6013-4e0d-8178-02334a56635c',
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
  updated_at: DateTime.iso8601('2025-03-15T20:36:07.920Z'),
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

## create_crm_contact

Creates a CrmContact. Provide the unified CrmContact fields in the request body; they are mapped to the provider's API. Returns the created CrmContact.

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

res = s.crm.create_crm_contact(crm_contact: Models::Shared::CrmContact.new(
  address: Models::Shared::PropertyCrmContactAddress.new(
    address1: '65838 College Avenue',
    address2: 'Apt. 335',
    city: 'Fort Alexandratown',
    country_code: 'US',
    postal_code: '80888-6094',
    region: 'Montana',
    region_code: 'NM',
  ),
  created_at: DateTime.iso8601('2021-01-02T00:41:38.885Z'),
  department: 'Beauty',
  emails: [
    Models::Shared::CrmEmail.new(
      email: 'mohammad.bartell@hotmail.com',
      type: Models::Shared::CrmEmailType::HOME,
    ),
  ],
  first_name: 'Mohammad',
  id: 'abc298fe-9c5a-46f6-b75d-c562bf321051',
  image_url: 'https://avatars.githubusercontent.com/u/26803724',
  last_name: 'Bartell',
  link_urls: [
    'https://www.linkedin.com/in/mohammad-bartell',
  ],
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: '5a6199e1-4cc3-43e8-9570-1ab5415fe919',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'antiquus',
    ),
  ],
  name: 'Mohammad Bartell',
  telephones: [
    Models::Shared::CrmTelephone.new(
      telephone: '(254) 404-3529',
      type: Models::Shared::CrmTelephoneType::OTHER,
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(469) 989-7588',
      type: Models::Shared::CrmTelephoneType::WORK,
    ),
  ],
  title: 'National Tactics Analyst',
  updated_at: DateTime.iso8601('2021-02-24T15:21:56.400Z'),
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

## create_crm_deal

Creates a CrmDeal. Provide the unified CrmDeal fields in the request body; they are mapped to the provider's API. Returns the created CrmDeal.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmDeal" method="post" path="/crm/{connection_id}/deal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.create_crm_deal(crm_deal: Models::Shared::CrmDeal.new(
  amount: 98_162.0,
  closed_at: DateTime.iso8601('2024-03-13T22:51:07.644Z'),
  closing_at: DateTime.iso8601('2025-09-11T16:11:45.327Z'),
  created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
  currency: 'USD',
  description: 'Comis tepidus sit cavus crustulum trans tubineus adfectus.',
  id: '39e461c3-4791-4369-8f37-3a18cd9aa5b3',
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: 'ba877089-710c-4a39-86f2-285a9372cb9b',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'conatus',
    ),
  ],
  name: 'Stoltenberg - Funk - Luxurious Rubber Chicken',
  probability: 42.0,
  source: 'cubo',
  tags: [
    'causa',
    'suus',
  ],
  updated_at: DateTime.iso8601('2024-10-18T11:01:35.368Z'),
  won_reason: 'Usque libero soleo.',
), connection_id: '<id>')

unless res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `crm_deal`                                                                                                                                       | [Models::Shared::CrmDeal](../../models/shared/crmdeal.md)                                                                                        | :heavy_check_mark:                                                                                                                               | A deal represents an opportunity with companies and/or contacts                                                                                  |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCrmDealQueryParamFields](../../models/operations/createcrmdealqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCrmDealResponse)](../../models/operations/createcrmdealresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_crm_event

Creates a CrmEvent. Provide the unified CrmEvent fields in the request body; they are mapped to the provider's API. Returns the created CrmEvent.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmEvent" method="post" path="/crm/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.create_crm_event(crm_event: Models::Shared::CrmEvent.new(
  call: Models::Shared::PropertyCrmEventCall.new(
    description: 'Arbitro aptus.',
    duration: 64.0,
    start_at: DateTime.iso8601('2024-12-23T00:08:54.339Z'),
  ),
  created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
  id: 'cecb5910-5091-4efe-a22f-ee891d9deb13',
  metadata: [],
  type: Models::Shared::CrmEventType::CALL,
  updated_at: DateTime.iso8601('2026-10-28T11:41:57.551Z'),
), connection_id: '<id>')

unless res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `crm_event`                                                                                                                                      | [Models::Shared::CrmEvent](../../models/shared/crmevent.md)                                                                                      | :heavy_check_mark:                                                                                                                               | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company                                  |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCrmEventQueryParamFields](../../models/operations/createcrmeventqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCrmEventResponse)](../../models/operations/createcrmeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_crm_lead

Creates a CrmLead. Provide the unified CrmLead fields in the request body; they are mapped to the provider's API. Returns the created CrmLead.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmLead" method="post" path="/crm/{connection_id}/lead" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.create_crm_lead(crm_lead: Models::Shared::CrmLead.new(
  address: Models::Shared::PropertyCrmLeadAddress.new(
    address1: '87206 Hudson Street',
    city: 'Leslieboro',
    country_code: 'US',
    postal_code: '49909-1183',
    region: 'Michigan',
    region_code: 'MO',
  ),
  company_name: 'Tillman - Wiegand',
  created_at: DateTime.iso8601('2019-10-12T11:27:59.003Z'),
  emails: [
    Models::Shared::CrmEmail.new(
      email: 'velda.sporer@icloud.com',
      type: Models::Shared::CrmEmailType::WORK,
    ),
  ],
  first_name: 'Velda',
  id: '7a323ed2-f304-452f-b00a-4a1e245ae432',
  is_active: true,
  last_name: 'Sporer',
  link_urls: [
    'https://www.linkedin.com/in/velda-sporer',
  ],
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: '3575d2f2-3504-4b6c-abae-da1fa7174a75',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'vitiosus',
    ),
  ],
  name: 'Velda Sporer',
  source: 'Advertisement',
  status: 'New',
  telephones: [
    Models::Shared::CrmTelephone.new(
      telephone: '(841) 271-0595',
      type: Models::Shared::CrmTelephoneType::FAX,
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(664) 498-4952',
      type: Models::Shared::CrmTelephoneType::HOME,
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(281) 288-0037',
      type: Models::Shared::CrmTelephoneType::OTHER,
    ),
  ],
  title: 'International Factors Administrator',
  updated_at: DateTime.iso8601('2020-05-19T08:21:19.913Z'),
), connection_id: '<id>')

unless res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `crm_lead`                                                                                                                                       | [Models::Shared::CrmLead](../../models/shared/crmlead.md)                                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCrmLeadQueryParamFields](../../models/operations/createcrmleadqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCrmLeadResponse)](../../models/operations/createcrmleadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_crm_pipeline

Creates a CrmPipeline. Provide the unified CrmPipeline fields in the request body; they are mapped to the provider's API. Returns the created CrmPipeline.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmPipeline" method="post" path="/crm/{connection_id}/pipeline" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.create_crm_pipeline(crm_pipeline: Models::Shared::CrmPipeline.new(
  created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
  deal_probability: 99.0,
  display_order: 8.0,
  id: 'ab1bc95a-f311-4de7-a81f-b08e2a1320bb',
  is_active: true,
  metadata: [],
  name: 'Small Steel Bacon',
  stages: [
    Models::Shared::CrmStage.new(
      active: false,
      created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
      deal_probability: 84.0,
      display_order: 72.0,
      id: 'ee48288c-4f96-40be-900f-b96b20574b2b',
      is_closed: true,
      name: 'Veniam.',
      updated_at: DateTime.iso8601('2025-10-22T22:47:25.779Z'),
    ),
  ],
  updated_at: DateTime.iso8601('2025-11-13T22:36:09.536Z'),
), connection_id: '<id>')

unless res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `crm_pipeline`                                                                                                                                   | [Models::Shared::CrmPipeline](../../models/shared/crmpipeline.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCrmPipelineQueryParamFields](../../models/operations/createcrmpipelinequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCrmPipelineResponse)](../../models/operations/createcrmpipelineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_crm_company

Retrieves a single CrmCompany by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

res = s.crm.get_crm_company(connection_id: '<id>', id: '<id>')

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

## get_crm_contact

Retrieves a single CrmContact by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

res = s.crm.get_crm_contact(connection_id: '<id>', id: '<id>')

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

## get_crm_deal

Retrieves a single CrmDeal by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmDeal" method="get" path="/crm/{connection_id}/deal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.get_crm_deal(connection_id: '<id>', id: '<id>')

unless res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Deal                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCrmDealQueryParamFields](../../models/operations/getcrmdealqueryparamfields.md)>                                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCrmDealResponse)](../../models/operations/getcrmdealresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_crm_event

Retrieves a single CrmEvent by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmEvent" method="get" path="/crm/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.get_crm_event(connection_id: '<id>', id: '<id>')

unless res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Event                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCrmEventQueryParamFields](../../models/operations/getcrmeventqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCrmEventResponse)](../../models/operations/getcrmeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_crm_lead

Retrieves a single CrmLead by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmLead" method="get" path="/crm/{connection_id}/lead/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.get_crm_lead(connection_id: '<id>', id: '<id>')

unless res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Lead                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCrmLeadQueryParamFields](../../models/operations/getcrmleadqueryparamfields.md)>                                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCrmLeadResponse)](../../models/operations/getcrmleadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_crm_pipeline

Retrieves a single CrmPipeline by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmPipeline" method="get" path="/crm/{connection_id}/pipeline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.get_crm_pipeline(connection_id: '<id>', id: '<id>')

unless res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Pipeline                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCrmPipelineQueryParamFields](../../models/operations/getcrmpipelinequeryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCrmPipelineResponse)](../../models/operations/getcrmpipelineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_companies

Returns a list of CrmCompanies. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

res = s.crm.list_crm_companies(request: req)

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

## list_crm_contacts

Returns a list of CrmContacts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

res = s.crm.list_crm_contacts(request: req)

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

## list_crm_deals

Returns a list of CrmDeals. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmDeals" method="get" path="/crm/{connection_id}/deal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmDealsRequest.new(
  connection_id: '<id>',
)

res = s.crm.list_crm_deals(request: req)

unless res.crm_deals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListCrmDealsRequest](../../models/operations/listcrmdealsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListCrmDealsResponse)](../../models/operations/listcrmdealsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_events

Returns a list of CrmEvents. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmEvents" method="get" path="/crm/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmEventsRequest.new(
  connection_id: '<id>',
)

res = s.crm.list_crm_events(request: req)

unless res.crm_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListCrmEventsRequest](../../models/operations/listcrmeventsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListCrmEventsResponse)](../../models/operations/listcrmeventsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_leads

Returns a list of CrmLeads. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmLeads" method="get" path="/crm/{connection_id}/lead" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmLeadsRequest.new(
  connection_id: '<id>',
)

res = s.crm.list_crm_leads(request: req)

unless res.crm_leads.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListCrmLeadsRequest](../../models/operations/listcrmleadsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListCrmLeadsResponse)](../../models/operations/listcrmleadsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_pipelines

Returns a list of CrmPipelines. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmPipelines" method="get" path="/crm/{connection_id}/pipeline" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmPipelinesRequest.new(
  connection_id: '<id>',
)

res = s.crm.list_crm_pipelines(request: req)

unless res.crm_pipelines.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListCrmPipelinesRequest](../../models/operations/listcrmpipelinesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListCrmPipelinesResponse)](../../models/operations/listcrmpipelinesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_taxonomies

Returns a list of CrmTaxonomies. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmTaxonomies" method="get" path="/crm/{connection_id}/taxonomy" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmTaxonomiesRequest.new(
  connection_id: '<id>',
)

res = s.crm.list_crm_taxonomies(request: req)

unless res.crm_taxonomies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListCrmTaxonomiesRequest](../../models/operations/listcrmtaxonomiesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListCrmTaxonomiesResponse)](../../models/operations/listcrmtaxonomiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_crm_company

Updates the CrmCompany identified by `id`. Provide the unified CrmCompany fields to change in the request body.

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
    id: '46593eff-4226-41c8-b9bf-089661d45fa6',
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
        id: '7919a471-c5a4-48ce-96ed-40bbbb538059',
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
    updated_at: DateTime.iso8601('2025-03-15T20:36:07.934Z'),
    websites: [
      'https://www.goodwinsons.com',
    ],
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.patch_crm_company(request: req)

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

## patch_crm_contact

Updates the CrmContact identified by `id`. Provide the unified CrmContact fields to change in the request body.

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
      address1: '65838 College Avenue',
      address2: 'Apt. 335',
      city: 'Fort Alexandratown',
      country_code: 'US',
      postal_code: '80888-6094',
      region: 'Montana',
      region_code: 'NM',
    ),
    created_at: DateTime.iso8601('2021-01-02T00:41:38.885Z'),
    department: 'Beauty',
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'mohammad.bartell@hotmail.com',
        type: Models::Shared::CrmEmailType::HOME,
      ),
    ],
    first_name: 'Mohammad',
    id: '61b49778-63db-4dfc-af70-627611487dbe',
    image_url: 'https://avatars.githubusercontent.com/u/26803724',
    last_name: 'Bartell',
    link_urls: [
      'https://www.linkedin.com/in/mohammad-bartell',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'a6429ace-6ed8-4b96-afb2-ef0e52b49eb4',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'antiquus',
      ),
    ],
    name: 'Mohammad Bartell',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(254) 404-3529',
        type: Models::Shared::CrmTelephoneType::OTHER,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(469) 989-7588',
        type: Models::Shared::CrmTelephoneType::WORK,
      ),
    ],
    title: 'National Tactics Analyst',
    updated_at: DateTime.iso8601('2021-02-24T15:21:56.401Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.patch_crm_contact(request: req)

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

## patch_crm_deal

Updates the CrmDeal identified by `id`. Provide the unified CrmDeal fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmDeal" method="patch" path="/crm/{connection_id}/deal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCrmDealRequest.new(
  crm_deal: Models::Shared::CrmDeal.new(
    amount: 98_162.0,
    closed_at: DateTime.iso8601('2024-03-13T22:51:07.647Z'),
    closing_at: DateTime.iso8601('2025-09-11T16:11:45.337Z'),
    created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
    currency: 'USD',
    description: 'Comis tepidus sit cavus crustulum trans tubineus adfectus.',
    id: 'cd5e4652-53c8-415e-b7e5-ecf52e0c6298',
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'f8f99cf8-0bdb-46e9-97a4-ae8aa9588b99',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'conatus',
      ),
    ],
    name: 'Stoltenberg - Funk - Luxurious Rubber Chicken',
    probability: 42.0,
    source: 'cubo',
    tags: [
      'causa',
      'suus',
    ],
    updated_at: DateTime.iso8601('2024-10-18T11:01:35.373Z'),
    won_reason: 'Usque libero soleo.',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.patch_crm_deal(request: req)

unless res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::PatchCrmDealRequest](../../models/operations/patchcrmdealrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::PatchCrmDealResponse)](../../models/operations/patchcrmdealresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_crm_event

Updates the CrmEvent identified by `id`. Provide the unified CrmEvent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmEvent" method="patch" path="/crm/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCrmEventRequest.new(
  crm_event: Models::Shared::CrmEvent.new(
    call: Models::Shared::PropertyCrmEventCall.new(
      description: 'Arbitro aptus.',
      duration: 64.0,
      start_at: DateTime.iso8601('2024-12-23T00:08:54.363Z'),
    ),
    created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
    id: '4ebe0964-adb4-422d-b1cd-db3784da5991',
    metadata: [],
    type: Models::Shared::CrmEventType::CALL,
    updated_at: DateTime.iso8601('2026-10-28T11:41:57.584Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.patch_crm_event(request: req)

unless res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::PatchCrmEventRequest](../../models/operations/patchcrmeventrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::PatchCrmEventResponse)](../../models/operations/patchcrmeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_crm_lead

Updates the CrmLead identified by `id`. Provide the unified CrmLead fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmLead" method="patch" path="/crm/{connection_id}/lead/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCrmLeadRequest.new(
  crm_lead: Models::Shared::CrmLead.new(
    address: Models::Shared::PropertyCrmLeadAddress.new(
      address1: '87206 Hudson Street',
      city: 'Leslieboro',
      country_code: 'US',
      postal_code: '49909-1183',
      region: 'Michigan',
      region_code: 'MO',
    ),
    company_name: 'Tillman - Wiegand',
    created_at: DateTime.iso8601('2019-10-12T11:27:59.003Z'),
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'velda.sporer@icloud.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
    ],
    first_name: 'Velda',
    id: '4f394125-3a10-49d2-86ac-967f4fd8d859',
    is_active: true,
    last_name: 'Sporer',
    link_urls: [
      'https://www.linkedin.com/in/velda-sporer',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '8de7aed9-1f23-4d85-ab19-063c66a9b199',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'vitiosus',
      ),
    ],
    name: 'Velda Sporer',
    source: 'Advertisement',
    status: 'New',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(841) 271-0595',
        type: Models::Shared::CrmTelephoneType::FAX,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(664) 498-4952',
        type: Models::Shared::CrmTelephoneType::HOME,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(281) 288-0037',
        type: Models::Shared::CrmTelephoneType::OTHER,
      ),
    ],
    title: 'International Factors Administrator',
    updated_at: DateTime.iso8601('2020-05-19T08:21:19.915Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.patch_crm_lead(request: req)

unless res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::PatchCrmLeadRequest](../../models/operations/patchcrmleadrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::PatchCrmLeadResponse)](../../models/operations/patchcrmleadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_crm_pipeline

Updates the CrmPipeline identified by `id`. Provide the unified CrmPipeline fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmPipeline" method="patch" path="/crm/{connection_id}/pipeline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCrmPipelineRequest.new(
  crm_pipeline: Models::Shared::CrmPipeline.new(
    created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
    deal_probability: 99.0,
    display_order: 8.0,
    id: 'aa707182-0835-47d1-9d13-2d35e0aae052',
    is_active: true,
    metadata: [],
    name: 'Small Steel Bacon',
    stages: [
      Models::Shared::CrmStage.new(
        active: false,
        created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
        deal_probability: 84.0,
        display_order: 72.0,
        id: '53be9558-beba-41d7-90ed-66f5d2104d0f',
        is_closed: true,
        name: 'Veniam.',
        updated_at: DateTime.iso8601('2025-10-22T22:47:25.787Z'),
      ),
    ],
    updated_at: DateTime.iso8601('2025-11-13T22:36:09.543Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.patch_crm_pipeline(request: req)

unless res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchCrmPipelineRequest](../../models/operations/patchcrmpipelinerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchCrmPipelineResponse)](../../models/operations/patchcrmpipelineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_crm_company

Deletes the CrmCompany identified by `id`.

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

res = s.crm.remove_crm_company(connection_id: '<id>', id: '<id>')

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

## remove_crm_contact

Deletes the CrmContact identified by `id`.

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

res = s.crm.remove_crm_contact(connection_id: '<id>', id: '<id>')

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

## remove_crm_deal

Deletes the CrmDeal identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmDeal" method="delete" path="/crm/{connection_id}/deal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.remove_crm_deal(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Deal       |

### Response

**[T.nilable(Models::Operations::RemoveCrmDealResponse)](../../models/operations/removecrmdealresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_crm_event

Deletes the CrmEvent identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmEvent" method="delete" path="/crm/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.remove_crm_event(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Event      |

### Response

**[T.nilable(Models::Operations::RemoveCrmEventResponse)](../../models/operations/removecrmeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_crm_lead

Deletes the CrmLead identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmLead" method="delete" path="/crm/{connection_id}/lead/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.remove_crm_lead(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Lead       |

### Response

**[T.nilable(Models::Operations::RemoveCrmLeadResponse)](../../models/operations/removecrmleadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_crm_pipeline

Deletes the CrmPipeline identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmPipeline" method="delete" path="/crm/{connection_id}/pipeline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.crm.remove_crm_pipeline(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Pipeline   |

### Response

**[T.nilable(Models::Operations::RemoveCrmPipelineResponse)](../../models/operations/removecrmpipelineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_crm_company

Updates the CrmCompany identified by `id`. Provide the unified CrmCompany fields to change in the request body.

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
    id: '46593eff-4226-41c8-b9bf-089661d45fa6',
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
        id: '7919a471-c5a4-48ce-96ed-40bbbb538059',
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
    updated_at: DateTime.iso8601('2025-03-15T20:36:07.934Z'),
    websites: [
      'https://www.goodwinsons.com',
    ],
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.update_crm_company(request: req)

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

## update_crm_contact

Updates the CrmContact identified by `id`. Provide the unified CrmContact fields to change in the request body.

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
      address1: '65838 College Avenue',
      address2: 'Apt. 335',
      city: 'Fort Alexandratown',
      country_code: 'US',
      postal_code: '80888-6094',
      region: 'Montana',
      region_code: 'NM',
    ),
    created_at: DateTime.iso8601('2021-01-02T00:41:38.885Z'),
    department: 'Beauty',
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'mohammad.bartell@hotmail.com',
        type: Models::Shared::CrmEmailType::HOME,
      ),
    ],
    first_name: 'Mohammad',
    id: '61b49778-63db-4dfc-af70-627611487dbe',
    image_url: 'https://avatars.githubusercontent.com/u/26803724',
    last_name: 'Bartell',
    link_urls: [
      'https://www.linkedin.com/in/mohammad-bartell',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'a6429ace-6ed8-4b96-afb2-ef0e52b49eb4',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'antiquus',
      ),
    ],
    name: 'Mohammad Bartell',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(254) 404-3529',
        type: Models::Shared::CrmTelephoneType::OTHER,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(469) 989-7588',
        type: Models::Shared::CrmTelephoneType::WORK,
      ),
    ],
    title: 'National Tactics Analyst',
    updated_at: DateTime.iso8601('2021-02-24T15:21:56.401Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.update_crm_contact(request: req)

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

## update_crm_deal

Updates the CrmDeal identified by `id`. Provide the unified CrmDeal fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmDeal" method="put" path="/crm/{connection_id}/deal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCrmDealRequest.new(
  crm_deal: Models::Shared::CrmDeal.new(
    amount: 98_162.0,
    closed_at: DateTime.iso8601('2024-03-13T22:51:07.647Z'),
    closing_at: DateTime.iso8601('2025-09-11T16:11:45.337Z'),
    created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
    currency: 'USD',
    description: 'Comis tepidus sit cavus crustulum trans tubineus adfectus.',
    id: 'cd5e4652-53c8-415e-b7e5-ecf52e0c6298',
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'f8f99cf8-0bdb-46e9-97a4-ae8aa9588b99',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'conatus',
      ),
    ],
    name: 'Stoltenberg - Funk - Luxurious Rubber Chicken',
    probability: 42.0,
    source: 'cubo',
    tags: [
      'causa',
      'suus',
    ],
    updated_at: DateTime.iso8601('2024-10-18T11:01:35.373Z'),
    won_reason: 'Usque libero soleo.',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.update_crm_deal(request: req)

unless res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::UpdateCrmDealRequest](../../models/operations/updatecrmdealrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::UpdateCrmDealResponse)](../../models/operations/updatecrmdealresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_crm_event

Updates the CrmEvent identified by `id`. Provide the unified CrmEvent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmEvent" method="put" path="/crm/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCrmEventRequest.new(
  crm_event: Models::Shared::CrmEvent.new(
    call: Models::Shared::PropertyCrmEventCall.new(
      description: 'Arbitro aptus.',
      duration: 64.0,
      start_at: DateTime.iso8601('2024-12-23T00:08:54.363Z'),
    ),
    created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
    id: '4ebe0964-adb4-422d-b1cd-db3784da5991',
    metadata: [],
    type: Models::Shared::CrmEventType::CALL,
    updated_at: DateTime.iso8601('2026-10-28T11:41:57.584Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.update_crm_event(request: req)

unless res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::UpdateCrmEventRequest](../../models/operations/updatecrmeventrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::UpdateCrmEventResponse)](../../models/operations/updatecrmeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_crm_lead

Updates the CrmLead identified by `id`. Provide the unified CrmLead fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmLead" method="put" path="/crm/{connection_id}/lead/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCrmLeadRequest.new(
  crm_lead: Models::Shared::CrmLead.new(
    address: Models::Shared::PropertyCrmLeadAddress.new(
      address1: '87206 Hudson Street',
      city: 'Leslieboro',
      country_code: 'US',
      postal_code: '49909-1183',
      region: 'Michigan',
      region_code: 'MO',
    ),
    company_name: 'Tillman - Wiegand',
    created_at: DateTime.iso8601('2019-10-12T11:27:59.003Z'),
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'velda.sporer@icloud.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
    ],
    first_name: 'Velda',
    id: '4f394125-3a10-49d2-86ac-967f4fd8d859',
    is_active: true,
    last_name: 'Sporer',
    link_urls: [
      'https://www.linkedin.com/in/velda-sporer',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '8de7aed9-1f23-4d85-ab19-063c66a9b199',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'vitiosus',
      ),
    ],
    name: 'Velda Sporer',
    source: 'Advertisement',
    status: 'New',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(841) 271-0595',
        type: Models::Shared::CrmTelephoneType::FAX,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(664) 498-4952',
        type: Models::Shared::CrmTelephoneType::HOME,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(281) 288-0037',
        type: Models::Shared::CrmTelephoneType::OTHER,
      ),
    ],
    title: 'International Factors Administrator',
    updated_at: DateTime.iso8601('2020-05-19T08:21:19.915Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.update_crm_lead(request: req)

unless res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::UpdateCrmLeadRequest](../../models/operations/updatecrmleadrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::UpdateCrmLeadResponse)](../../models/operations/updatecrmleadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_crm_pipeline

Updates the CrmPipeline identified by `id`. Provide the unified CrmPipeline fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmPipeline" method="put" path="/crm/{connection_id}/pipeline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCrmPipelineRequest.new(
  crm_pipeline: Models::Shared::CrmPipeline.new(
    created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
    deal_probability: 99.0,
    display_order: 8.0,
    id: 'aa707182-0835-47d1-9d13-2d35e0aae052',
    is_active: true,
    metadata: [],
    name: 'Small Steel Bacon',
    stages: [
      Models::Shared::CrmStage.new(
        active: false,
        created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
        deal_probability: 84.0,
        display_order: 72.0,
        id: '53be9558-beba-41d7-90ed-66f5d2104d0f',
        is_closed: true,
        name: 'Veniam.',
        updated_at: DateTime.iso8601('2025-10-22T22:47:25.787Z'),
      ),
    ],
    updated_at: DateTime.iso8601('2025-11-13T22:36:09.543Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.crm.update_crm_pipeline(request: req)

unless res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateCrmPipelineRequest](../../models/operations/updatecrmpipelinerequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateCrmPipelineResponse)](../../models/operations/updatecrmpipelineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |