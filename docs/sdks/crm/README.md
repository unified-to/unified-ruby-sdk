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
  id: '1e0095c8-303c-4e33-af03-5924093a4f9a',
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
      id: '577ad0b2-eca6-4e6e-a005-0dc1ee885ca7',
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
  updated_at: DateTime.iso8601('2025-02-06T12:31:07.287Z'),
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
  closed_at: DateTime.iso8601('2024-03-03T13:46:07.013Z'),
  closing_at: DateTime.iso8601('2025-08-09T21:44:29.595Z'),
  created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
  currency: 'IQD',
  description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
  id: '971abce9-768c-4862-821a-fd6a54ed79da',
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: '3a5f8d7c-d860-4f4c-90fa-1c632e332df4',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'conatus',
    ),
  ],
  name: 'Frozen Silk Chicken',
  pipelines: [
    Models::Shared::CrmReference.new(
      id: '7f80b0d8-af8e-4eda-9b6e-6b1ab87fc0a0',
      name: 'trans',
    ),
  ],
  probability: 65.0,
  source: 'cubo',
  stages: [
    Models::Shared::CrmReference.new(
      id: '15fdf250-99d4-475a-99b3-7e82a8b1b11d',
      name: 'tubineus',
    ),
    Models::Shared::CrmReference.new(
      id: '6db47fc1-c86e-41b9-a466-911fd8faf366',
      name: 'adfectus',
    ),
  ],
  tags: [
    'causa',
    'suus',
  ],
  updated_at: DateTime.iso8601('2024-09-29T03:10:23.974Z'),
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
    start_at: DateTime.iso8601('2024-11-17T19:33:31.806Z'),
  ),
  created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
  id: 'f688aa45-938a-4c44-8727-d2c8184ad18c',
  type: Models::Shared::CrmEventType::CALL,
  updated_at: DateTime.iso8601('2026-09-08T16:04:30.300Z'),
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
  id: '13d6dc8b-5185-4405-8203-d4541c1154e2',
  is_active: true,
  last_name: 'Sporer',
  link_urls: [
    'https://classic-sightseeing.com/',
  ],
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: '688a84cf-fe8e-4523-8059-3605b77700c0',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'sublime',
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
  updated_at: DateTime.iso8601('2020-05-15T02:08:28.082Z'),
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
  id: 'c2c01e88-79b5-464e-9b28-23b3e3522dbc',
  is_active: true,
  name: 'Small Steel Bacon',
  stages: [
    Models::Shared::CrmStage.new(
      active: false,
      created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
      deal_probability: 84.0,
      display_order: 72.0,
      id: '3d018fbd-9fb4-403d-bf4a-4bc3961fbcc6',
      is_closed: true,
      name: 'Veniam.',
      updated_at: DateTime.iso8601('2025-09-16T09:57:01.692Z'),
    ),
  ],
  updated_at: DateTime.iso8601('2025-10-07T15:01:45.555Z'),
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
    id: 'c6a3d196-e987-493b-b018-b604516c8f09',
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
        id: '3da39862-00b3-4763-8d44-9c5b7cee4fd6',
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
    updated_at: DateTime.iso8601('2025-02-06T12:31:07.301Z'),
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
    closed_at: DateTime.iso8601('2024-03-03T13:46:07.017Z'),
    closing_at: DateTime.iso8601('2025-08-09T21:44:29.609Z'),
    created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
    currency: 'IQD',
    description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
    id: '82f07a5c-a4f5-4a50-bae3-887b060ed6f4',
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '29c57399-d6a5-40d8-8912-ce1714027425',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'conatus',
      ),
    ],
    name: 'Frozen Silk Chicken',
    pipelines: [
      Models::Shared::CrmReference.new(
        id: 'f035fcf2-e4f7-499f-b52c-f98892f40d17',
        name: 'trans',
      ),
    ],
    probability: 65.0,
    source: 'cubo',
    stages: [
      Models::Shared::CrmReference.new(
        id: '3b8e2f9d-235a-4731-a99b-deab0b35ed19',
        name: 'tubineus',
      ),
      Models::Shared::CrmReference.new(
        id: '04ae0756-6eb6-4d4f-a5c3-09b4e433dc8b',
        name: 'adfectus',
      ),
    ],
    tags: [
      'causa',
      'suus',
    ],
    updated_at: DateTime.iso8601('2024-09-29T03:10:23.982Z'),
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
      start_at: DateTime.iso8601('2024-11-17T19:33:31.828Z'),
    ),
    created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
    id: '47048461-7922-42b9-80fa-1b599c629858',
    type: Models::Shared::CrmEventType::CALL,
    updated_at: DateTime.iso8601('2026-09-08T16:04:30.331Z'),
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
    id: '7d3b7db3-5987-46a6-a7d4-feae9f200286',
    is_active: true,
    last_name: 'Sporer',
    link_urls: [
      'https://classic-sightseeing.com/',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '252518d8-6eb7-4131-b4c6-05c7db635dc3',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'sublime',
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
    updated_at: DateTime.iso8601('2020-05-15T02:08:28.083Z'),
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
    id: 'a2807263-c08e-4fa7-a5f5-d374f99f60f4',
    is_active: true,
    name: 'Small Steel Bacon',
    stages: [
      Models::Shared::CrmStage.new(
        active: false,
        created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
        deal_probability: 84.0,
        display_order: 72.0,
        id: 'c618bb9b-ac3b-4768-8d2c-02366a8825e9',
        is_closed: true,
        name: 'Veniam.',
        updated_at: DateTime.iso8601('2025-09-16T09:57:01.697Z'),
      ),
    ],
    updated_at: DateTime.iso8601('2025-10-07T15:01:45.561Z'),
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
    id: 'c6a3d196-e987-493b-b018-b604516c8f09',
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
        id: '3da39862-00b3-4763-8d44-9c5b7cee4fd6',
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
    updated_at: DateTime.iso8601('2025-02-06T12:31:07.301Z'),
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
    closed_at: DateTime.iso8601('2024-03-03T13:46:07.017Z'),
    closing_at: DateTime.iso8601('2025-08-09T21:44:29.609Z'),
    created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
    currency: 'IQD',
    description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
    id: '82f07a5c-a4f5-4a50-bae3-887b060ed6f4',
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '29c57399-d6a5-40d8-8912-ce1714027425',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'conatus',
      ),
    ],
    name: 'Frozen Silk Chicken',
    pipelines: [
      Models::Shared::CrmReference.new(
        id: 'f035fcf2-e4f7-499f-b52c-f98892f40d17',
        name: 'trans',
      ),
    ],
    probability: 65.0,
    source: 'cubo',
    stages: [
      Models::Shared::CrmReference.new(
        id: '3b8e2f9d-235a-4731-a99b-deab0b35ed19',
        name: 'tubineus',
      ),
      Models::Shared::CrmReference.new(
        id: '04ae0756-6eb6-4d4f-a5c3-09b4e433dc8b',
        name: 'adfectus',
      ),
    ],
    tags: [
      'causa',
      'suus',
    ],
    updated_at: DateTime.iso8601('2024-09-29T03:10:23.982Z'),
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
      start_at: DateTime.iso8601('2024-11-17T19:33:31.828Z'),
    ),
    created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
    id: '47048461-7922-42b9-80fa-1b599c629858',
    type: Models::Shared::CrmEventType::CALL,
    updated_at: DateTime.iso8601('2026-09-08T16:04:30.331Z'),
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
    id: '7d3b7db3-5987-46a6-a7d4-feae9f200286',
    is_active: true,
    last_name: 'Sporer',
    link_urls: [
      'https://classic-sightseeing.com/',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '252518d8-6eb7-4131-b4c6-05c7db635dc3',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'sublime',
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
    updated_at: DateTime.iso8601('2020-05-15T02:08:28.083Z'),
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
    id: 'a2807263-c08e-4fa7-a5f5-d374f99f60f4',
    is_active: true,
    name: 'Small Steel Bacon',
    stages: [
      Models::Shared::CrmStage.new(
        active: false,
        created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
        deal_probability: 84.0,
        display_order: 72.0,
        id: 'c618bb9b-ac3b-4768-8d2c-02366a8825e9',
        is_closed: true,
        name: 'Veniam.',
        updated_at: DateTime.iso8601('2025-09-16T09:57:01.697Z'),
      ),
    ],
    updated_at: DateTime.iso8601('2025-10-07T15:01:45.561Z'),
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