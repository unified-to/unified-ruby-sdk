# Ats
(*ats*)

## Overview

### Available Operations

* [create_ats_activity](#create_ats_activity) - Create an activity
* [create_ats_application](#create_ats_application) - Create an application
* [create_ats_candidate](#create_ats_candidate) - Create a candidate
* [create_ats_company](#create_ats_company) - Create a company
* [create_ats_document](#create_ats_document) - Create a document
* [create_ats_interview](#create_ats_interview) - Create an interview
* [create_ats_job](#create_ats_job) - Create a job
* [create_ats_scorecard](#create_ats_scorecard) - Create a scorecard
* [get_ats_activity](#get_ats_activity) - Retrieve an activity
* [get_ats_application](#get_ats_application) - Retrieve an application
* [get_ats_applicationstatus](#get_ats_applicationstatus) - Retrieve an applicationstatus
* [get_ats_candidate](#get_ats_candidate) - Retrieve a candidate
* [get_ats_company](#get_ats_company) - Retrieve a company
* [get_ats_document](#get_ats_document) - Retrieve a document
* [get_ats_interview](#get_ats_interview) - Retrieve an interview
* [get_ats_job](#get_ats_job) - Retrieve a job
* [get_ats_scorecard](#get_ats_scorecard) - Retrieve a scorecard
* [list_ats_activities](#list_ats_activities) - List all activities
* [list_ats_applications](#list_ats_applications) - List all applications
* [list_ats_applicationstatuses](#list_ats_applicationstatuses) - List all applicationstatuses
* [list_ats_candidates](#list_ats_candidates) - List all candidates
* [list_ats_companies](#list_ats_companies) - List all companies
* [list_ats_documents](#list_ats_documents) - List all documents
* [list_ats_interviews](#list_ats_interviews) - List all interviews
* [list_ats_jobs](#list_ats_jobs) - List all jobs
* [list_ats_scorecards](#list_ats_scorecards) - List all scorecards
* [patch_ats_activity](#patch_ats_activity) - Update an activity
* [patch_ats_application](#patch_ats_application) - Update an application
* [patch_ats_candidate](#patch_ats_candidate) - Update a candidate
* [patch_ats_company](#patch_ats_company) - Update a company
* [patch_ats_document](#patch_ats_document) - Update a document
* [patch_ats_interview](#patch_ats_interview) - Update an interview
* [patch_ats_job](#patch_ats_job) - Update a job
* [patch_ats_scorecard](#patch_ats_scorecard) - Update a scorecard
* [remove_ats_activity](#remove_ats_activity) - Remove an activity
* [remove_ats_application](#remove_ats_application) - Remove an application
* [remove_ats_candidate](#remove_ats_candidate) - Remove a candidate
* [remove_ats_company](#remove_ats_company) - Remove a company
* [remove_ats_document](#remove_ats_document) - Remove a document
* [remove_ats_interview](#remove_ats_interview) - Remove an interview
* [remove_ats_job](#remove_ats_job) - Remove a job
* [remove_ats_scorecard](#remove_ats_scorecard) - Remove a scorecard
* [update_ats_activity](#update_ats_activity) - Update an activity
* [update_ats_application](#update_ats_application) - Update an application
* [update_ats_candidate](#update_ats_candidate) - Update a candidate
* [update_ats_company](#update_ats_company) - Update a company
* [update_ats_document](#update_ats_document) - Update a document
* [update_ats_interview](#update_ats_interview) - Update an interview
* [update_ats_job](#update_ats_job) - Update a job
* [update_ats_scorecard](#update_ats_scorecard) - Update a scorecard

## create_ats_activity

Create an activity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsActivity" method="post" path="/ats/{connection_id}/activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.create_ats_activity(ats_activity: Models::Shared::AtsActivity.new(
  bcc: [
    Models::Shared::AtsEmail.new(
      email: 'Mabel_Schuppe-Schowalter42@hotmail.com',
      name: 'Rochelle Franey-Bechtelar',
      type: Models::Shared::AtsEmailType::HOME,
    ),
  ],
  cc: [
    Models::Shared::AtsEmail.new(
      email: 'Sasha24@hotmail.com',
      name: 'Dr. Elbert Kuvalis',
      type: Models::Shared::AtsEmailType::HOME,
    ),
    Models::Shared::AtsEmail.new(
      email: 'Rosetta_Donnelly@gmail.com',
      name: 'Ramon Daniel',
      type: Models::Shared::AtsEmailType::OTHER,
    ),
    Models::Shared::AtsEmail.new(
      email: 'Kathryne_Jast@yahoo.com',
      name: 'Christian Jacobson',
      type: Models::Shared::AtsEmailType::OTHER,
    ),
    Models::Shared::AtsEmail.new(
      email: 'Eldred95@yahoo.com',
      name: 'Edna Bogan',
      type: Models::Shared::AtsEmailType::OTHER,
    ),
  ],
  created_at: DateTime.iso8601('2022-08-07T03:16:43.865Z'),
  description: 'Amplus.',
  from: Models::Shared::PropertyAtsActivityFrom.new(
    email: 'Norwood.Wiza47@yahoo.com',
    name: 'Toby Grant',
    type: Models::Shared::PropertyAtsActivityFromType::OTHER,
  ),
  id: '0b4fffdf-9506-4b24-a4f0-5efa0127401d',
  is_private: false,
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: '8794b3a3-5894-408d-a280-90f33c1e01a2',
      namespace: 'activity',
      slug: 'acer',
      value: 'Pauci eius cena adamo summisse arguo pectus communis arcesso tergeo.',
    ),
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: '4f91c4bd-b656-4bbe-9e56-cbe8a77ebbf8',
      namespace: 'activity',
      slug: 'tremo',
      value: 'Amita delectus dicta temptatio utroque ex.',
    ),
  ],
  sub_type: 'TASK',
  title: 'Senior Interactions Manager',
  to: [
    Models::Shared::AtsEmail.new(
      email: 'Sister91@hotmail.com',
      name: 'Eddie Nienow PhD',
      type: Models::Shared::AtsEmailType::WORK,
    ),
  ],
  type: Models::Shared::AtsActivityType::TASK,
  updated_at: DateTime.iso8601('2026-03-30T19:32:24.307Z'),
), connection_id: '<id>')

unless res.ats_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ats_activity`                                                                                                                                   | [Models::Shared::AtsActivity](../../models/shared/atsactivity.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAtsActivityQueryParamFields](../../models/operations/createatsactivityqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAtsActivityResponse)](../../models/operations/createatsactivityresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_ats_application

Create an application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsApplication" method="post" path="/ats/{connection_id}/application" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.create_ats_application(ats_application: Models::Shared::AtsApplication.new(
  answers: [],
  applied_at: DateTime.iso8601('2025-09-26T10:49:30.301Z'),
  created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
  hired_at: DateTime.iso8601('2026-05-08T09:27:07.678Z'),
  id: '0cb1b516-b260-4d2a-b303-3e95654071cf',
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: 'a1302a79-0341-40e6-b91a-daeb95584617',
      namespace: 'application',
      slug: 'despecto',
      value: 'Argentum decretum cultellus aveho distinctio verecundia stella depono.',
    ),
  ],
  offers: [],
  original_status: 'vomica',
  original_substatus: 'allatus',
  rejected_at: DateTime.iso8601('2026-10-06T11:04:11.510Z'),
  rejected_reason: 'Cometes amplitudo videlicet talio.',
  source: 'credo',
  status: Models::Shared::AtsApplicationStatus::REVIEWING,
  summary: 'Comburo quidem vesica vulnus curatio. Appositus amita attonbitus conatus degenero charisma sordeo villa victoria varius. Cenaculum acsi officia.',
  updated_at: DateTime.iso8601('2026-10-13T06:32:29.962Z'),
), connection_id: '<id>')

unless res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ats_application`                                                                                                                                | [Models::Shared::AtsApplication](../../models/shared/atsapplication.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAtsApplicationQueryParamFields](../../models/operations/createatsapplicationqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAtsApplicationResponse)](../../models/operations/createatsapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_ats_candidate

Create a candidate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsCandidate" method="post" path="/ats/{connection_id}/candidate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.create_ats_candidate(ats_candidate: Models::Shared::AtsCandidate.new(
  address: Models::Shared::PropertyAtsCandidateAddress.new(
    address1: '802 Roberts Squares',
    address2: 'Suite 550',
    city: 'Lake Raeganside',
    country_code: 'US',
    postal_code: '44530-0054',
    region: 'Tennessee',
    region_code: 'NV',
  ),
  company_name: 'Ferry, Legros and Feest',
  created_at: DateTime.iso8601('2023-10-16T05:42:56.049Z'),
  education: [
    Models::Shared::AtsCandidateEducation.new(
      degree: 'mouser throughout',
      end_at: DateTime.iso8601('1992-11-28T20:23:20.311Z'),
      field_of_study: 'solutio',
      institution: 'Heller - Lubowitz',
      level: 'phd',
      start_at: DateTime.iso8601('2001-03-26T08:12:11.510Z'),
    ),
  ],
  emails: [
    Models::Shared::AtsEmail.new(
      email: 'Ardith.Beatty@hotmail.com',
      name: 'Opal Lindgren',
      type: Models::Shared::AtsEmailType::WORK,
    ),
    Models::Shared::AtsEmail.new(
      email: 'Ardith_Beatty@gmail.com',
      name: 'Kristi Nader',
      type: Models::Shared::AtsEmailType::OTHER,
    ),
  ],
  experiences: [
    Models::Shared::AtsCandidateExperience.new(
      company_name: 'Donnelly, Buckridge and Steuber',
      end_at: DateTime.iso8601('1978-06-20T02:53:48.383Z'),
      start_at: DateTime.iso8601('1980-02-06T17:16:53.798Z'),
      title: 'Principal Brand Strategist',
    ),
  ],
  first_name: 'Ardith',
  id: 'ccfdcec6-0b5d-4615-8c69-21eef4673622',
  image_url: 'https://loremflickr.com/40/3693?lock=5634712403880328',
  job_ids: [],
  last_name: 'Beatty',
  link_urls: [
    'https://sizzling-legislature.com',
    'https://soupy-interchange.net',
    'https://troubled-substitution.info',
  ],
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: 'ab0f4135-5393-4537-8672-aa218f8341f9',
      namespace: 'custom',
      slug: 'custom_field',
      value: 'cariosus',
    ),
  ],
  name: 'Ardith Beatty',
  origin: Models::Shared::Origin::SOURCED,
  skills: [
    'vita',
    'cohors',
  ],
  sources: [
    'tactus',
  ],
  summary: 'Denego barba rerum similique via templum totam suus voluptatem. Depraedor virgo cui comminor commodi curvo. Chirographum pax spero nostrum damnatio averto pecus cervus aspicio absens.',
  tags: [
    'aliquid',
  ],
  telephones: [
    Models::Shared::AtsTelephone.new(
      telephone: '(779) 296-5994',
      type: Models::Shared::AtsTelephoneType::HOME,
    ),
  ],
  title: 'Principal Implementation Analyst',
  updated_at: DateTime.iso8601('2024-04-27T19:55:39.791Z'),
  web_url: 'https://expert-lender.name/',
), connection_id: '<id>')

unless res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ats_candidate`                                                                                                                                  | [Models::Shared::AtsCandidate](../../models/shared/atscandidate.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAtsCandidateQueryParamFields](../../models/operations/createatscandidatequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAtsCandidateResponse)](../../models/operations/createatscandidateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.ats.create_ats_company(ats_company: Models::Shared::AtsCompany.new(
  created_at: DateTime.iso8601('2019-04-22T03:50:02.920Z'),
  id: '306d6690-f706-4b2d-b0ec-eedeeb9e95cf',
  name: 'Gulgowski, Dibbert and Wilderman',
  phone: '1-602-210-4548',
  updated_at: DateTime.iso8601('2020-09-30T04:28:23.807Z'),
  website_url: 'https://somber-substitution.com/',
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

## create_ats_document

Create a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsDocument" method="post" path="/ats/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.create_ats_document(ats_document: Models::Shared::AtsDocument.new(
  created_at: DateTime.iso8601('2021-08-20T08:00:27.437Z'),
  document_url: 'https://vengeful-lashes.biz',
  filename: 'bah_white_frantically.bz',
  id: '44865a5d-a706-4ced-b769-dfa6bfe67284',
  type: Models::Shared::AtsDocumentType::RESUME,
  updated_at: DateTime.iso8601('2022-12-05T22:05:40.028Z'),
), connection_id: '<id>')

unless res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ats_document`                                                                                                                                   | [Models::Shared::AtsDocument](../../models/shared/atsdocument.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAtsDocumentQueryParamFields](../../models/operations/createatsdocumentqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAtsDocumentResponse)](../../models/operations/createatsdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_ats_interview

Create an interview

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsInterview" method="post" path="/ats/{connection_id}/interview" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.create_ats_interview(ats_interview: Models::Shared::AtsInterview.new(
  created_at: DateTime.iso8601('2021-11-28T03:14:47.774Z'),
  end_at: DateTime.iso8601('2025-10-15T12:09:56.376Z'),
  external_event_xref: '7e58a7e2-8977-4bdd-9883-41b05807670f',
  id: '3b6c0045-1ffc-4c1f-bc18-83486ddc6304',
  location: '26596 Halle Trafficway',
  start_at: DateTime.iso8601('2025-06-08T09:51:20.841Z'),
  status: Models::Shared::AtsInterviewStatus::SCHEDULED,
  updated_at: DateTime.iso8601('2026-02-28T07:26:58.250Z'),
), connection_id: '<id>')

unless res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ats_interview`                                                                                                                                  | [Models::Shared::AtsInterview](../../models/shared/atsinterview.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAtsInterviewQueryParamFields](../../models/operations/createatsinterviewqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAtsInterviewResponse)](../../models/operations/createatsinterviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_ats_job

Create a job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsJob" method="post" path="/ats/{connection_id}/job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.create_ats_job(ats_job: Models::Shared::AtsJob.new(
  addresses: [
    Models::Shared::AtsAddress.new(
      address1: '98097 Carlo Trail',
      city: 'South Judd',
      country_code: 'US',
      postal_code: '89776-0669',
      region: 'Mississippi',
      region_code: 'FL',
    ),
  ],
  compensation: [
    Models::Shared::AtsCompensation.new(
      currency: 'AUD',
      frequency: Models::Shared::Frequency::DAY,
      max: 174_303.0,
      min: 174_042.0,
      type: Models::Shared::AtsCompensationType::BONUS,
    ),
    Models::Shared::AtsCompensation.new(
      currency: 'MZN',
      frequency: Models::Shared::Frequency::MONTH,
      max: 171_171.0,
      min: 151_975.0,
      type: Models::Shared::AtsCompensationType::SALARY,
    ),
  ],
  created_at: DateTime.iso8601('2023-06-16T12:51:44.518Z'),
  description: 'Global',
  employment_type: Models::Shared::EmploymentType::FREELANCE,
  hiring_managers: [
    Models::Shared::AtsReference.new(
      id: 'eb3bbf4e-4022-4122-9d44-39fd5b501e80',
      name: 'Troy Greenholt',
    ),
  ],
  id: '049a2e18-96dd-45bb-800a-79fbd4ad4ab3',
  industry: 'Modern Granite Gloves',
  language_locale: 'en',
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: '34419f15-a491-4e96-9bbd-25c7378be32d',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'vomica',
    ),
  ],
  minimum_degree: 'Bachelor',
  minimum_experience_years: 3.0,
  name: 'Forward Brand Producer',
  number_of_openings: 1.0,
  openings: [
    Models::Shared::AtsJobOpening.new(
      close_reason: 'Admoveo trado textilis.',
      opened_at: DateTime.iso8601('2026-06-03T07:58:04.653Z'),
      status: Models::Shared::AtsJobOpeningStatus::OPEN,
    ),
  ],
  postings: [
    Models::Shared::AtsJobPosting.new(
      address: Models::Shared::PropertyAtsJobPostingAddress.new(
        address1: '51372 Kshlerin Creek',
        city: 'Logancester',
        country_code: 'US',
        postal_code: '85013-9865',
        region: 'Vermont',
        region_code: 'MO',
      ),
      created_at: DateTime.iso8601('2026-07-28T05:26:18.018Z'),
      description: 'Provident turbo cunabula spoliatio agnitio.',
      id: '372178cd-2056-4388-870e-e7c199761c7c',
      is_active: false,
      location: '2925 Connie Green',
      name: 'Lead Intranet Developer',
      posting_url: 'https://smart-summer.name/',
      updated_at: DateTime.iso8601('2026-08-23T10:10:20.154Z'),
    ),
  ],
  public_job_urls: [
    'https://trustworthy-elver.info',
    'https://parched-dash.info',
  ],
  questions: [
    Models::Shared::AtsJobQuestion.new(
      description: 'Trepide provident taceo rem.',
      id: '289f27c0-311c-41e5-ad9d-cbe2097332c2',
      max_length: 387.0,
      min_length: 1.0,
      options: [
        'censura',
        'tum',
      ],
      prompt: 'Spectaculum mollitia arcus compello.',
      question: 'Sodalitas nemo natus attonbitus reprehenderit voro depono constans vehemens ante.',
      required: true,
      type: Models::Shared::AtsJobQuestionType::TEXT,
    ),
    Models::Shared::AtsJobQuestion.new(
      id: '3a0b53b3-8f3e-48d4-ab9f-413a900d79b0',
      max_length: 430.0,
      min_length: 1.0,
      options: [
        'aetas',
      ],
      prompt: 'Contra damno desolo suadeo utrimque cresco.',
      question: 'Sodalitas desino sollers viduo volo cresco ventus tui sufficio iusto.',
      required: false,
      type: Models::Shared::AtsJobQuestionType::TEXT,
    ),
    Models::Shared::AtsJobQuestion.new(
      description: 'Ara thermae aetas vivo constans victoria volo carbo vehemens praesentium.',
      id: '060ed8c8-ab8a-417c-8b25-edf38cb19b1c',
      max_length: 381.0,
      min_length: 1.0,
      options: [
        'utroque',
      ],
      prompt: 'Vir crepusculum ait adeptio ait defendo cotidie porro uterque.',
      question: 'Vulticulus depono abstergo possimus quibusdam deinde amoveo.',
      required: false,
      type: Models::Shared::AtsJobQuestionType::TEXT,
    ),
  ],
  skills: [
    'coaegresco',
    'appello',
  ],
  status: Models::Shared::AtsJobStatus::ARCHIVED,
  summary: 'Iste sto communis.',
  updated_at: DateTime.iso8601('2026-02-23T06:24:24.615Z'),
), connection_id: '<id>')

unless res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ats_job`                                                                                                                                        | [Models::Shared::AtsJob](../../models/shared/atsjob.md)                                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAtsJobQueryParamFields](../../models/operations/createatsjobqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAtsJobResponse)](../../models/operations/createatsjobresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_ats_scorecard

Create a scorecard

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsScorecard" method="post" path="/ats/{connection_id}/scorecard" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.create_ats_scorecard(ats_scorecard: Models::Shared::AtsScorecard.new(
  comment: 'Maiores enim.',
  created_at: DateTime.iso8601('2022-02-20T17:09:45.498Z'),
  id: 'be270d72-21ba-4009-994b-4b336012e08a',
  questions: [
    Models::Shared::AtsScorecardQuestion.new(
      description: 'Sulum textor eveniet facere vita.',
      text: 'Aliquam.',
    ),
    Models::Shared::AtsScorecardQuestion.new(
      answer: 'Decretum.',
      description: 'Conatus cicuta doloremque statua bonus.',
      text: 'Pecto vulpes libero vomer comburo.',
    ),
  ],
  recommendation: Models::Shared::Recommendation::STRONG_YES,
  updated_at: DateTime.iso8601('2023-06-04T03:42:31.807Z'),
), connection_id: '<id>')

unless res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ats_scorecard`                                                                                                                                  | [Models::Shared::AtsScorecard](../../models/shared/atsscorecard.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAtsScorecardQueryParamFields](../../models/operations/createatsscorecardqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAtsScorecardResponse)](../../models/operations/createatsscorecardresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ats_activity

Retrieve an activity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsActivity" method="get" path="/ats/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.get_ats_activity(connection_id: '<id>', id: '<id>')

unless res.ats_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Activity                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsActivityQueryParamFields](../../models/operations/getatsactivityqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsActivityResponse)](../../models/operations/getatsactivityresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ats_application

Retrieve an application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsApplication" method="get" path="/ats/{connection_id}/application/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.get_ats_application(connection_id: '<id>', id: '<id>')

unless res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Application                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsApplicationQueryParamFields](../../models/operations/getatsapplicationqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsApplicationResponse)](../../models/operations/getatsapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ats_applicationstatus

Retrieve an applicationstatus

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsApplicationstatus" method="get" path="/ats/{connection_id}/applicationstatus/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.get_ats_applicationstatus(connection_id: '<id>', id: '<id>')

unless res.ats_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Applicationstatus                                                                                                                      |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsApplicationstatusQueryParamFields](../../models/operations/getatsapplicationstatusqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsApplicationstatusResponse)](../../models/operations/getatsapplicationstatusresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ats_candidate

Retrieve a candidate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsCandidate" method="get" path="/ats/{connection_id}/candidate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.get_ats_candidate(connection_id: '<id>', id: '<id>')

unless res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Candidate                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsCandidateQueryParamFields](../../models/operations/getatscandidatequeryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsCandidateResponse)](../../models/operations/getatscandidateresponse.md)**

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

res = s.ats.get_ats_company(connection_id: '<id>', id: '<id>')

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

## get_ats_document

Retrieve a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsDocument" method="get" path="/ats/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.get_ats_document(connection_id: '<id>', id: '<id>')

unless res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Document                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsDocumentQueryParamFields](../../models/operations/getatsdocumentqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsDocumentResponse)](../../models/operations/getatsdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ats_interview

Retrieve an interview

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsInterview" method="get" path="/ats/{connection_id}/interview/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.get_ats_interview(connection_id: '<id>', id: '<id>')

unless res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Interview                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsInterviewQueryParamFields](../../models/operations/getatsinterviewqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsInterviewResponse)](../../models/operations/getatsinterviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ats_job

Retrieve a job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsJob" method="get" path="/ats/{connection_id}/job/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.get_ats_job(connection_id: '<id>', id: '<id>')

unless res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Job                                                                                                                                    |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsJobQueryParamFields](../../models/operations/getatsjobqueryparamfields.md)>                                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsJobResponse)](../../models/operations/getatsjobresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ats_scorecard

Retrieve a scorecard

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsScorecard" method="get" path="/ats/{connection_id}/scorecard/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.get_ats_scorecard(connection_id: '<id>', id: '<id>')

unless res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Scorecard                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsScorecardQueryParamFields](../../models/operations/getatsscorecardqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsScorecardResponse)](../../models/operations/getatsscorecardresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ats_activities

List all activities

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsActivities" method="get" path="/ats/{connection_id}/activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsActivitiesRequest.new(
  connection_id: '<id>',
)

res = s.ats.list_ats_activities(request: req)

unless res.ats_activities.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListAtsActivitiesRequest](../../models/operations/listatsactivitiesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListAtsActivitiesResponse)](../../models/operations/listatsactivitiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ats_applications

List all applications

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsApplications" method="get" path="/ats/{connection_id}/application" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsApplicationsRequest.new(
  connection_id: '<id>',
)

res = s.ats.list_ats_applications(request: req)

unless res.ats_applications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListAtsApplicationsRequest](../../models/operations/listatsapplicationsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListAtsApplicationsResponse)](../../models/operations/listatsapplicationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ats_applicationstatuses

List all applicationstatuses

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsApplicationstatuses" method="get" path="/ats/{connection_id}/applicationstatus" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsApplicationstatusesRequest.new(
  connection_id: '<id>',
)

res = s.ats.list_ats_applicationstatuses(request: req)

unless res.ats_statuses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListAtsApplicationstatusesRequest](../../models/operations/listatsapplicationstatusesrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListAtsApplicationstatusesResponse)](../../models/operations/listatsapplicationstatusesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ats_candidates

List all candidates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsCandidates" method="get" path="/ats/{connection_id}/candidate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsCandidatesRequest.new(
  connection_id: '<id>',
)

res = s.ats.list_ats_candidates(request: req)

unless res.ats_candidates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListAtsCandidatesRequest](../../models/operations/listatscandidatesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListAtsCandidatesResponse)](../../models/operations/listatscandidatesresponse.md)**

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

res = s.ats.list_ats_companies(request: req)

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

## list_ats_documents

List all documents

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsDocuments" method="get" path="/ats/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsDocumentsRequest.new(
  connection_id: '<id>',
)

res = s.ats.list_ats_documents(request: req)

unless res.ats_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListAtsDocumentsRequest](../../models/operations/listatsdocumentsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListAtsDocumentsResponse)](../../models/operations/listatsdocumentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ats_interviews

List all interviews

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsInterviews" method="get" path="/ats/{connection_id}/interview" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsInterviewsRequest.new(
  connection_id: '<id>',
)

res = s.ats.list_ats_interviews(request: req)

unless res.ats_interviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListAtsInterviewsRequest](../../models/operations/listatsinterviewsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListAtsInterviewsResponse)](../../models/operations/listatsinterviewsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ats_jobs

List all jobs

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsJobs" method="get" path="/ats/{connection_id}/job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsJobsRequest.new(
  connection_id: '<id>',
)

res = s.ats.list_ats_jobs(request: req)

unless res.ats_jobs.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::ListAtsJobsRequest](../../models/operations/listatsjobsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::ListAtsJobsResponse)](../../models/operations/listatsjobsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ats_scorecards

List all scorecards

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsScorecards" method="get" path="/ats/{connection_id}/scorecard" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsScorecardsRequest.new(
  connection_id: '<id>',
)

res = s.ats.list_ats_scorecards(request: req)

unless res.ats_scorecards.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListAtsScorecardsRequest](../../models/operations/listatsscorecardsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListAtsScorecardsResponse)](../../models/operations/listatsscorecardsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ats_activity

Update an activity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsActivity" method="patch" path="/ats/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAtsActivityRequest.new(
  ats_activity: Models::Shared::AtsActivity.new(
    bcc: [
      Models::Shared::AtsEmail.new(
        email: 'Mabel_Schuppe-Schowalter42@hotmail.com',
        name: 'Rochelle Franey-Bechtelar',
        type: Models::Shared::AtsEmailType::HOME,
      ),
    ],
    cc: [
      Models::Shared::AtsEmail.new(
        email: 'Sasha24@hotmail.com',
        name: 'Dr. Elbert Kuvalis',
        type: Models::Shared::AtsEmailType::HOME,
      ),
      Models::Shared::AtsEmail.new(
        email: 'Rosetta_Donnelly@gmail.com',
        name: 'Ramon Daniel',
        type: Models::Shared::AtsEmailType::OTHER,
      ),
      Models::Shared::AtsEmail.new(
        email: 'Kathryne_Jast@yahoo.com',
        name: 'Christian Jacobson',
        type: Models::Shared::AtsEmailType::OTHER,
      ),
      Models::Shared::AtsEmail.new(
        email: 'Eldred95@yahoo.com',
        name: 'Edna Bogan',
        type: Models::Shared::AtsEmailType::OTHER,
      ),
    ],
    created_at: DateTime.iso8601('2022-08-07T03:16:43.865Z'),
    description: 'Amplus.',
    from: Models::Shared::PropertyAtsActivityFrom.new(
      email: 'Norwood.Wiza47@yahoo.com',
      name: 'Toby Grant',
      type: Models::Shared::PropertyAtsActivityFromType::OTHER,
    ),
    id: 'd2cc62e8-f8a8-4a84-8b7d-25404e73569b',
    is_private: false,
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'bc3baa21-84f3-4ba4-ac31-66d3ee0b23db',
        namespace: 'activity',
        slug: 'acer',
        value: 'Pauci eius cena adamo summisse arguo pectus communis arcesso tergeo.',
      ),
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'f25bfb5c-0ef5-4590-b167-36013665cedf',
        namespace: 'activity',
        slug: 'tremo',
        value: 'Amita delectus dicta temptatio utroque ex.',
      ),
    ],
    sub_type: 'TASK',
    title: 'Senior Interactions Manager',
    to: [
      Models::Shared::AtsEmail.new(
        email: 'Sister91@hotmail.com',
        name: 'Eddie Nienow PhD',
        type: Models::Shared::AtsEmailType::WORK,
      ),
    ],
    type: Models::Shared::AtsActivityType::TASK,
    updated_at: DateTime.iso8601('2026-03-30T19:32:24.329Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.patch_ats_activity(request: req)

unless res.ats_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchAtsActivityRequest](../../models/operations/patchatsactivityrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchAtsActivityResponse)](../../models/operations/patchatsactivityresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ats_application

Update an application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsApplication" method="patch" path="/ats/{connection_id}/application/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAtsApplicationRequest.new(
  ats_application: Models::Shared::AtsApplication.new(
    answers: [],
    applied_at: DateTime.iso8601('2025-09-26T10:49:30.323Z'),
    created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
    hired_at: DateTime.iso8601('2026-05-08T09:27:07.707Z'),
    id: 'ab5afb57-b0f2-4508-81ec-2c1b90f584b2',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'a1302a79-0341-40e6-b91a-daeb95584617',
        namespace: 'application',
        slug: 'despecto',
        value: 'Argentum decretum cultellus aveho distinctio verecundia stella depono.',
      ),
    ],
    offers: [],
    original_status: 'vomica',
    original_substatus: 'allatus',
    rejected_at: DateTime.iso8601('2026-10-06T11:04:11.544Z'),
    rejected_reason: 'Cometes amplitudo videlicet talio.',
    source: 'credo',
    status: Models::Shared::AtsApplicationStatus::REVIEWING,
    summary: 'Comburo quidem vesica vulnus curatio. Appositus amita attonbitus conatus degenero charisma sordeo villa victoria varius. Cenaculum acsi officia.',
    updated_at: DateTime.iso8601('2026-10-13T06:32:29.996Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.patch_ats_application(request: req)

unless res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchAtsApplicationRequest](../../models/operations/patchatsapplicationrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchAtsApplicationResponse)](../../models/operations/patchatsapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ats_candidate

Update a candidate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsCandidate" method="patch" path="/ats/{connection_id}/candidate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAtsCandidateRequest.new(
  ats_candidate: Models::Shared::AtsCandidate.new(
    address: Models::Shared::PropertyAtsCandidateAddress.new(
      address1: '802 Roberts Squares',
      address2: 'Suite 550',
      city: 'Lake Raeganside',
      country_code: 'US',
      postal_code: '44530-0054',
      region: 'Tennessee',
      region_code: 'NV',
    ),
    company_name: 'Ferry, Legros and Feest',
    created_at: DateTime.iso8601('2023-10-16T05:42:56.049Z'),
    education: [
      Models::Shared::AtsCandidateEducation.new(
        degree: 'mouser throughout',
        end_at: DateTime.iso8601('1992-11-28T20:23:20.311Z'),
        field_of_study: 'solutio',
        institution: 'Heller - Lubowitz',
        level: 'phd',
        start_at: DateTime.iso8601('2001-03-26T08:12:11.510Z'),
      ),
    ],
    emails: [
      Models::Shared::AtsEmail.new(
        email: 'Ardith.Beatty@hotmail.com',
        name: 'Opal Lindgren',
        type: Models::Shared::AtsEmailType::WORK,
      ),
      Models::Shared::AtsEmail.new(
        email: 'Ardith_Beatty@gmail.com',
        name: 'Kristi Nader',
        type: Models::Shared::AtsEmailType::OTHER,
      ),
    ],
    experiences: [
      Models::Shared::AtsCandidateExperience.new(
        company_name: 'Donnelly, Buckridge and Steuber',
        end_at: DateTime.iso8601('1978-06-20T02:53:48.383Z'),
        start_at: DateTime.iso8601('1980-02-06T17:16:53.798Z'),
        title: 'Principal Brand Strategist',
      ),
    ],
    first_name: 'Ardith',
    id: '2c46e84c-a991-45af-b7a9-b5bb37d4b333',
    image_url: 'https://loremflickr.com/40/3693?lock=5634712403880328',
    job_ids: [],
    last_name: 'Beatty',
    link_urls: [
      'https://sizzling-legislature.com',
      'https://soupy-interchange.net',
      'https://troubled-substitution.info',
    ],
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'a54fefc1-ee8c-4049-b4a2-02af2e6a2cdc',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'cariosus',
      ),
    ],
    name: 'Ardith Beatty',
    origin: Models::Shared::Origin::SOURCED,
    skills: [
      'vita',
      'cohors',
    ],
    sources: [
      'tactus',
    ],
    summary: 'Denego barba rerum similique via templum totam suus voluptatem. Depraedor virgo cui comminor commodi curvo. Chirographum pax spero nostrum damnatio averto pecus cervus aspicio absens.',
    tags: [
      'aliquid',
    ],
    telephones: [
      Models::Shared::AtsTelephone.new(
        telephone: '(779) 296-5994',
        type: Models::Shared::AtsTelephoneType::HOME,
      ),
    ],
    title: 'Principal Implementation Analyst',
    updated_at: DateTime.iso8601('2024-04-27T19:55:39.798Z'),
    web_url: 'https://expert-lender.name/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.patch_ats_candidate(request: req)

unless res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchAtsCandidateRequest](../../models/operations/patchatscandidaterequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchAtsCandidateResponse)](../../models/operations/patchatscandidateresponse.md)**

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
    id: '071f0083-91fa-4bf1-ac02-499b3b472457',
    name: 'Gulgowski, Dibbert and Wilderman',
    phone: '1-602-210-4548',
    updated_at: DateTime.iso8601('2020-09-30T04:28:23.810Z'),
    website_url: 'https://somber-substitution.com/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.patch_ats_company(request: req)

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

## patch_ats_document

Update a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsDocument" method="patch" path="/ats/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAtsDocumentRequest.new(
  ats_document: Models::Shared::AtsDocument.new(
    created_at: DateTime.iso8601('2021-08-20T08:00:27.437Z'),
    document_url: 'https://vengeful-lashes.biz',
    filename: 'bah_white_frantically.bz',
    id: 'd3c76d1e-e4b2-4f57-89a5-c153fdeea9e1',
    type: Models::Shared::AtsDocumentType::RESUME,
    updated_at: DateTime.iso8601('2022-12-05T22:05:40.031Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.patch_ats_document(request: req)

unless res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchAtsDocumentRequest](../../models/operations/patchatsdocumentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchAtsDocumentResponse)](../../models/operations/patchatsdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ats_interview

Update an interview

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsInterview" method="patch" path="/ats/{connection_id}/interview/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAtsInterviewRequest.new(
  ats_interview: Models::Shared::AtsInterview.new(
    created_at: DateTime.iso8601('2021-11-28T03:14:47.774Z'),
    end_at: DateTime.iso8601('2025-10-15T12:09:56.383Z'),
    external_event_xref: 'd0b0d7be-a8ff-46f6-bde5-055251b61075',
    id: 'cc75a2d4-ac6a-48c7-9884-e48c9eaeb127',
    location: '26596 Halle Trafficway',
    start_at: DateTime.iso8601('2025-06-08T09:51:20.847Z'),
    status: Models::Shared::AtsInterviewStatus::SCHEDULED,
    updated_at: DateTime.iso8601('2026-02-28T07:26:58.258Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.patch_ats_interview(request: req)

unless res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchAtsInterviewRequest](../../models/operations/patchatsinterviewrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchAtsInterviewResponse)](../../models/operations/patchatsinterviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ats_job

Update a job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsJob" method="patch" path="/ats/{connection_id}/job/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAtsJobRequest.new(
  ats_job: Models::Shared::AtsJob.new(
    addresses: [
      Models::Shared::AtsAddress.new(
        address1: '98097 Carlo Trail',
        city: 'South Judd',
        country_code: 'US',
        postal_code: '89776-0669',
        region: 'Mississippi',
        region_code: 'FL',
      ),
    ],
    compensation: [
      Models::Shared::AtsCompensation.new(
        currency: 'AUD',
        frequency: Models::Shared::Frequency::DAY,
        max: 174_303.0,
        min: 174_042.0,
        type: Models::Shared::AtsCompensationType::BONUS,
      ),
      Models::Shared::AtsCompensation.new(
        currency: 'MZN',
        frequency: Models::Shared::Frequency::MONTH,
        max: 171_171.0,
        min: 151_975.0,
        type: Models::Shared::AtsCompensationType::SALARY,
      ),
    ],
    created_at: DateTime.iso8601('2023-06-16T12:51:44.518Z'),
    description: 'Global',
    employment_type: Models::Shared::EmploymentType::FREELANCE,
    hiring_managers: [
      Models::Shared::AtsReference.new(
        id: 'eb3bbf4e-4022-4122-9d44-39fd5b501e80',
        name: 'Troy Greenholt',
      ),
    ],
    id: '0af877bf-256c-4d70-9fd2-1243ae7a08e3',
    industry: 'Modern Granite Gloves',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '02b285c9-0acf-4f56-a38f-a6093c422c6c',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'vomica',
      ),
    ],
    minimum_degree: 'Bachelor',
    minimum_experience_years: 3.0,
    name: 'Forward Brand Producer',
    number_of_openings: 1.0,
    openings: [
      Models::Shared::AtsJobOpening.new(
        close_reason: 'Admoveo trado textilis.',
        opened_at: DateTime.iso8601('2026-06-03T07:58:04.703Z'),
        status: Models::Shared::AtsJobOpeningStatus::OPEN,
      ),
    ],
    postings: [
      Models::Shared::AtsJobPosting.new(
        address: Models::Shared::PropertyAtsJobPostingAddress.new(
          address1: '51372 Kshlerin Creek',
          city: 'Logancester',
          country_code: 'US',
          postal_code: '85013-9865',
          region: 'Vermont',
          region_code: 'MO',
        ),
        created_at: DateTime.iso8601('2026-07-28T05:26:18.071Z'),
        description: 'Provident turbo cunabula spoliatio agnitio.',
        id: '372178cd-2056-4388-870e-e7c199761c7c',
        is_active: false,
        location: '2925 Connie Green',
        name: 'Lead Intranet Developer',
        posting_url: 'https://smart-summer.name/',
        updated_at: DateTime.iso8601('2026-08-23T10:10:20.209Z'),
      ),
    ],
    public_job_urls: [
      'https://trustworthy-elver.info',
      'https://parched-dash.info',
    ],
    questions: [
      Models::Shared::AtsJobQuestion.new(
        description: 'Trepide provident taceo rem.',
        id: '289f27c0-311c-41e5-ad9d-cbe2097332c2',
        max_length: 387.0,
        min_length: 1.0,
        options: [
          'censura',
          'tum',
        ],
        prompt: 'Spectaculum mollitia arcus compello.',
        question: 'Sodalitas nemo natus attonbitus reprehenderit voro depono constans vehemens ante.',
        required: true,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
      Models::Shared::AtsJobQuestion.new(
        id: '3a0b53b3-8f3e-48d4-ab9f-413a900d79b0',
        max_length: 430.0,
        min_length: 1.0,
        options: [
          'aetas',
        ],
        prompt: 'Contra damno desolo suadeo utrimque cresco.',
        question: 'Sodalitas desino sollers viduo volo cresco ventus tui sufficio iusto.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
      Models::Shared::AtsJobQuestion.new(
        description: 'Ara thermae aetas vivo constans victoria volo carbo vehemens praesentium.',
        id: '060ed8c8-ab8a-417c-8b25-edf38cb19b1c',
        max_length: 381.0,
        min_length: 1.0,
        options: [
          'utroque',
        ],
        prompt: 'Vir crepusculum ait adeptio ait defendo cotidie porro uterque.',
        question: 'Vulticulus depono abstergo possimus quibusdam deinde amoveo.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
    ],
    skills: [
      'coaegresco',
      'appello',
    ],
    status: Models::Shared::AtsJobStatus::ARCHIVED,
    summary: 'Iste sto communis.',
    updated_at: DateTime.iso8601('2026-02-23T06:24:24.661Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.patch_ats_job(request: req)

unless res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::PatchAtsJobRequest](../../models/operations/patchatsjobrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::PatchAtsJobResponse)](../../models/operations/patchatsjobresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ats_scorecard

Update a scorecard

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsScorecard" method="patch" path="/ats/{connection_id}/scorecard/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAtsScorecardRequest.new(
  ats_scorecard: Models::Shared::AtsScorecard.new(
    comment: 'Maiores enim.',
    created_at: DateTime.iso8601('2022-02-20T17:09:45.498Z'),
    id: 'b7d99cc1-e514-4fc6-8489-5ae1eea882cd',
    questions: [
      Models::Shared::AtsScorecardQuestion.new(
        description: 'Sulum textor eveniet facere vita.',
        text: 'Aliquam.',
      ),
      Models::Shared::AtsScorecardQuestion.new(
        answer: 'Decretum.',
        description: 'Conatus cicuta doloremque statua bonus.',
        text: 'Pecto vulpes libero vomer comburo.',
      ),
    ],
    recommendation: Models::Shared::Recommendation::STRONG_YES,
    updated_at: DateTime.iso8601('2023-06-04T03:42:31.810Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.patch_ats_scorecard(request: req)

unless res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchAtsScorecardRequest](../../models/operations/patchatsscorecardrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchAtsScorecardResponse)](../../models/operations/patchatsscorecardresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ats_activity

Remove an activity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsActivity" method="delete" path="/ats/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.remove_ats_activity(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Activity   |

### Response

**[T.nilable(Models::Operations::RemoveAtsActivityResponse)](../../models/operations/removeatsactivityresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ats_application

Remove an application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsApplication" method="delete" path="/ats/{connection_id}/application/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.remove_ats_application(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Application |

### Response

**[T.nilable(Models::Operations::RemoveAtsApplicationResponse)](../../models/operations/removeatsapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ats_candidate

Remove a candidate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsCandidate" method="delete" path="/ats/{connection_id}/candidate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.remove_ats_candidate(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Candidate  |

### Response

**[T.nilable(Models::Operations::RemoveAtsCandidateResponse)](../../models/operations/removeatscandidateresponse.md)**

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

res = s.ats.remove_ats_company(connection_id: '<id>', id: '<id>')

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

## remove_ats_document

Remove a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsDocument" method="delete" path="/ats/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.remove_ats_document(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Document   |

### Response

**[T.nilable(Models::Operations::RemoveAtsDocumentResponse)](../../models/operations/removeatsdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ats_interview

Remove an interview

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsInterview" method="delete" path="/ats/{connection_id}/interview/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.remove_ats_interview(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Interview  |

### Response

**[T.nilable(Models::Operations::RemoveAtsInterviewResponse)](../../models/operations/removeatsinterviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ats_job

Remove a job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsJob" method="delete" path="/ats/{connection_id}/job/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.remove_ats_job(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Job        |

### Response

**[T.nilable(Models::Operations::RemoveAtsJobResponse)](../../models/operations/removeatsjobresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ats_scorecard

Remove a scorecard

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsScorecard" method="delete" path="/ats/{connection_id}/scorecard/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ats.remove_ats_scorecard(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Scorecard  |

### Response

**[T.nilable(Models::Operations::RemoveAtsScorecardResponse)](../../models/operations/removeatsscorecardresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ats_activity

Update an activity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsActivity" method="put" path="/ats/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAtsActivityRequest.new(
  ats_activity: Models::Shared::AtsActivity.new(
    bcc: [
      Models::Shared::AtsEmail.new(
        email: 'Mabel_Schuppe-Schowalter42@hotmail.com',
        name: 'Rochelle Franey-Bechtelar',
        type: Models::Shared::AtsEmailType::HOME,
      ),
    ],
    cc: [
      Models::Shared::AtsEmail.new(
        email: 'Sasha24@hotmail.com',
        name: 'Dr. Elbert Kuvalis',
        type: Models::Shared::AtsEmailType::HOME,
      ),
      Models::Shared::AtsEmail.new(
        email: 'Rosetta_Donnelly@gmail.com',
        name: 'Ramon Daniel',
        type: Models::Shared::AtsEmailType::OTHER,
      ),
      Models::Shared::AtsEmail.new(
        email: 'Kathryne_Jast@yahoo.com',
        name: 'Christian Jacobson',
        type: Models::Shared::AtsEmailType::OTHER,
      ),
      Models::Shared::AtsEmail.new(
        email: 'Eldred95@yahoo.com',
        name: 'Edna Bogan',
        type: Models::Shared::AtsEmailType::OTHER,
      ),
    ],
    created_at: DateTime.iso8601('2022-08-07T03:16:43.865Z'),
    description: 'Amplus.',
    from: Models::Shared::PropertyAtsActivityFrom.new(
      email: 'Norwood.Wiza47@yahoo.com',
      name: 'Toby Grant',
      type: Models::Shared::PropertyAtsActivityFromType::OTHER,
    ),
    id: 'd2cc62e8-f8a8-4a84-8b7d-25404e73569b',
    is_private: false,
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'bc3baa21-84f3-4ba4-ac31-66d3ee0b23db',
        namespace: 'activity',
        slug: 'acer',
        value: 'Pauci eius cena adamo summisse arguo pectus communis arcesso tergeo.',
      ),
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'f25bfb5c-0ef5-4590-b167-36013665cedf',
        namespace: 'activity',
        slug: 'tremo',
        value: 'Amita delectus dicta temptatio utroque ex.',
      ),
    ],
    sub_type: 'TASK',
    title: 'Senior Interactions Manager',
    to: [
      Models::Shared::AtsEmail.new(
        email: 'Sister91@hotmail.com',
        name: 'Eddie Nienow PhD',
        type: Models::Shared::AtsEmailType::WORK,
      ),
    ],
    type: Models::Shared::AtsActivityType::TASK,
    updated_at: DateTime.iso8601('2026-03-30T19:32:24.329Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.update_ats_activity(request: req)

unless res.ats_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateAtsActivityRequest](../../models/operations/updateatsactivityrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateAtsActivityResponse)](../../models/operations/updateatsactivityresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ats_application

Update an application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsApplication" method="put" path="/ats/{connection_id}/application/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAtsApplicationRequest.new(
  ats_application: Models::Shared::AtsApplication.new(
    answers: [],
    applied_at: DateTime.iso8601('2025-09-26T10:49:30.323Z'),
    created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
    hired_at: DateTime.iso8601('2026-05-08T09:27:07.707Z'),
    id: 'ab5afb57-b0f2-4508-81ec-2c1b90f584b2',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'a1302a79-0341-40e6-b91a-daeb95584617',
        namespace: 'application',
        slug: 'despecto',
        value: 'Argentum decretum cultellus aveho distinctio verecundia stella depono.',
      ),
    ],
    offers: [],
    original_status: 'vomica',
    original_substatus: 'allatus',
    rejected_at: DateTime.iso8601('2026-10-06T11:04:11.544Z'),
    rejected_reason: 'Cometes amplitudo videlicet talio.',
    source: 'credo',
    status: Models::Shared::AtsApplicationStatus::REVIEWING,
    summary: 'Comburo quidem vesica vulnus curatio. Appositus amita attonbitus conatus degenero charisma sordeo villa victoria varius. Cenaculum acsi officia.',
    updated_at: DateTime.iso8601('2026-10-13T06:32:29.996Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.update_ats_application(request: req)

unless res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateAtsApplicationRequest](../../models/operations/updateatsapplicationrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateAtsApplicationResponse)](../../models/operations/updateatsapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ats_candidate

Update a candidate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsCandidate" method="put" path="/ats/{connection_id}/candidate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAtsCandidateRequest.new(
  ats_candidate: Models::Shared::AtsCandidate.new(
    address: Models::Shared::PropertyAtsCandidateAddress.new(
      address1: '802 Roberts Squares',
      address2: 'Suite 550',
      city: 'Lake Raeganside',
      country_code: 'US',
      postal_code: '44530-0054',
      region: 'Tennessee',
      region_code: 'NV',
    ),
    company_name: 'Ferry, Legros and Feest',
    created_at: DateTime.iso8601('2023-10-16T05:42:56.049Z'),
    education: [
      Models::Shared::AtsCandidateEducation.new(
        degree: 'mouser throughout',
        end_at: DateTime.iso8601('1992-11-28T20:23:20.311Z'),
        field_of_study: 'solutio',
        institution: 'Heller - Lubowitz',
        level: 'phd',
        start_at: DateTime.iso8601('2001-03-26T08:12:11.510Z'),
      ),
    ],
    emails: [
      Models::Shared::AtsEmail.new(
        email: 'Ardith.Beatty@hotmail.com',
        name: 'Opal Lindgren',
        type: Models::Shared::AtsEmailType::WORK,
      ),
      Models::Shared::AtsEmail.new(
        email: 'Ardith_Beatty@gmail.com',
        name: 'Kristi Nader',
        type: Models::Shared::AtsEmailType::OTHER,
      ),
    ],
    experiences: [
      Models::Shared::AtsCandidateExperience.new(
        company_name: 'Donnelly, Buckridge and Steuber',
        end_at: DateTime.iso8601('1978-06-20T02:53:48.383Z'),
        start_at: DateTime.iso8601('1980-02-06T17:16:53.798Z'),
        title: 'Principal Brand Strategist',
      ),
    ],
    first_name: 'Ardith',
    id: '2c46e84c-a991-45af-b7a9-b5bb37d4b333',
    image_url: 'https://loremflickr.com/40/3693?lock=5634712403880328',
    job_ids: [],
    last_name: 'Beatty',
    link_urls: [
      'https://sizzling-legislature.com',
      'https://soupy-interchange.net',
      'https://troubled-substitution.info',
    ],
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'a54fefc1-ee8c-4049-b4a2-02af2e6a2cdc',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'cariosus',
      ),
    ],
    name: 'Ardith Beatty',
    origin: Models::Shared::Origin::SOURCED,
    skills: [
      'vita',
      'cohors',
    ],
    sources: [
      'tactus',
    ],
    summary: 'Denego barba rerum similique via templum totam suus voluptatem. Depraedor virgo cui comminor commodi curvo. Chirographum pax spero nostrum damnatio averto pecus cervus aspicio absens.',
    tags: [
      'aliquid',
    ],
    telephones: [
      Models::Shared::AtsTelephone.new(
        telephone: '(779) 296-5994',
        type: Models::Shared::AtsTelephoneType::HOME,
      ),
    ],
    title: 'Principal Implementation Analyst',
    updated_at: DateTime.iso8601('2024-04-27T19:55:39.798Z'),
    web_url: 'https://expert-lender.name/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.update_ats_candidate(request: req)

unless res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateAtsCandidateRequest](../../models/operations/updateatscandidaterequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateAtsCandidateResponse)](../../models/operations/updateatscandidateresponse.md)**

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
    id: '071f0083-91fa-4bf1-ac02-499b3b472457',
    name: 'Gulgowski, Dibbert and Wilderman',
    phone: '1-602-210-4548',
    updated_at: DateTime.iso8601('2020-09-30T04:28:23.810Z'),
    website_url: 'https://somber-substitution.com/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.update_ats_company(request: req)

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

## update_ats_document

Update a document

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsDocument" method="put" path="/ats/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAtsDocumentRequest.new(
  ats_document: Models::Shared::AtsDocument.new(
    created_at: DateTime.iso8601('2021-08-20T08:00:27.437Z'),
    document_url: 'https://vengeful-lashes.biz',
    filename: 'bah_white_frantically.bz',
    id: 'd3c76d1e-e4b2-4f57-89a5-c153fdeea9e1',
    type: Models::Shared::AtsDocumentType::RESUME,
    updated_at: DateTime.iso8601('2022-12-05T22:05:40.031Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.update_ats_document(request: req)

unless res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateAtsDocumentRequest](../../models/operations/updateatsdocumentrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateAtsDocumentResponse)](../../models/operations/updateatsdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ats_interview

Update an interview

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsInterview" method="put" path="/ats/{connection_id}/interview/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAtsInterviewRequest.new(
  ats_interview: Models::Shared::AtsInterview.new(
    created_at: DateTime.iso8601('2021-11-28T03:14:47.774Z'),
    end_at: DateTime.iso8601('2025-10-15T12:09:56.383Z'),
    external_event_xref: 'd0b0d7be-a8ff-46f6-bde5-055251b61075',
    id: 'cc75a2d4-ac6a-48c7-9884-e48c9eaeb127',
    location: '26596 Halle Trafficway',
    start_at: DateTime.iso8601('2025-06-08T09:51:20.847Z'),
    status: Models::Shared::AtsInterviewStatus::SCHEDULED,
    updated_at: DateTime.iso8601('2026-02-28T07:26:58.258Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.update_ats_interview(request: req)

unless res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateAtsInterviewRequest](../../models/operations/updateatsinterviewrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateAtsInterviewResponse)](../../models/operations/updateatsinterviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ats_job

Update a job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsJob" method="put" path="/ats/{connection_id}/job/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAtsJobRequest.new(
  ats_job: Models::Shared::AtsJob.new(
    addresses: [
      Models::Shared::AtsAddress.new(
        address1: '98097 Carlo Trail',
        city: 'South Judd',
        country_code: 'US',
        postal_code: '89776-0669',
        region: 'Mississippi',
        region_code: 'FL',
      ),
    ],
    compensation: [
      Models::Shared::AtsCompensation.new(
        currency: 'AUD',
        frequency: Models::Shared::Frequency::DAY,
        max: 174_303.0,
        min: 174_042.0,
        type: Models::Shared::AtsCompensationType::BONUS,
      ),
      Models::Shared::AtsCompensation.new(
        currency: 'MZN',
        frequency: Models::Shared::Frequency::MONTH,
        max: 171_171.0,
        min: 151_975.0,
        type: Models::Shared::AtsCompensationType::SALARY,
      ),
    ],
    created_at: DateTime.iso8601('2023-06-16T12:51:44.518Z'),
    description: 'Global',
    employment_type: Models::Shared::EmploymentType::FREELANCE,
    hiring_managers: [
      Models::Shared::AtsReference.new(
        id: 'eb3bbf4e-4022-4122-9d44-39fd5b501e80',
        name: 'Troy Greenholt',
      ),
    ],
    id: '0af877bf-256c-4d70-9fd2-1243ae7a08e3',
    industry: 'Modern Granite Gloves',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '02b285c9-0acf-4f56-a38f-a6093c422c6c',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'vomica',
      ),
    ],
    minimum_degree: 'Bachelor',
    minimum_experience_years: 3.0,
    name: 'Forward Brand Producer',
    number_of_openings: 1.0,
    openings: [
      Models::Shared::AtsJobOpening.new(
        close_reason: 'Admoveo trado textilis.',
        opened_at: DateTime.iso8601('2026-06-03T07:58:04.703Z'),
        status: Models::Shared::AtsJobOpeningStatus::OPEN,
      ),
    ],
    postings: [
      Models::Shared::AtsJobPosting.new(
        address: Models::Shared::PropertyAtsJobPostingAddress.new(
          address1: '51372 Kshlerin Creek',
          city: 'Logancester',
          country_code: 'US',
          postal_code: '85013-9865',
          region: 'Vermont',
          region_code: 'MO',
        ),
        created_at: DateTime.iso8601('2026-07-28T05:26:18.071Z'),
        description: 'Provident turbo cunabula spoliatio agnitio.',
        id: '372178cd-2056-4388-870e-e7c199761c7c',
        is_active: false,
        location: '2925 Connie Green',
        name: 'Lead Intranet Developer',
        posting_url: 'https://smart-summer.name/',
        updated_at: DateTime.iso8601('2026-08-23T10:10:20.209Z'),
      ),
    ],
    public_job_urls: [
      'https://trustworthy-elver.info',
      'https://parched-dash.info',
    ],
    questions: [
      Models::Shared::AtsJobQuestion.new(
        description: 'Trepide provident taceo rem.',
        id: '289f27c0-311c-41e5-ad9d-cbe2097332c2',
        max_length: 387.0,
        min_length: 1.0,
        options: [
          'censura',
          'tum',
        ],
        prompt: 'Spectaculum mollitia arcus compello.',
        question: 'Sodalitas nemo natus attonbitus reprehenderit voro depono constans vehemens ante.',
        required: true,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
      Models::Shared::AtsJobQuestion.new(
        id: '3a0b53b3-8f3e-48d4-ab9f-413a900d79b0',
        max_length: 430.0,
        min_length: 1.0,
        options: [
          'aetas',
        ],
        prompt: 'Contra damno desolo suadeo utrimque cresco.',
        question: 'Sodalitas desino sollers viduo volo cresco ventus tui sufficio iusto.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
      Models::Shared::AtsJobQuestion.new(
        description: 'Ara thermae aetas vivo constans victoria volo carbo vehemens praesentium.',
        id: '060ed8c8-ab8a-417c-8b25-edf38cb19b1c',
        max_length: 381.0,
        min_length: 1.0,
        options: [
          'utroque',
        ],
        prompt: 'Vir crepusculum ait adeptio ait defendo cotidie porro uterque.',
        question: 'Vulticulus depono abstergo possimus quibusdam deinde amoveo.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
    ],
    skills: [
      'coaegresco',
      'appello',
    ],
    status: Models::Shared::AtsJobStatus::ARCHIVED,
    summary: 'Iste sto communis.',
    updated_at: DateTime.iso8601('2026-02-23T06:24:24.661Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.update_ats_job(request: req)

unless res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::UpdateAtsJobRequest](../../models/operations/updateatsjobrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::UpdateAtsJobResponse)](../../models/operations/updateatsjobresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ats_scorecard

Update a scorecard

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsScorecard" method="put" path="/ats/{connection_id}/scorecard/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAtsScorecardRequest.new(
  ats_scorecard: Models::Shared::AtsScorecard.new(
    comment: 'Maiores enim.',
    created_at: DateTime.iso8601('2022-02-20T17:09:45.498Z'),
    id: 'b7d99cc1-e514-4fc6-8489-5ae1eea882cd',
    questions: [
      Models::Shared::AtsScorecardQuestion.new(
        description: 'Sulum textor eveniet facere vita.',
        text: 'Aliquam.',
      ),
      Models::Shared::AtsScorecardQuestion.new(
        answer: 'Decretum.',
        description: 'Conatus cicuta doloremque statua bonus.',
        text: 'Pecto vulpes libero vomer comburo.',
      ),
    ],
    recommendation: Models::Shared::Recommendation::STRONG_YES,
    updated_at: DateTime.iso8601('2023-06-04T03:42:31.810Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ats.update_ats_scorecard(request: req)

unless res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateAtsScorecardRequest](../../models/operations/updateatsscorecardrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateAtsScorecardResponse)](../../models/operations/updateatsscorecardresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |