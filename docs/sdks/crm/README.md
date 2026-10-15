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

res = s.crm.create_crm_company(crm_company: Models::Shared::CrmCompany.new(
  address: Models::Shared::PropertyCrmCompanyAddress.new(
    address1: '7261 Salisbury Road',
    address2: 'Apt. 778',
    city: 'Harrisburg',
    country_code: 'US',
    postal_code: '56293-3678',
    region: 'Pennsylvania',
    region_code: 'ID',
  ),
  created_at: DateTime.iso8601('2020-05-11T18:26:32.925Z'),
  description: 'Balbus crapula spiculum.',
  domains: [
    'fussy-nerve.info',
    'sturdy-lobster.org',
    'greedy-offset.name',
  ],
  emails: [
    Models::Shared::CrmEmail.new(
      email: 'Sandrine_Jacobi@hotmail.com',
      type: Models::Shared::CrmEmailType::WORK,
    ),
    Models::Shared::CrmEmail.new(
      email: 'Sandrine_Jacobi@gmail.com',
      type: Models::Shared::CrmEmailType::WORK,
    ),
    Models::Shared::CrmEmail.new(
      email: 'Sandrine.Jacobi@yahoo.com',
      type: Models::Shared::CrmEmailType::OTHER,
    ),
  ],
  employees: 967.0,
  id: '5ceabe93-95b2-4b69-bfc6-211b4a2d2ff6',
  industry: 'Infrastructure',
  is_active: true,
  link_urls: [
    'https://blue-license.org',
    'https://minor-formation.com',
    'https://ecstatic-hammock.com',
  ],
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: 'b6dfb696-27ff-4ae6-aba5-1ffea40807da',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'esse',
    ),
  ],
  name: 'Goodwin and Sons',
  tags: [
    'quaerat',
    'valeo',
  ],
  telephones: [
    Models::Shared::CrmTelephone.new(
      telephone: '(432) 849-2690',
      type: Models::Shared::CrmTelephoneType::MOBILE,
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(606) 871-2046',
      type: Models::Shared::CrmTelephoneType::OTHER,
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(842) 258-9395',
      type: Models::Shared::CrmTelephoneType::MOBILE,
    ),
  ],
  timezone: 'Europe/San_Marino',
  updated_at: DateTime.iso8601('2025-02-26T13:24:34.299Z'),
  websites: [
    'https://wise-possession.org',
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

res = s.crm.create_crm_contact(crm_contact: Models::Shared::CrmContact.new(
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
  id: '8a725407-022e-4a0c-838a-1d0085fec364',
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
      id: 'f5594be0-3b42-41db-a298-da7b06071498',
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
  updated_at: DateTime.iso8601('2021-02-24T01:23:49.209Z'),
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

Create a deal

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
  closed_at: DateTime.iso8601('2024-03-09T03:26:29.032Z'),
  closing_at: DateTime.iso8601('2025-08-27T11:47:56.328Z'),
  created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
  currency: 'IQD',
  description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
  id: 'd0e6516d-e740-441a-b1e5-62a96d556b06',
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: 'cc17c3d9-b5a8-444d-be9e-41a7362d5195',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'conatus',
    ),
  ],
  name: 'Frozen Silk Chicken',
  pipelines: [
    Models::Shared::CrmReference.new(
      id: '09957c61-6e0f-4000-838a-eb3a5a49375b',
      name: 'trans',
    ),
  ],
  probability: 65.0,
  source: 'cubo',
  stages: [
    Models::Shared::CrmReference.new(
      id: '8c78d1be-b2b6-4381-b746-38645559cdee',
      name: 'tubineus',
    ),
    Models::Shared::CrmReference.new(
      id: '2f1b134f-896b-40e7-bb26-61fc53d73e4a',
      name: 'adfectus',
    ),
  ],
  tags: [
    'causa',
    'suus',
  ],
  updated_at: DateTime.iso8601('2024-10-09T12:06:14.658Z'),
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

Create an event

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
    start_at: DateTime.iso8601('2024-12-06T16:48:54.089Z'),
  ),
  created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
  id: '73112da2-38c8-4ef4-92fa-335c51c0d81b',
  type: Models::Shared::CrmEventType::CALL,
  updated_at: DateTime.iso8601('2026-10-05T09:43:01.202Z'),
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

Create a lead

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
    address1: '528 Forest Road',
    address2: 'Apt. 643',
    city: 'Palm Springs',
    country_code: 'US',
    postal_code: '55624-6499',
    region: 'New Jersey',
    region_code: 'LA',
  ),
  company_name: 'Tillman - Wiegand',
  created_at: DateTime.iso8601('2019-10-12T11:27:59.003Z'),
  emails: [
    Models::Shared::CrmEmail.new(
      email: 'Velda.Sporer16@yahoo.com',
      type: Models::Shared::CrmEmailType::OTHER,
    ),
    Models::Shared::CrmEmail.new(
      email: 'Velda.Sporer@yahoo.com',
      type: Models::Shared::CrmEmailType::HOME,
    ),
  ],
  first_name: 'Velda',
  id: 'f3cea397-3241-4f03-ba9a-f876a804d4ee',
  is_active: true,
  last_name: 'Sporer',
  link_urls: [
    'https://ruddy-unblinking.info/',
  ],
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: '61fed54e-6d33-4fa8-b1a0-9e8970e5ce4a',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'vitiosus',
    ),
  ],
  name: 'Velda Sporer',
  source: 'aetas',
  status: 'vesco',
  telephones: [
    Models::Shared::CrmTelephone.new(
      telephone: '(955) 643-9849',
      type: Models::Shared::CrmTelephoneType::OTHER,
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(621) 811-8800',
      type: Models::Shared::CrmTelephoneType::WORK,
    ),
  ],
  title: 'Direct Research Assistant',
  updated_at: DateTime.iso8601('2020-05-17T08:59:43.296Z'),
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

Create a pipeline

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
  id: '1f0c910b-e465-4c0b-be0f-b97f3bc45b81',
  is_active: true,
  name: 'Small Steel Bacon',
  stages: [
    Models::Shared::CrmStage.new(
      active: false,
      created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
      deal_probability: 84.0,
      display_order: 72.0,
      id: '7a75bc87-0d91-463d-96d1-4b9c77fba9ce',
      is_closed: true,
      name: 'Veniam.',
      updated_at: DateTime.iso8601('2025-10-06T00:30:50.886Z'),
    ),
  ],
  updated_at: DateTime.iso8601('2025-10-27T15:38:46.943Z'),
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

Retrieve a deal

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

Retrieve an event

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

Retrieve a lead

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

Retrieve a pipeline

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

List all deals

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

List all events

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

List all leads

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

List all pipelines

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

List all taxonomies

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
      address1: '7261 Salisbury Road',
      address2: 'Apt. 778',
      city: 'Harrisburg',
      country_code: 'US',
      postal_code: '56293-3678',
      region: 'Pennsylvania',
      region_code: 'ID',
    ),
    created_at: DateTime.iso8601('2020-05-11T18:26:32.925Z'),
    description: 'Balbus crapula spiculum.',
    domains: [
      'fussy-nerve.info',
      'sturdy-lobster.org',
      'greedy-offset.name',
    ],
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'Sandrine_Jacobi@hotmail.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
      Models::Shared::CrmEmail.new(
        email: 'Sandrine_Jacobi@gmail.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
      Models::Shared::CrmEmail.new(
        email: 'Sandrine.Jacobi@yahoo.com',
        type: Models::Shared::CrmEmailType::OTHER,
      ),
    ],
    employees: 967.0,
    id: '5f651b7d-59f5-4e1f-bcc1-41ca4ba8a091',
    industry: 'Infrastructure',
    is_active: true,
    link_urls: [
      'https://blue-license.org',
      'https://minor-formation.com',
      'https://ecstatic-hammock.com',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'f8f4fde0-a8dc-485e-aa35-99c5f6db4327',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'esse',
      ),
    ],
    name: 'Goodwin and Sons',
    tags: [
      'quaerat',
      'valeo',
    ],
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(432) 849-2690',
        type: Models::Shared::CrmTelephoneType::MOBILE,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(606) 871-2046',
        type: Models::Shared::CrmTelephoneType::OTHER,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(842) 258-9395',
        type: Models::Shared::CrmTelephoneType::MOBILE,
      ),
    ],
    timezone: 'Europe/San_Marino',
    updated_at: DateTime.iso8601('2025-02-26T13:24:34.317Z'),
    websites: [
      'https://wise-possession.org',
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
    id: 'c7b3fc82-d1c6-4392-888b-3647aafd471b',
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
        id: '6381910c-056c-4608-8641-cc5dbb7cd701',
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
    updated_at: DateTime.iso8601('2021-02-24T01:23:49.209Z'),
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

Update a deal

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
    closed_at: DateTime.iso8601('2024-03-09T03:26:29.038Z'),
    closing_at: DateTime.iso8601('2025-08-27T11:47:56.345Z'),
    created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
    currency: 'IQD',
    description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
    id: '77009c68-cf6b-4227-b116-f39cdc0d498a',
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '8682af17-412c-45bb-b8fe-45a14d52107b',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'conatus',
      ),
    ],
    name: 'Frozen Silk Chicken',
    pipelines: [
      Models::Shared::CrmReference.new(
        id: '1de4cd8b-19c2-46ad-937a-1d5a2a07b86b',
        name: 'trans',
      ),
    ],
    probability: 65.0,
    source: 'cubo',
    stages: [
      Models::Shared::CrmReference.new(
        id: '188a6876-8279-4b7b-acf8-f90bc23fdfb9',
        name: 'tubineus',
      ),
      Models::Shared::CrmReference.new(
        id: '755353c7-397c-4dea-befe-4346d2962de7',
        name: 'adfectus',
      ),
    ],
    tags: [
      'causa',
      'suus',
    ],
    updated_at: DateTime.iso8601('2024-10-09T12:06:14.668Z'),
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

Update an event

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
      start_at: DateTime.iso8601('2024-12-06T16:48:54.113Z'),
    ),
    created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
    id: '68d06645-c771-4a7b-ad20-060fb07b920c',
    type: Models::Shared::CrmEventType::CALL,
    updated_at: DateTime.iso8601('2026-10-05T09:43:01.237Z'),
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

Update a lead

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
      address1: '528 Forest Road',
      address2: 'Apt. 643',
      city: 'Palm Springs',
      country_code: 'US',
      postal_code: '55624-6499',
      region: 'New Jersey',
      region_code: 'LA',
    ),
    company_name: 'Tillman - Wiegand',
    created_at: DateTime.iso8601('2019-10-12T11:27:59.003Z'),
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'Velda.Sporer16@yahoo.com',
        type: Models::Shared::CrmEmailType::OTHER,
      ),
      Models::Shared::CrmEmail.new(
        email: 'Velda.Sporer@yahoo.com',
        type: Models::Shared::CrmEmailType::HOME,
      ),
    ],
    first_name: 'Velda',
    id: '1a6e7fc9-d246-431c-bf54-f591824b558d',
    is_active: true,
    last_name: 'Sporer',
    link_urls: [
      'https://ruddy-unblinking.info/',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'ab978624-2965-4238-9931-a02c375f83a1',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'vitiosus',
      ),
    ],
    name: 'Velda Sporer',
    source: 'aetas',
    status: 'vesco',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(955) 643-9849',
        type: Models::Shared::CrmTelephoneType::OTHER,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(621) 811-8800',
        type: Models::Shared::CrmTelephoneType::WORK,
      ),
    ],
    title: 'Direct Research Assistant',
    updated_at: DateTime.iso8601('2020-05-17T08:59:43.299Z'),
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

Update a pipeline

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
    id: 'fe227a38-348e-4cb2-a9b1-c2d5537739f8',
    is_active: true,
    name: 'Small Steel Bacon',
    stages: [
      Models::Shared::CrmStage.new(
        active: false,
        created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
        deal_probability: 84.0,
        display_order: 72.0,
        id: 'd590ef3f-6c4c-4da8-b985-c5ea39890bae',
        is_closed: true,
        name: 'Veniam.',
        updated_at: DateTime.iso8601('2025-10-06T00:30:50.894Z'),
      ),
    ],
    updated_at: DateTime.iso8601('2025-10-27T15:38:46.951Z'),
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

Remove a deal

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

Remove an event

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

Remove a lead

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

Remove a pipeline

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
      address1: '7261 Salisbury Road',
      address2: 'Apt. 778',
      city: 'Harrisburg',
      country_code: 'US',
      postal_code: '56293-3678',
      region: 'Pennsylvania',
      region_code: 'ID',
    ),
    created_at: DateTime.iso8601('2020-05-11T18:26:32.925Z'),
    description: 'Balbus crapula spiculum.',
    domains: [
      'fussy-nerve.info',
      'sturdy-lobster.org',
      'greedy-offset.name',
    ],
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'Sandrine_Jacobi@hotmail.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
      Models::Shared::CrmEmail.new(
        email: 'Sandrine_Jacobi@gmail.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
      Models::Shared::CrmEmail.new(
        email: 'Sandrine.Jacobi@yahoo.com',
        type: Models::Shared::CrmEmailType::OTHER,
      ),
    ],
    employees: 967.0,
    id: '5f651b7d-59f5-4e1f-bcc1-41ca4ba8a091',
    industry: 'Infrastructure',
    is_active: true,
    link_urls: [
      'https://blue-license.org',
      'https://minor-formation.com',
      'https://ecstatic-hammock.com',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'f8f4fde0-a8dc-485e-aa35-99c5f6db4327',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'esse',
      ),
    ],
    name: 'Goodwin and Sons',
    tags: [
      'quaerat',
      'valeo',
    ],
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(432) 849-2690',
        type: Models::Shared::CrmTelephoneType::MOBILE,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(606) 871-2046',
        type: Models::Shared::CrmTelephoneType::OTHER,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(842) 258-9395',
        type: Models::Shared::CrmTelephoneType::MOBILE,
      ),
    ],
    timezone: 'Europe/San_Marino',
    updated_at: DateTime.iso8601('2025-02-26T13:24:34.317Z'),
    websites: [
      'https://wise-possession.org',
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
    id: 'c7b3fc82-d1c6-4392-888b-3647aafd471b',
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
        id: '6381910c-056c-4608-8641-cc5dbb7cd701',
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
    updated_at: DateTime.iso8601('2021-02-24T01:23:49.209Z'),
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

Update a deal

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
    closed_at: DateTime.iso8601('2024-03-09T03:26:29.038Z'),
    closing_at: DateTime.iso8601('2025-08-27T11:47:56.345Z'),
    created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
    currency: 'IQD',
    description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
    id: '77009c68-cf6b-4227-b116-f39cdc0d498a',
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '8682af17-412c-45bb-b8fe-45a14d52107b',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'conatus',
      ),
    ],
    name: 'Frozen Silk Chicken',
    pipelines: [
      Models::Shared::CrmReference.new(
        id: '1de4cd8b-19c2-46ad-937a-1d5a2a07b86b',
        name: 'trans',
      ),
    ],
    probability: 65.0,
    source: 'cubo',
    stages: [
      Models::Shared::CrmReference.new(
        id: '188a6876-8279-4b7b-acf8-f90bc23fdfb9',
        name: 'tubineus',
      ),
      Models::Shared::CrmReference.new(
        id: '755353c7-397c-4dea-befe-4346d2962de7',
        name: 'adfectus',
      ),
    ],
    tags: [
      'causa',
      'suus',
    ],
    updated_at: DateTime.iso8601('2024-10-09T12:06:14.668Z'),
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

Update an event

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
      start_at: DateTime.iso8601('2024-12-06T16:48:54.113Z'),
    ),
    created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
    id: '68d06645-c771-4a7b-ad20-060fb07b920c',
    type: Models::Shared::CrmEventType::CALL,
    updated_at: DateTime.iso8601('2026-10-05T09:43:01.237Z'),
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

Update a lead

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
      address1: '528 Forest Road',
      address2: 'Apt. 643',
      city: 'Palm Springs',
      country_code: 'US',
      postal_code: '55624-6499',
      region: 'New Jersey',
      region_code: 'LA',
    ),
    company_name: 'Tillman - Wiegand',
    created_at: DateTime.iso8601('2019-10-12T11:27:59.003Z'),
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'Velda.Sporer16@yahoo.com',
        type: Models::Shared::CrmEmailType::OTHER,
      ),
      Models::Shared::CrmEmail.new(
        email: 'Velda.Sporer@yahoo.com',
        type: Models::Shared::CrmEmailType::HOME,
      ),
    ],
    first_name: 'Velda',
    id: '1a6e7fc9-d246-431c-bf54-f591824b558d',
    is_active: true,
    last_name: 'Sporer',
    link_urls: [
      'https://ruddy-unblinking.info/',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'ab978624-2965-4238-9931-a02c375f83a1',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'vitiosus',
      ),
    ],
    name: 'Velda Sporer',
    source: 'aetas',
    status: 'vesco',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(955) 643-9849',
        type: Models::Shared::CrmTelephoneType::OTHER,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(621) 811-8800',
        type: Models::Shared::CrmTelephoneType::WORK,
      ),
    ],
    title: 'Direct Research Assistant',
    updated_at: DateTime.iso8601('2020-05-17T08:59:43.299Z'),
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

Update a pipeline

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
    id: 'fe227a38-348e-4cb2-a9b1-c2d5537739f8',
    is_active: true,
    name: 'Small Steel Bacon',
    stages: [
      Models::Shared::CrmStage.new(
        active: false,
        created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
        deal_probability: 84.0,
        display_order: 72.0,
        id: 'd590ef3f-6c4c-4da8-b985-c5ea39890bae',
        is_closed: true,
        name: 'Veniam.',
        updated_at: DateTime.iso8601('2025-10-06T00:30:50.894Z'),
      ),
    ],
    updated_at: DateTime.iso8601('2025-10-27T15:38:46.951Z'),
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