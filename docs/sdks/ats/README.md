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
  created_at: DateTime.iso8601('2022-08-07T03:16:43.865Z'),
  description: 'Sapiente.',
  id: 'e8a2f1e7-5ef1-44d6-b9b0-dd4ae05406d4',
  is_private: false,
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: 'e90754bb-3fc5-46ca-87c0-2ef0049e309a',
      namespace: 'activity',
      slug: 'cimentarius',
      value: 'Reprehenderit verto.',
    ),
  ],
  sub_type: 'TASK',
  title: 'Venio blandior aureus.',
  type: Models::Shared::AtsActivityType::TASK,
  updated_at: DateTime.iso8601('2026-04-04T06:38:15.355Z'),
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
  applied_at: DateTime.iso8601('2025-09-29T18:41:44.737Z'),
  created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
  hired_at: DateTime.iso8601('2026-05-12T18:30:35.439Z'),
  id: '26ec1638-c52c-492b-9fd7-09de41cb00e7',
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: 'c5228933-7b14-40ad-9f1b-19a455f0df4a',
      namespace: 'application',
      slug: 'stella',
      value: 'Caput.',
    ),
  ],
  offers: [],
  original_status: 'vomica',
  original_substatus: 'allatus',
  rejected_at: DateTime.iso8601('2026-10-11T13:07:05.713Z'),
  rejected_reason: 'Cometes amplitudo videlicet talio.',
  source: 'credo',
  status: Models::Shared::AtsApplicationStatus::REVIEWING,
  summary: 'Arguo repudiandae defessus. Adflicto caecus claustrum annus addo vere crebro. Alias sponte turbo sopor vergo surculus nam.',
  updated_at: DateTime.iso8601('2026-10-18T09:21:22.037Z'),
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
    address1: '6790 S 1st Street',
    city: 'Ferrystad',
    country_code: 'US',
    postal_code: '91605',
    region: 'Idaho',
    region_code: 'HI',
  ),
  company_name: 'Lehner and Sons',
  created_at: DateTime.iso8601('2023-10-16T05:42:56.049Z'),
  date_of_birth: DateTime.iso8601('1994-07-05T19:48:57.631Z'),
  education: [
    Models::Shared::AtsCandidateEducation.new(
      degree: 'emphasize tricky',
      end_at: DateTime.iso8601('1978-04-14T07:58:36.326Z'),
      field_of_study: 'curtus',
      institution: 'Abbott - Batz',
      level: 'phd',
      start_at: DateTime.iso8601('1994-06-09T13:31:39.059Z'),
    ),
    Models::Shared::AtsCandidateEducation.new(
      degree: 'blah cappelletti',
      end_at: DateTime.iso8601('1989-09-06T03:32:39.901Z'),
      field_of_study: 'crustulum',
      institution: 'Herman, Franey and Lebsack',
      level: 'highschool',
      start_at: DateTime.iso8601('1992-11-28T20:23:20.311Z'),
    ),
  ],
  emails: [
    Models::Shared::AtsEmail.new(
      email: 'ardith.beatty@outlook.com',
      name: 'Ardith Beatty',
      type: Models::Shared::AtsEmailType::HOME,
    ),
  ],
  experiences: [
    Models::Shared::AtsCandidateExperience.new(
      company_name: 'Kutch, Lind and Marks',
      end_at: DateTime.iso8601('1974-03-01T17:02:58.824Z'),
      start_at: DateTime.iso8601('1999-09-21T22:12:51.663Z'),
      title: 'Lead Security Technician',
    ),
    Models::Shared::AtsCandidateExperience.new(
      company_name: 'Trantow, Sipes and Witting',
      end_at: DateTime.iso8601('2004-10-14T14:01:00.717Z'),
      start_at: DateTime.iso8601('1996-12-15T04:12:04.582Z'),
      title: 'Regional Applications Planner',
    ),
  ],
  first_name: 'Ardith',
  id: '664f6e73-f63a-457c-8af7-87c2ab8ec9c2',
  image_url: 'https://avatars.githubusercontent.com/u/27464445',
  job_ids: [],
  last_name: 'Beatty',
  link_urls: [
    'https://www.linkedin.com/in/ardith-beatty',
  ],
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: '7971fe19-2a15-4b5f-9240-5511e39c68cd',
      namespace: 'custom',
      slug: 'custom_field',
      value: 'officia',
    ),
  ],
  name: 'Ardith Beatty',
  origin: Models::Shared::Origin::AGENCY,
  skills: [
    'trepide',
    'voveo',
  ],
  sources: [
    'vesper',
    'utroque',
  ],
  summary: 'Laborum trado carcer delibero patruus totam. Vita cohors cariosus trans denego barba rerum similique. Templum totam suus voluptatem cui depraedor virgo cui comminor commodi.',
  tags: [
    'voro',
  ],
  telephones: [
    Models::Shared::AtsTelephone.new(
      telephone: '(837) 251-3896',
      type: Models::Shared::AtsTelephoneType::MOBILE,
    ),
  ],
  title: 'Customer Division Producer',
  updated_at: DateTime.iso8601('2024-04-28T17:47:32.446Z'),
  web_url: 'https://fragrant-husband.net/',
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
  filename: 'lonzo_schowalter_resume.pdf',
  id: '29c939d9-2af8-44c4-a7d5-67e03b8e6897',
  metadata: [],
  type: Models::Shared::AtsDocumentType::COVER_LETTER,
  updated_at: DateTime.iso8601('2022-12-07T04:59:55.140Z'),
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
  end_at: DateTime.iso8601('2021-12-08T06:33:19.583Z'),
  id: '75d45222-2444-450b-8db6-d716949cdd12',
  location: '26596 Halle Trafficway',
  meeting_url: 'https://immaculate-foodstuffs.biz',
  metadata: [],
  start_at: DateTime.iso8601('2021-12-08T06:03:19.583Z'),
  status: Models::Shared::AtsInterviewStatus::SCHEDULED,
  updated_at: DateTime.iso8601('2023-09-23T16:39:11.717Z'),
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
  hiring_managers: [],
  id: 'f1ed3a25-8406-4efd-afcf-0a385a1fadb2',
  industry: 'Handcrafted Bamboo Soap',
  language_locale: 'en',
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: '6413a6cc-6a8e-4306-8822-db3f3900f798',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'desolo',
    ),
  ],
  minimum_degree: 'Bachelor',
  minimum_experience_years: 3.0,
  name: 'Forward Brand Producer',
  number_of_openings: 1.0,
  openings: [
    Models::Shared::AtsJobOpening.new(
      close_reason: 'Admoveo trado textilis.',
      opened_at: DateTime.iso8601('2026-06-07T21:28:07.896Z'),
      status: Models::Shared::AtsJobOpeningStatus::OPEN,
    ),
  ],
  postings: [
    Models::Shared::AtsJobPosting.new(
      address: Models::Shared::PropertyAtsJobPostingAddress.new(
        address1: '75008 Medhurst Road',
        city: 'Madelynnshire',
        country_code: 'US',
        postal_code: '98754',
        region: 'Wisconsin',
        region_code: 'CO',
      ),
      created_at: DateTime.iso8601('2026-08-02T00:29:26.215Z'),
      description: 'Beatus eum volutabrum balbus victus ipsa tubineus claustrum.',
      id: 'b6f8c91a-7f05-4e3b-ac0a-c79968a8a9af',
      is_active: false,
      location: '1725 Hessel Keys',
      name: 'International Identity Manager',
      posting_url: 'https://obedient-yak.com',
      updated_at: DateTime.iso8601('2026-08-28T07:52:25.733Z'),
    ),
  ],
  public_job_urls: [
    'https://trustworthy-elver.info',
    'https://parched-dash.info',
  ],
  questions: [
    Models::Shared::AtsJobQuestion.new(
      description: 'Auctus deporto tolero administratio capitulus animi agnosco tendo aetas vado.',
      id: '81736c36-1b8a-4700-a981-c384da1e68f5',
      max_length: 117.0,
      min_length: 1.0,
      options: [
        'tactus',
        'vehemens',
      ],
      prompt: 'Totam maxime tres tergiversatio.',
      question: 'Doloribus mollitia.',
      required: true,
      type: Models::Shared::AtsJobQuestionType::TEXT,
    ),
    Models::Shared::AtsJobQuestion.new(
      id: 'fcd02da9-266c-4de9-a918-9a98f813e617',
      max_length: 453.0,
      min_length: 1.0,
      options: [
        'constans',
      ],
      prompt: 'Veritatis sodalitas nemo natus attonbitus reprehenderit voro depono.',
      question: 'Nam.',
      required: false,
      type: Models::Shared::AtsJobQuestionType::TEXT,
    ),
    Models::Shared::AtsJobQuestion.new(
      description: 'Taceo rem compello spectaculum mollitia arcus compello.',
      id: 'e29c1433-3d51-4fa1-8492-3354e0f8e77d',
      max_length: 66.0,
      min_length: 1.0,
      options: [
        'repellendus',
      ],
      prompt: 'Tum tamisium autus.',
      question: 'Confero trepide.',
      required: false,
      type: Models::Shared::AtsJobQuestionType::TEXT,
    ),
  ],
  skills: [
    'suadeo',
    'utrimque',
  ],
  status: Models::Shared::AtsJobStatus::ARCHIVED,
  summary: 'Crepusculum adsuesco vere.',
  updated_at: DateTime.iso8601('2026-02-27T09:47:18.130Z'),
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
  id: '2dea7d23-46fb-48d0-a30a-b909d9a83d91',
  metadata: [],
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
  updated_at: DateTime.iso8601('2023-06-05T13:40:04.404Z'),
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
    created_at: DateTime.iso8601('2022-08-07T03:16:43.865Z'),
    description: 'Sapiente.',
    id: '1dd88965-536d-4641-a508-0b97b622bef5',
    is_private: false,
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '26853e59-8a39-416d-88e8-757699c82c57',
        namespace: 'activity',
        slug: 'cimentarius',
        value: 'Reprehenderit verto.',
      ),
    ],
    sub_type: 'TASK',
    title: 'Venio blandior aureus.',
    type: Models::Shared::AtsActivityType::TASK,
    updated_at: DateTime.iso8601('2026-04-04T06:38:15.375Z'),
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
    applied_at: DateTime.iso8601('2025-09-29T18:41:44.750Z'),
    created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
    hired_at: DateTime.iso8601('2026-05-12T18:30:35.456Z'),
    id: '95d97fad-3b9a-4527-bb22-1953ed79ef05',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '382ffa38-ae9e-4b90-9c6f-f3dacf302b7c',
        namespace: 'application',
        slug: 'stella',
        value: 'Caput.',
      ),
    ],
    offers: [],
    original_status: 'vomica',
    original_substatus: 'allatus',
    rejected_at: DateTime.iso8601('2026-10-11T13:07:05.733Z'),
    rejected_reason: 'Cometes amplitudo videlicet talio.',
    source: 'credo',
    status: Models::Shared::AtsApplicationStatus::REVIEWING,
    summary: 'Arguo repudiandae defessus. Adflicto caecus claustrum annus addo vere crebro. Alias sponte turbo sopor vergo surculus nam.',
    updated_at: DateTime.iso8601('2026-10-18T09:21:22.057Z'),
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
      address1: '6790 S 1st Street',
      city: 'Ferrystad',
      country_code: 'US',
      postal_code: '91605',
      region: 'Idaho',
      region_code: 'HI',
    ),
    company_name: 'Lehner and Sons',
    created_at: DateTime.iso8601('2023-10-16T05:42:56.049Z'),
    date_of_birth: DateTime.iso8601('1994-07-05T19:48:57.631Z'),
    education: [
      Models::Shared::AtsCandidateEducation.new(
        degree: 'emphasize tricky',
        end_at: DateTime.iso8601('1978-04-14T07:58:36.326Z'),
        field_of_study: 'curtus',
        institution: 'Abbott - Batz',
        level: 'phd',
        start_at: DateTime.iso8601('1994-06-09T13:31:39.059Z'),
      ),
      Models::Shared::AtsCandidateEducation.new(
        degree: 'blah cappelletti',
        end_at: DateTime.iso8601('1989-09-06T03:32:39.901Z'),
        field_of_study: 'crustulum',
        institution: 'Herman, Franey and Lebsack',
        level: 'highschool',
        start_at: DateTime.iso8601('1992-11-28T20:23:20.311Z'),
      ),
    ],
    emails: [
      Models::Shared::AtsEmail.new(
        email: 'ardith.beatty@outlook.com',
        name: 'Ardith Beatty',
        type: Models::Shared::AtsEmailType::HOME,
      ),
    ],
    experiences: [
      Models::Shared::AtsCandidateExperience.new(
        company_name: 'Kutch, Lind and Marks',
        end_at: DateTime.iso8601('1974-03-01T17:02:58.824Z'),
        start_at: DateTime.iso8601('1999-09-21T22:12:51.663Z'),
        title: 'Lead Security Technician',
      ),
      Models::Shared::AtsCandidateExperience.new(
        company_name: 'Trantow, Sipes and Witting',
        end_at: DateTime.iso8601('2004-10-14T14:01:00.717Z'),
        start_at: DateTime.iso8601('1996-12-15T04:12:04.582Z'),
        title: 'Regional Applications Planner',
      ),
    ],
    first_name: 'Ardith',
    id: 'e2d5ef47-da9e-4500-8493-4ce44bec7b6e',
    image_url: 'https://avatars.githubusercontent.com/u/27464445',
    job_ids: [],
    last_name: 'Beatty',
    link_urls: [
      'https://www.linkedin.com/in/ardith-beatty',
    ],
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'cca4fa50-af15-422e-8c16-8ed5906d98de',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'officia',
      ),
    ],
    name: 'Ardith Beatty',
    origin: Models::Shared::Origin::AGENCY,
    skills: [
      'trepide',
      'voveo',
    ],
    sources: [
      'vesper',
      'utroque',
    ],
    summary: 'Laborum trado carcer delibero patruus totam. Vita cohors cariosus trans denego barba rerum similique. Templum totam suus voluptatem cui depraedor virgo cui comminor commodi.',
    tags: [
      'voro',
    ],
    telephones: [
      Models::Shared::AtsTelephone.new(
        telephone: '(837) 251-3896',
        type: Models::Shared::AtsTelephoneType::MOBILE,
      ),
    ],
    title: 'Customer Division Producer',
    updated_at: DateTime.iso8601('2024-04-28T17:47:32.451Z'),
    web_url: 'https://fragrant-husband.net/',
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
    id: 'b636b5e8-021c-497e-9250-478a87440e00',
    name: 'Gulgowski, Dibbert and Wilderman',
    phone: '1-882-360-2010',
    updated_at: DateTime.iso8601('2020-10-01T04:12:23.719Z'),
    website_url: 'https://www.gulgowskidibbert.com',
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
    filename: 'lonzo_schowalter_resume.pdf',
    id: '907ef7b6-235a-44f3-8ec7-d96d3a868fc2',
    metadata: [],
    type: Models::Shared::AtsDocumentType::COVER_LETTER,
    updated_at: DateTime.iso8601('2022-12-07T04:59:55.146Z'),
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
    end_at: DateTime.iso8601('2021-12-08T06:33:19.583Z'),
    id: 'e4f6fa22-60cf-4f9b-98c5-bf66341af9c5',
    location: '26596 Halle Trafficway',
    meeting_url: 'https://immaculate-foodstuffs.biz',
    metadata: [],
    start_at: DateTime.iso8601('2021-12-08T06:03:19.583Z'),
    status: Models::Shared::AtsInterviewStatus::SCHEDULED,
    updated_at: DateTime.iso8601('2023-09-23T16:39:11.723Z'),
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
    hiring_managers: [],
    id: '0b07a34e-39f9-404a-af24-ab50ae45bbd3',
    industry: 'Handcrafted Bamboo Soap',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '5ae4056e-ffe0-4bd5-bc78-8b4c4dae688f',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'desolo',
      ),
    ],
    minimum_degree: 'Bachelor',
    minimum_experience_years: 3.0,
    name: 'Forward Brand Producer',
    number_of_openings: 1.0,
    openings: [
      Models::Shared::AtsJobOpening.new(
        close_reason: 'Admoveo trado textilis.',
        opened_at: DateTime.iso8601('2026-06-07T21:28:07.934Z'),
        status: Models::Shared::AtsJobOpeningStatus::OPEN,
      ),
    ],
    postings: [
      Models::Shared::AtsJobPosting.new(
        address: Models::Shared::PropertyAtsJobPostingAddress.new(
          address1: '75008 Medhurst Road',
          city: 'Madelynnshire',
          country_code: 'US',
          postal_code: '98754',
          region: 'Wisconsin',
          region_code: 'CO',
        ),
        created_at: DateTime.iso8601('2026-08-02T00:29:26.254Z'),
        description: 'Beatus eum volutabrum balbus victus ipsa tubineus claustrum.',
        id: '0711f01a-d966-4692-856e-ebefe2c72287',
        is_active: false,
        location: '1725 Hessel Keys',
        name: 'International Identity Manager',
        posting_url: 'https://obedient-yak.com',
        updated_at: DateTime.iso8601('2026-08-28T07:52:25.774Z'),
      ),
    ],
    public_job_urls: [
      'https://trustworthy-elver.info',
      'https://parched-dash.info',
    ],
    questions: [
      Models::Shared::AtsJobQuestion.new(
        description: 'Auctus deporto tolero administratio capitulus animi agnosco tendo aetas vado.',
        id: '8a96c284-ea18-4779-bda9-ab1be23a235d',
        max_length: 117.0,
        min_length: 1.0,
        options: [
          'tactus',
          'vehemens',
        ],
        prompt: 'Totam maxime tres tergiversatio.',
        question: 'Doloribus mollitia.',
        required: true,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
      Models::Shared::AtsJobQuestion.new(
        id: '9ed04038-4f62-4955-ba05-9ccf7856a92c',
        max_length: 453.0,
        min_length: 1.0,
        options: [
          'constans',
        ],
        prompt: 'Veritatis sodalitas nemo natus attonbitus reprehenderit voro depono.',
        question: 'Nam.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
      Models::Shared::AtsJobQuestion.new(
        description: 'Taceo rem compello spectaculum mollitia arcus compello.',
        id: '6306a3f2-d536-4273-9170-bad83ea4b5ae',
        max_length: 66.0,
        min_length: 1.0,
        options: [
          'repellendus',
        ],
        prompt: 'Tum tamisium autus.',
        question: 'Confero trepide.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
    ],
    skills: [
      'suadeo',
      'utrimque',
    ],
    status: Models::Shared::AtsJobStatus::ARCHIVED,
    summary: 'Crepusculum adsuesco vere.',
    updated_at: DateTime.iso8601('2026-02-27T09:47:18.165Z'),
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
    id: 'b9b9b7a0-dae3-4133-a9d1-fa9a7b5843ed',
    metadata: [],
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
    updated_at: DateTime.iso8601('2023-06-05T13:40:04.409Z'),
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
    created_at: DateTime.iso8601('2022-08-07T03:16:43.865Z'),
    description: 'Sapiente.',
    id: '1dd88965-536d-4641-a508-0b97b622bef5',
    is_private: false,
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '26853e59-8a39-416d-88e8-757699c82c57',
        namespace: 'activity',
        slug: 'cimentarius',
        value: 'Reprehenderit verto.',
      ),
    ],
    sub_type: 'TASK',
    title: 'Venio blandior aureus.',
    type: Models::Shared::AtsActivityType::TASK,
    updated_at: DateTime.iso8601('2026-04-04T06:38:15.375Z'),
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
    applied_at: DateTime.iso8601('2025-09-29T18:41:44.750Z'),
    created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
    hired_at: DateTime.iso8601('2026-05-12T18:30:35.456Z'),
    id: '95d97fad-3b9a-4527-bb22-1953ed79ef05',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '382ffa38-ae9e-4b90-9c6f-f3dacf302b7c',
        namespace: 'application',
        slug: 'stella',
        value: 'Caput.',
      ),
    ],
    offers: [],
    original_status: 'vomica',
    original_substatus: 'allatus',
    rejected_at: DateTime.iso8601('2026-10-11T13:07:05.733Z'),
    rejected_reason: 'Cometes amplitudo videlicet talio.',
    source: 'credo',
    status: Models::Shared::AtsApplicationStatus::REVIEWING,
    summary: 'Arguo repudiandae defessus. Adflicto caecus claustrum annus addo vere crebro. Alias sponte turbo sopor vergo surculus nam.',
    updated_at: DateTime.iso8601('2026-10-18T09:21:22.057Z'),
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
      address1: '6790 S 1st Street',
      city: 'Ferrystad',
      country_code: 'US',
      postal_code: '91605',
      region: 'Idaho',
      region_code: 'HI',
    ),
    company_name: 'Lehner and Sons',
    created_at: DateTime.iso8601('2023-10-16T05:42:56.049Z'),
    date_of_birth: DateTime.iso8601('1994-07-05T19:48:57.631Z'),
    education: [
      Models::Shared::AtsCandidateEducation.new(
        degree: 'emphasize tricky',
        end_at: DateTime.iso8601('1978-04-14T07:58:36.326Z'),
        field_of_study: 'curtus',
        institution: 'Abbott - Batz',
        level: 'phd',
        start_at: DateTime.iso8601('1994-06-09T13:31:39.059Z'),
      ),
      Models::Shared::AtsCandidateEducation.new(
        degree: 'blah cappelletti',
        end_at: DateTime.iso8601('1989-09-06T03:32:39.901Z'),
        field_of_study: 'crustulum',
        institution: 'Herman, Franey and Lebsack',
        level: 'highschool',
        start_at: DateTime.iso8601('1992-11-28T20:23:20.311Z'),
      ),
    ],
    emails: [
      Models::Shared::AtsEmail.new(
        email: 'ardith.beatty@outlook.com',
        name: 'Ardith Beatty',
        type: Models::Shared::AtsEmailType::HOME,
      ),
    ],
    experiences: [
      Models::Shared::AtsCandidateExperience.new(
        company_name: 'Kutch, Lind and Marks',
        end_at: DateTime.iso8601('1974-03-01T17:02:58.824Z'),
        start_at: DateTime.iso8601('1999-09-21T22:12:51.663Z'),
        title: 'Lead Security Technician',
      ),
      Models::Shared::AtsCandidateExperience.new(
        company_name: 'Trantow, Sipes and Witting',
        end_at: DateTime.iso8601('2004-10-14T14:01:00.717Z'),
        start_at: DateTime.iso8601('1996-12-15T04:12:04.582Z'),
        title: 'Regional Applications Planner',
      ),
    ],
    first_name: 'Ardith',
    id: 'e2d5ef47-da9e-4500-8493-4ce44bec7b6e',
    image_url: 'https://avatars.githubusercontent.com/u/27464445',
    job_ids: [],
    last_name: 'Beatty',
    link_urls: [
      'https://www.linkedin.com/in/ardith-beatty',
    ],
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'cca4fa50-af15-422e-8c16-8ed5906d98de',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'officia',
      ),
    ],
    name: 'Ardith Beatty',
    origin: Models::Shared::Origin::AGENCY,
    skills: [
      'trepide',
      'voveo',
    ],
    sources: [
      'vesper',
      'utroque',
    ],
    summary: 'Laborum trado carcer delibero patruus totam. Vita cohors cariosus trans denego barba rerum similique. Templum totam suus voluptatem cui depraedor virgo cui comminor commodi.',
    tags: [
      'voro',
    ],
    telephones: [
      Models::Shared::AtsTelephone.new(
        telephone: '(837) 251-3896',
        type: Models::Shared::AtsTelephoneType::MOBILE,
      ),
    ],
    title: 'Customer Division Producer',
    updated_at: DateTime.iso8601('2024-04-28T17:47:32.451Z'),
    web_url: 'https://fragrant-husband.net/',
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
    id: 'b636b5e8-021c-497e-9250-478a87440e00',
    name: 'Gulgowski, Dibbert and Wilderman',
    phone: '1-882-360-2010',
    updated_at: DateTime.iso8601('2020-10-01T04:12:23.719Z'),
    website_url: 'https://www.gulgowskidibbert.com',
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
    filename: 'lonzo_schowalter_resume.pdf',
    id: '907ef7b6-235a-44f3-8ec7-d96d3a868fc2',
    metadata: [],
    type: Models::Shared::AtsDocumentType::COVER_LETTER,
    updated_at: DateTime.iso8601('2022-12-07T04:59:55.146Z'),
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
    end_at: DateTime.iso8601('2021-12-08T06:33:19.583Z'),
    id: 'e4f6fa22-60cf-4f9b-98c5-bf66341af9c5',
    location: '26596 Halle Trafficway',
    meeting_url: 'https://immaculate-foodstuffs.biz',
    metadata: [],
    start_at: DateTime.iso8601('2021-12-08T06:03:19.583Z'),
    status: Models::Shared::AtsInterviewStatus::SCHEDULED,
    updated_at: DateTime.iso8601('2023-09-23T16:39:11.723Z'),
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
    hiring_managers: [],
    id: '0b07a34e-39f9-404a-af24-ab50ae45bbd3',
    industry: 'Handcrafted Bamboo Soap',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '5ae4056e-ffe0-4bd5-bc78-8b4c4dae688f',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'desolo',
      ),
    ],
    minimum_degree: 'Bachelor',
    minimum_experience_years: 3.0,
    name: 'Forward Brand Producer',
    number_of_openings: 1.0,
    openings: [
      Models::Shared::AtsJobOpening.new(
        close_reason: 'Admoveo trado textilis.',
        opened_at: DateTime.iso8601('2026-06-07T21:28:07.934Z'),
        status: Models::Shared::AtsJobOpeningStatus::OPEN,
      ),
    ],
    postings: [
      Models::Shared::AtsJobPosting.new(
        address: Models::Shared::PropertyAtsJobPostingAddress.new(
          address1: '75008 Medhurst Road',
          city: 'Madelynnshire',
          country_code: 'US',
          postal_code: '98754',
          region: 'Wisconsin',
          region_code: 'CO',
        ),
        created_at: DateTime.iso8601('2026-08-02T00:29:26.254Z'),
        description: 'Beatus eum volutabrum balbus victus ipsa tubineus claustrum.',
        id: '0711f01a-d966-4692-856e-ebefe2c72287',
        is_active: false,
        location: '1725 Hessel Keys',
        name: 'International Identity Manager',
        posting_url: 'https://obedient-yak.com',
        updated_at: DateTime.iso8601('2026-08-28T07:52:25.774Z'),
      ),
    ],
    public_job_urls: [
      'https://trustworthy-elver.info',
      'https://parched-dash.info',
    ],
    questions: [
      Models::Shared::AtsJobQuestion.new(
        description: 'Auctus deporto tolero administratio capitulus animi agnosco tendo aetas vado.',
        id: '8a96c284-ea18-4779-bda9-ab1be23a235d',
        max_length: 117.0,
        min_length: 1.0,
        options: [
          'tactus',
          'vehemens',
        ],
        prompt: 'Totam maxime tres tergiversatio.',
        question: 'Doloribus mollitia.',
        required: true,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
      Models::Shared::AtsJobQuestion.new(
        id: '9ed04038-4f62-4955-ba05-9ccf7856a92c',
        max_length: 453.0,
        min_length: 1.0,
        options: [
          'constans',
        ],
        prompt: 'Veritatis sodalitas nemo natus attonbitus reprehenderit voro depono.',
        question: 'Nam.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
      Models::Shared::AtsJobQuestion.new(
        description: 'Taceo rem compello spectaculum mollitia arcus compello.',
        id: '6306a3f2-d536-4273-9170-bad83ea4b5ae',
        max_length: 66.0,
        min_length: 1.0,
        options: [
          'repellendus',
        ],
        prompt: 'Tum tamisium autus.',
        question: 'Confero trepide.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
    ],
    skills: [
      'suadeo',
      'utrimque',
    ],
    status: Models::Shared::AtsJobStatus::ARCHIVED,
    summary: 'Crepusculum adsuesco vere.',
    updated_at: DateTime.iso8601('2026-02-27T09:47:18.165Z'),
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
    id: 'b9b9b7a0-dae3-4133-a9d1-fa9a7b5843ed',
    metadata: [],
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
    updated_at: DateTime.iso8601('2023-06-05T13:40:04.409Z'),
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