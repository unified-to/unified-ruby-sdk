# Ats

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

Creates a AtsActivity. Provide the unified AtsActivity fields in the request body; they are mapped to the provider's API. Returns the created AtsActivity.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsActivity" method="post" path="/ats/{connection_id}/activity" example="ats_activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.ats.create_ats_activity(ats_activity: Models::Shared::AtsActivity.new(
  created_at: DateTime.iso8601('2022-08-07T03:16:43.865Z'),
  description: 'Reprehenderit.',
  id: 'fb09aede-d4a0-4475-8786-644d03730137',
  is_private: false,
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: '4e11224a-51f1-4823-bafd-901a4b34844a',
      namespace: 'activity',
      slug: 'verto',
      value: 'Sint varietas officia aequus stillicidium vereor victus tricesimus vester.'
    ),
  ],
  sub_type: 'TASK',
  title: 'Amplus sapiente cimentarius.',
  type: Models::Shared::AtsActivityType::TASK,
  updated_at: DateTime.iso8601('2026-05-07T08:23:51.711Z')
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

Creates a AtsApplication. Provide the unified AtsApplication fields in the request body; they are mapped to the provider's API. Returns the created AtsApplication.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsApplication" method="post" path="/ats/{connection_id}/application" example="ats_application" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.ats.create_ats_application(ats_application: Models::Shared::AtsApplication.new(
  answers: [],
  applied_at: DateTime.iso8601('2025-10-24T10:39:44.717Z'),
  created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
  hired_at: DateTime.iso8601('2026-06-14T05:09:06.607Z'),
  id: 'd79afaba-ee6a-475c-83cd-7c18be29879d',
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: '51ca9aeb-5c4f-40dd-a08d-ff3ca53d68d6',
      namespace: 'application',
      slug: 'arguo',
      value: 'Defessus occaecati adflicto caecus claustrum annus addo.'
    ),
  ],
  offers: [],
  original_status: 'caput',
  original_substatus: 'admiratio',
  rejected_at: DateTime.iso8601('2026-11-18T05:41:15.907Z'),
  rejected_reason: 'Talio credo vomica allatus stella.',
  source: 'alii',
  status: Models::Shared::AtsApplicationStatus::REVIEWING,
  summary: 'Crebro nostrum alias sponte turbo sopor vergo surculus nam copiose. Enim casso cursus aestus deprecator. Despecto tabella argentum decretum cultellus aveho distinctio verecundia stella.',
  updated_at: DateTime.iso8601('2026-11-25T07:36:12.374Z')
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

Creates a AtsCandidate. Provide the unified AtsCandidate fields in the request body; they are mapped to the provider's API. Returns the created AtsCandidate.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsCandidate" method="post" path="/ats/{connection_id}/candidate" example="ats_candidate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.ats.create_ats_candidate(ats_candidate: Models::Shared::AtsCandidate.new(
  address: Models::Shared::PropertyAtsCandidateAddress.new(
    address1: '699 Legros Falls',
    city: 'New Albertoboro',
    country_code: 'US',
    postal_code: '85550-0688',
    region: 'Minnesota',
    region_code: 'WY'
  ),
  company_name: 'Doyle-Kutch LLC',
  created_at: DateTime.iso8601('2023-10-16T05:42:56.049Z'),
  date_of_birth: DateTime.iso8601('1994-07-05T19:48:57.631Z'),
  education: [
    Models::Shared::AtsCandidateEducation.new(
      degree: 'wilt powerfully',
      end_at: DateTime.iso8601('1978-04-14T07:58:36.326Z'),
      field_of_study: 'totam',
      institution: 'Wunsch - Grimes-Heller',
      level: 'phd',
      start_at: DateTime.iso8601('1994-06-09T13:31:39.059Z')
    ),
    Models::Shared::AtsCandidateEducation.new(
      degree: 'substantial yum',
      end_at: DateTime.iso8601('1989-09-06T03:32:39.901Z'),
      field_of_study: 'commodi',
      institution: 'Franecki and Sons',
      level: 'highschool',
      start_at: DateTime.iso8601('1992-11-28T20:23:20.311Z')
    ),
  ],
  emails: [
    Models::Shared::AtsEmail.new(
      email: 'alyce.rempel@outlook.com',
      name: 'Alyce Rempel',
      type: Models::Shared::AtsEmailType::HOME
    ),
  ],
  experiences: [
    Models::Shared::AtsCandidateExperience.new(
      company_name: 'Mayert - Rohan',
      end_at: DateTime.iso8601('1974-03-01T17:02:58.824Z'),
      start_at: DateTime.iso8601('1999-09-21T22:12:51.663Z'),
      title: 'Central Response Designer'
    ),
    Models::Shared::AtsCandidateExperience.new(
      company_name: 'Padberg, Keeling and Franey',
      end_at: DateTime.iso8601('2004-10-14T14:01:00.717Z'),
      start_at: DateTime.iso8601('1996-12-15T04:12:04.582Z'),
      title: 'Central Communications Producer'
    ),
  ],
  first_name: 'Alyce',
  has_do_not_contact: false,
  id: '90114f9f-0939-422f-b7ac-fbb64f77ffcf',
  image_url: 'https://avatars.githubusercontent.com/u/99913246',
  is_private: true,
  job_ids: [],
  last_name: 'Rempel',
  link_urls: [
    'https://www.linkedin.com/in/alyce-rempel',
  ],
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: '755e19fd-5db0-4c06-a617-dcd674473879',
      namespace: 'custom',
      slug: 'custom_field',
      value: 'chirographum'
    ),
  ],
  name: 'Alyce Rempel',
  origin: Models::Shared::Origin::AGENCY,
  skills: [
    'curvo',
    'voveo',
  ],
  sources: [
    'tripudio',
    'volup',
  ],
  summary: 'Spero nostrum damnatio averto pecus cervus aspicio. Stabilis thesis admiratio. Acquiro sperno voluptate laboriosam comitatus teres doloribus canonicus considero tersus.',
  tags: [
    'alo',
  ],
  telephones: [
    Models::Shared::AtsTelephone.new(
      telephone: '(251) 489-6457',
      type: Models::Shared::AtsTelephoneType::MOBILE
    ),
  ],
  title: 'Internal Paradigm Consultant',
  updated_at: DateTime.iso8601('2024-05-05T11:50:36.357Z'),
  web_url: 'https://light-meander.com/'
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

Creates a AtsCompany. Provide the unified AtsCompany fields in the request body; they are mapped to the provider's API. Returns the created AtsCompany.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsCompany" method="post" path="/ats/{connection_id}/company" example="ats_company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.ats.create_ats_company(ats_company: Models::Shared::AtsCompany.new(
  created_at: DateTime.iso8601('2019-04-22T03:50:02.920Z'),
  fees: [
    Models::Shared::AtsFee.new(
      percentage: 23.0,
      type: Models::Shared::AtsFeeType::CONTINGENCY
    ),
  ],
  id: '9f15e026-f097-4d3f-a617-64d035110d6e',
  name: 'Streich, Mohr and Barton',
  phone: '245-586-5728 x0090',
  updated_at: DateTime.iso8601('2020-10-08T12:06:27.092Z'),
  website_url: 'https://www.streichmohr.com'
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

Creates a AtsDocument. Provide the unified AtsDocument fields in the request body; they are mapped to the provider's API. Returns the created AtsDocument.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsDocument" method="post" path="/ats/{connection_id}/document" example="ats_document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.ats.create_ats_document(ats_document: Models::Shared::AtsDocument.new(
  created_at: DateTime.iso8601('2021-08-20T08:00:27.437Z'),
  document_url: 'https://thin-video.org/',
  filename: 'reggie_langosh_resume.pdf',
  id: 'c71edcbc-7c08-4b3b-8cfe-fd776162f0ca',
  metadata: [],
  type: Models::Shared::AtsDocumentType::COVER_LETTER,
  updated_at: DateTime.iso8601('2022-12-16T18:02:49.612Z')
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

Creates a AtsInterview. Provide the unified AtsInterview fields in the request body; they are mapped to the provider's API. Returns the created AtsInterview.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsInterview" method="post" path="/ats/{connection_id}/interview" example="ats_interview" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.ats.create_ats_interview(ats_interview: Models::Shared::AtsInterview.new(
  created_at: DateTime.iso8601('2021-11-28T03:14:47.774Z'),
  end_at: DateTime.iso8601('2021-12-08T06:33:19.583Z'),
  id: 'be47b0f3-ef9e-4ee3-bdd6-e54c2fa81608',
  location: '9604 S Pine Street',
  meeting_url: 'https://gummy-battle.name/',
  metadata: [],
  start_at: DateTime.iso8601('2021-12-08T06:03:19.583Z'),
  status: Models::Shared::AtsInterviewStatus::SCHEDULED,
  updated_at: DateTime.iso8601('2023-10-07T19:48:00.910Z')
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

Creates a AtsJob. Provide the unified AtsJob fields in the request body; they are mapped to the provider's API. Returns the created AtsJob.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsJob" method="post" path="/ats/{connection_id}/job" example="ats_job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.ats.create_ats_job(ats_job: Models::Shared::AtsJob.new(
  addresses: [
    Models::Shared::AtsAddress.new(
      address1: '458 E 8th Street',
      city: 'Visalia',
      country_code: 'US',
      postal_code: '60669-0678',
      region: 'Oregon',
      region_code: 'DE'
    ),
  ],
  compensation: [
    Models::Shared::AtsCompensation.new(
      currency: 'GBP',
      frequency: Models::Shared::Frequency::DAY,
      max: 174_303.0,
      min: 174_042.0,
      type: Models::Shared::AtsCompensationType::BONUS
    ),
    Models::Shared::AtsCompensation.new(
      currency: 'KMF',
      frequency: Models::Shared::Frequency::MONTH,
      max: 171_171.0,
      min: 151_975.0,
      type: Models::Shared::AtsCompensationType::SALARY
    ),
  ],
  created_at: DateTime.iso8601('2023-06-16T12:51:44.518Z'),
  description: 'Senior',
  employment_type: Models::Shared::EmploymentType::FREELANCE,
  fees: [
    Models::Shared::AtsFee.new(
      amount: 35_146.0,
      currency: 'AFN',
      type: Models::Shared::AtsFeeType::CONTINGENCY
    ),
  ],
  hiring_managers: [],
  id: 'f5626491-45e0-4fd7-be77-93f9cec4f73c',
  industry: 'Refined Ceramic Keyboard',
  language_locale: 'en',
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {
        'display_name' => 'Custom Property',
      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: 'aa12f0db-a14a-42c6-9d3c-6560f4b0181c',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'cursus'
    ),
  ],
  minimum_degree: 'Bachelor',
  minimum_experience_years: 3.0,
  name: 'Senior Interactions Developer',
  number_of_openings: 1.0,
  openings: [
    Models::Shared::AtsJobOpening.new(
      close_reason: 'Tolero aequus tamquam inflammatio asporto canis vinitor utrum.',
      opened_at: DateTime.iso8601('2026-07-11T17:02:30.723Z'),
      status: Models::Shared::AtsJobOpeningStatus::OPEN
    ),
  ],
  postings: [
    Models::Shared::AtsJobPosting.new(
      address: Models::Shared::PropertyAtsJobPostingAddress.new(
        address1: '295 First Street',
        city: 'East Agustinton',
        country_code: 'US',
        postal_code: '57059',
        region: 'Utah',
        region_code: 'NE'
      ),
      created_at: DateTime.iso8601('2026-09-06T13:12:28.817Z'),
      description: 'Sublime.',
      id: 'b3c56ee6-2962-49e9-b16f-99babbd4b262',
      is_active: false,
      location: '5699 Purdy Motorway',
      name: 'Legacy Implementation Orchestrator',
      posting_url: 'https://elementary-privilege.com/',
      updated_at: DateTime.iso8601('2026-10-03T16:13:35.259Z')
    ),
  ],
  public_job_urls: [
    'https://parched-dash.info',
    'https://mild-midwife.org/',
  ],
  questions: [
    Models::Shared::AtsJobQuestion.new(
      description: 'Capitulus.',
      id: 'a2e794bc-9b56-4eaf-9811-f7fe80fd528b',
      max_length: 214.0,
      min_length: 1.0,
      options: [
        'aetas',
        'vado',
      ],
      prompt: 'Agnosco tendo.',
      question: 'Deporto tolero.',
      required: true,
      type: Models::Shared::AtsJobQuestionType::TEXT
    ),
    Models::Shared::AtsJobQuestion.new(
      id: '5acb977f-938d-4107-9974-7556889a2113',
      max_length: 309.0,
      min_length: 1.0,
      options: [
        'sodalitas',
      ],
      prompt: 'Supra veritatis.',
      question: 'Maxime tres tergiversatio tactus vehemens architecto ab nam defetiscor.',
      required: false,
      type: Models::Shared::AtsJobQuestionType::TEXT
    ),
    Models::Shared::AtsJobQuestion.new(
      description: 'Confero trepide.',
      id: '78bd6018-2f9d-48b3-a55d-bee006c725e5',
      max_length: 428.0,
      min_length: 1.0,
      options: [
        'censura',
      ],
      prompt: 'Taceo rem compello spectaculum mollitia arcus compello.',
      question: 'Attonbitus reprehenderit voro depono constans vehemens.',
      required: false,
      type: Models::Shared::AtsJobQuestionType::TEXT
    ),
  ],
  skills: [
    'similique',
    'absque',
  ],
  status: Models::Shared::AtsJobStatus::ARCHIVED,
  summary: 'Contra damno desolo suadeo utrimque cresco aetas turpis.',
  updated_at: DateTime.iso8601('2026-03-30T02:21:39.674Z')
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

Creates a AtsScorecard. Provide the unified AtsScorecard fields in the request body; they are mapped to the provider's API. Returns the created AtsScorecard.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsScorecard" method="post" path="/ats/{connection_id}/scorecard" example="ats_scorecard" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.ats.create_ats_scorecard(ats_scorecard: Models::Shared::AtsScorecard.new(
  comment: 'Aliquam.',
  created_at: DateTime.iso8601('2022-02-20T17:09:45.498Z'),
  id: '916dfcbc-8f94-40cc-8ba1-298e04657d2d',
  metadata: [],
  questions: [
    Models::Shared::AtsScorecardQuestion.new(
      description: 'Pecto vulpes libero vomer comburo.',
      text: 'Desidero modi tamdiu auxilium defessus adimpleo clementia tero.'
    ),
    Models::Shared::AtsScorecardQuestion.new(
      answer: 'Conatus cicuta doloremque statua bonus.',
      description: 'Aduro viscus celebrer.',
      text: 'Decretum.'
    ),
  ],
  recommendation: Models::Shared::Recommendation::STRONG_YES,
  updated_at: DateTime.iso8601('2023-06-16T01:21:27.440Z')
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

Retrieves a single AtsActivity by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsActivity" method="get" path="/ats/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AtsApplication by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsApplication" method="get" path="/ats/{connection_id}/application/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AtsStatus by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsApplicationstatus" method="get" path="/ats/{connection_id}/applicationstatus/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AtsCandidate by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsCandidate" method="get" path="/ats/{connection_id}/candidate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AtsCompany by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsCompany" method="get" path="/ats/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AtsDocument by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsDocument" method="get" path="/ats/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AtsInterview by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsInterview" method="get" path="/ats/{connection_id}/interview/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AtsJob by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsJob" method="get" path="/ats/{connection_id}/job/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AtsScorecard by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsScorecard" method="get" path="/ats/{connection_id}/scorecard/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Returns a list of AtsActivities. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsActivities" method="get" path="/ats/{connection_id}/activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsActivitiesRequest.new(
  connection_id: '<id>'
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

Returns a list of AtsApplications. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsApplications" method="get" path="/ats/{connection_id}/application" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsApplicationsRequest.new(
  connection_id: '<id>'
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

Returns a list of AtsStatuses. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsApplicationstatuses" method="get" path="/ats/{connection_id}/applicationstatus" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsApplicationstatusesRequest.new(
  connection_id: '<id>'
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

Returns a list of AtsCandidates. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsCandidates" method="get" path="/ats/{connection_id}/candidate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsCandidatesRequest.new(
  connection_id: '<id>'
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

Returns a list of AtsCompanies. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsCompanies" method="get" path="/ats/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsCompaniesRequest.new(
  connection_id: '<id>'
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

Returns a list of AtsDocuments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsDocuments" method="get" path="/ats/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsDocumentsRequest.new(
  connection_id: '<id>'
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

Returns a list of AtsInterviews. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsInterviews" method="get" path="/ats/{connection_id}/interview" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsInterviewsRequest.new(
  connection_id: '<id>'
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

Returns a list of AtsJobs. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsJobs" method="get" path="/ats/{connection_id}/job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsJobsRequest.new(
  connection_id: '<id>'
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

Returns a list of AtsScorecards. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsScorecards" method="get" path="/ats/{connection_id}/scorecard" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsScorecardsRequest.new(
  connection_id: '<id>'
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

Updates the AtsActivity identified by `id`. Provide the unified AtsActivity fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsActivity" method="patch" path="/ats/{connection_id}/activity/{id}" example="ats_activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAtsActivityRequest.new(
  ats_activity: Models::Shared::AtsActivity.new(
    created_at: DateTime.iso8601('2022-08-07T03:16:43.865Z'),
    description: 'Reprehenderit.',
    id: '03a6f031-2c59-45f1-add2-4d906480904e',
    is_private: false,
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'def971ca-781f-438b-ae8e-1b92bcc54e47',
        namespace: 'activity',
        slug: 'verto',
        value: 'Sint varietas officia aequus stillicidium vereor victus tricesimus vester.'
      ),
    ],
    sub_type: 'TASK',
    title: 'Amplus sapiente cimentarius.',
    type: Models::Shared::AtsActivityType::TASK,
    updated_at: DateTime.iso8601('2026-05-07T08:23:51.725Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsApplication identified by `id`. Provide the unified AtsApplication fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsApplication" method="patch" path="/ats/{connection_id}/application/{id}" example="ats_application" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAtsApplicationRequest.new(
  ats_application: Models::Shared::AtsApplication.new(
    answers: [],
    applied_at: DateTime.iso8601('2025-10-24T10:39:44.736Z'),
    created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
    hired_at: DateTime.iso8601('2026-06-14T05:09:06.632Z'),
    id: '1f8d97ba-ec20-4b90-b874-17e68a52013e',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '65a052a8-8e5c-470c-a37a-d85fadef393a',
        namespace: 'application',
        slug: 'arguo',
        value: 'Defessus occaecati adflicto caecus claustrum annus addo.'
      ),
    ],
    offers: [],
    original_status: 'caput',
    original_substatus: 'admiratio',
    rejected_at: DateTime.iso8601('2026-11-18T05:41:15.937Z'),
    rejected_reason: 'Talio credo vomica allatus stella.',
    source: 'alii',
    status: Models::Shared::AtsApplicationStatus::REVIEWING,
    summary: 'Crebro nostrum alias sponte turbo sopor vergo surculus nam copiose. Enim casso cursus aestus deprecator. Despecto tabella argentum decretum cultellus aveho distinctio verecundia stella.',
    updated_at: DateTime.iso8601('2026-11-25T07:36:12.404Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsCandidate identified by `id`. Provide the unified AtsCandidate fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsCandidate" method="patch" path="/ats/{connection_id}/candidate/{id}" example="ats_candidate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAtsCandidateRequest.new(
  ats_candidate: Models::Shared::AtsCandidate.new(
    address: Models::Shared::PropertyAtsCandidateAddress.new(
      address1: '699 Legros Falls',
      city: 'New Albertoboro',
      country_code: 'US',
      postal_code: '85550-0688',
      region: 'Minnesota',
      region_code: 'WY'
    ),
    company_name: 'Doyle-Kutch LLC',
    created_at: DateTime.iso8601('2023-10-16T05:42:56.049Z'),
    date_of_birth: DateTime.iso8601('1994-07-05T19:48:57.631Z'),
    education: [
      Models::Shared::AtsCandidateEducation.new(
        degree: 'wilt powerfully',
        end_at: DateTime.iso8601('1978-04-14T07:58:36.326Z'),
        field_of_study: 'totam',
        institution: 'Wunsch - Grimes-Heller',
        level: 'phd',
        start_at: DateTime.iso8601('1994-06-09T13:31:39.059Z')
      ),
      Models::Shared::AtsCandidateEducation.new(
        degree: 'substantial yum',
        end_at: DateTime.iso8601('1989-09-06T03:32:39.901Z'),
        field_of_study: 'commodi',
        institution: 'Franecki and Sons',
        level: 'highschool',
        start_at: DateTime.iso8601('1992-11-28T20:23:20.311Z')
      ),
    ],
    emails: [
      Models::Shared::AtsEmail.new(
        email: 'alyce.rempel@outlook.com',
        name: 'Alyce Rempel',
        type: Models::Shared::AtsEmailType::HOME
      ),
    ],
    experiences: [
      Models::Shared::AtsCandidateExperience.new(
        company_name: 'Mayert - Rohan',
        end_at: DateTime.iso8601('1974-03-01T17:02:58.824Z'),
        start_at: DateTime.iso8601('1999-09-21T22:12:51.663Z'),
        title: 'Central Response Designer'
      ),
      Models::Shared::AtsCandidateExperience.new(
        company_name: 'Padberg, Keeling and Franey',
        end_at: DateTime.iso8601('2004-10-14T14:01:00.717Z'),
        start_at: DateTime.iso8601('1996-12-15T04:12:04.582Z'),
        title: 'Central Communications Producer'
      ),
    ],
    first_name: 'Alyce',
    has_do_not_contact: false,
    id: '87e972b6-9cb0-4597-8685-ff8d26a6d813',
    image_url: 'https://avatars.githubusercontent.com/u/99913246',
    is_private: true,
    job_ids: [],
    last_name: 'Rempel',
    link_urls: [
      'https://www.linkedin.com/in/alyce-rempel',
    ],
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '4ac38584-1f62-4b0a-b683-22c45dad5ddd',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'chirographum'
      ),
    ],
    name: 'Alyce Rempel',
    origin: Models::Shared::Origin::AGENCY,
    skills: [
      'curvo',
      'voveo',
    ],
    sources: [
      'tripudio',
      'volup',
    ],
    summary: 'Spero nostrum damnatio averto pecus cervus aspicio. Stabilis thesis admiratio. Acquiro sperno voluptate laboriosam comitatus teres doloribus canonicus considero tersus.',
    tags: [
      'alo',
    ],
    telephones: [
      Models::Shared::AtsTelephone.new(
        telephone: '(251) 489-6457',
        type: Models::Shared::AtsTelephoneType::MOBILE
      ),
    ],
    title: 'Internal Paradigm Consultant',
    updated_at: DateTime.iso8601('2024-05-05T11:50:36.362Z'),
    web_url: 'https://light-meander.com/'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsCompany identified by `id`. Provide the unified AtsCompany fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsCompany" method="patch" path="/ats/{connection_id}/company/{id}" example="ats_company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAtsCompanyRequest.new(
  ats_company: Models::Shared::AtsCompany.new(
    created_at: DateTime.iso8601('2019-04-22T03:50:02.920Z'),
    fees: [
      Models::Shared::AtsFee.new(
        percentage: 23.0,
        type: Models::Shared::AtsFeeType::CONTINGENCY
      ),
    ],
    id: '234a8086-78c0-41e0-b03d-67176ef65edc',
    name: 'Streich, Mohr and Barton',
    phone: '245-586-5728 x0090',
    updated_at: DateTime.iso8601('2020-10-08T12:06:27.096Z'),
    website_url: 'https://www.streichmohr.com'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsDocument identified by `id`. Provide the unified AtsDocument fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsDocument" method="patch" path="/ats/{connection_id}/document/{id}" example="ats_document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAtsDocumentRequest.new(
  ats_document: Models::Shared::AtsDocument.new(
    created_at: DateTime.iso8601('2021-08-20T08:00:27.437Z'),
    document_url: 'https://thin-video.org/',
    filename: 'reggie_langosh_resume.pdf',
    id: '75c4e97f-d5b0-41ae-a7cd-e177cab5cae9',
    metadata: [],
    type: Models::Shared::AtsDocumentType::COVER_LETTER,
    updated_at: DateTime.iso8601('2022-12-16T18:02:49.614Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsInterview identified by `id`. Provide the unified AtsInterview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsInterview" method="patch" path="/ats/{connection_id}/interview/{id}" example="ats_interview" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAtsInterviewRequest.new(
  ats_interview: Models::Shared::AtsInterview.new(
    created_at: DateTime.iso8601('2021-11-28T03:14:47.774Z'),
    end_at: DateTime.iso8601('2021-12-08T06:33:19.583Z'),
    id: '49325416-4e65-4995-89ba-6c88abe2b960',
    location: '9604 S Pine Street',
    meeting_url: 'https://gummy-battle.name/',
    metadata: [],
    start_at: DateTime.iso8601('2021-12-08T06:03:19.583Z'),
    status: Models::Shared::AtsInterviewStatus::SCHEDULED,
    updated_at: DateTime.iso8601('2023-10-07T19:48:00.913Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsJob identified by `id`. Provide the unified AtsJob fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsJob" method="patch" path="/ats/{connection_id}/job/{id}" example="ats_job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAtsJobRequest.new(
  ats_job: Models::Shared::AtsJob.new(
    addresses: [
      Models::Shared::AtsAddress.new(
        address1: '458 E 8th Street',
        city: 'Visalia',
        country_code: 'US',
        postal_code: '60669-0678',
        region: 'Oregon',
        region_code: 'DE'
      ),
    ],
    compensation: [
      Models::Shared::AtsCompensation.new(
        currency: 'GBP',
        frequency: Models::Shared::Frequency::DAY,
        max: 174_303.0,
        min: 174_042.0,
        type: Models::Shared::AtsCompensationType::BONUS
      ),
      Models::Shared::AtsCompensation.new(
        currency: 'KMF',
        frequency: Models::Shared::Frequency::MONTH,
        max: 171_171.0,
        min: 151_975.0,
        type: Models::Shared::AtsCompensationType::SALARY
      ),
    ],
    created_at: DateTime.iso8601('2023-06-16T12:51:44.518Z'),
    description: 'Senior',
    employment_type: Models::Shared::EmploymentType::FREELANCE,
    fees: [
      Models::Shared::AtsFee.new(
        amount: 35_146.0,
        currency: 'AFN',
        type: Models::Shared::AtsFeeType::CONTINGENCY
      ),
    ],
    hiring_managers: [],
    id: '81dfe3ab-ab56-4172-b410-5e0659c94e5a',
    industry: 'Refined Ceramic Keyboard',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'dff7d8c5-6535-4377-aec6-9a1ad578e8e0',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'cursus'
      ),
    ],
    minimum_degree: 'Bachelor',
    minimum_experience_years: 3.0,
    name: 'Senior Interactions Developer',
    number_of_openings: 1.0,
    openings: [
      Models::Shared::AtsJobOpening.new(
        close_reason: 'Tolero aequus tamquam inflammatio asporto canis vinitor utrum.',
        opened_at: DateTime.iso8601('2026-07-11T17:02:30.764Z'),
        status: Models::Shared::AtsJobOpeningStatus::OPEN
      ),
    ],
    postings: [
      Models::Shared::AtsJobPosting.new(
        address: Models::Shared::PropertyAtsJobPostingAddress.new(
          address1: '295 First Street',
          city: 'East Agustinton',
          country_code: 'US',
          postal_code: '57059',
          region: 'Utah',
          region_code: 'NE'
        ),
        created_at: DateTime.iso8601('2026-09-06T13:12:28.860Z'),
        description: 'Sublime.',
        id: '1dcbbe5a-6c34-43fd-b8bc-2089c9be5a18',
        is_active: false,
        location: '5699 Purdy Motorway',
        name: 'Legacy Implementation Orchestrator',
        posting_url: 'https://elementary-privilege.com/',
        updated_at: DateTime.iso8601('2026-10-03T16:13:35.303Z')
      ),
    ],
    public_job_urls: [
      'https://parched-dash.info',
      'https://mild-midwife.org/',
    ],
    questions: [
      Models::Shared::AtsJobQuestion.new(
        description: 'Capitulus.',
        id: 'add03fa2-7f16-4d43-8f41-8bd2ccfdab5b',
        max_length: 214.0,
        min_length: 1.0,
        options: [
          'aetas',
          'vado',
        ],
        prompt: 'Agnosco tendo.',
        question: 'Deporto tolero.',
        required: true,
        type: Models::Shared::AtsJobQuestionType::TEXT
      ),
      Models::Shared::AtsJobQuestion.new(
        id: 'a991ec23-2566-4c96-ac51-efa2927b159b',
        max_length: 309.0,
        min_length: 1.0,
        options: [
          'sodalitas',
        ],
        prompt: 'Supra veritatis.',
        question: 'Maxime tres tergiversatio tactus vehemens architecto ab nam defetiscor.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT
      ),
      Models::Shared::AtsJobQuestion.new(
        description: 'Confero trepide.',
        id: 'f69f8d0f-4a9d-4d27-b785-3fa7b50c5365',
        max_length: 428.0,
        min_length: 1.0,
        options: [
          'censura',
        ],
        prompt: 'Taceo rem compello spectaculum mollitia arcus compello.',
        question: 'Attonbitus reprehenderit voro depono constans vehemens.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT
      ),
    ],
    skills: [
      'similique',
      'absque',
    ],
    status: Models::Shared::AtsJobStatus::ARCHIVED,
    summary: 'Contra damno desolo suadeo utrimque cresco aetas turpis.',
    updated_at: DateTime.iso8601('2026-03-30T02:21:39.711Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsScorecard identified by `id`. Provide the unified AtsScorecard fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsScorecard" method="patch" path="/ats/{connection_id}/scorecard/{id}" example="ats_scorecard" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAtsScorecardRequest.new(
  ats_scorecard: Models::Shared::AtsScorecard.new(
    comment: 'Aliquam.',
    created_at: DateTime.iso8601('2022-02-20T17:09:45.498Z'),
    id: 'cb717d5a-b5f9-4659-8486-468b91e132db',
    metadata: [],
    questions: [
      Models::Shared::AtsScorecardQuestion.new(
        description: 'Pecto vulpes libero vomer comburo.',
        text: 'Desidero modi tamdiu auxilium defessus adimpleo clementia tero.'
      ),
      Models::Shared::AtsScorecardQuestion.new(
        answer: 'Conatus cicuta doloremque statua bonus.',
        description: 'Aduro viscus celebrer.',
        text: 'Decretum.'
      ),
    ],
    recommendation: Models::Shared::Recommendation::STRONG_YES,
    updated_at: DateTime.iso8601('2023-06-16T01:21:27.444Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Deletes the AtsActivity identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsActivity" method="delete" path="/ats/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AtsApplication identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsApplication" method="delete" path="/ats/{connection_id}/application/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AtsCandidate identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsCandidate" method="delete" path="/ats/{connection_id}/candidate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AtsCompany identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsCompany" method="delete" path="/ats/{connection_id}/company/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AtsDocument identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsDocument" method="delete" path="/ats/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AtsInterview identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsInterview" method="delete" path="/ats/{connection_id}/interview/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AtsJob identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsJob" method="delete" path="/ats/{connection_id}/job/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AtsScorecard identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsScorecard" method="delete" path="/ats/{connection_id}/scorecard/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Updates the AtsActivity identified by `id`. Provide the unified AtsActivity fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsActivity" method="put" path="/ats/{connection_id}/activity/{id}" example="ats_activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAtsActivityRequest.new(
  ats_activity: Models::Shared::AtsActivity.new(
    created_at: DateTime.iso8601('2022-08-07T03:16:43.865Z'),
    description: 'Reprehenderit.',
    id: '03a6f031-2c59-45f1-add2-4d906480904e',
    is_private: false,
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'def971ca-781f-438b-ae8e-1b92bcc54e47',
        namespace: 'activity',
        slug: 'verto',
        value: 'Sint varietas officia aequus stillicidium vereor victus tricesimus vester.'
      ),
    ],
    sub_type: 'TASK',
    title: 'Amplus sapiente cimentarius.',
    type: Models::Shared::AtsActivityType::TASK,
    updated_at: DateTime.iso8601('2026-05-07T08:23:51.725Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsApplication identified by `id`. Provide the unified AtsApplication fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsApplication" method="put" path="/ats/{connection_id}/application/{id}" example="ats_application" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAtsApplicationRequest.new(
  ats_application: Models::Shared::AtsApplication.new(
    answers: [],
    applied_at: DateTime.iso8601('2025-10-24T10:39:44.736Z'),
    created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
    hired_at: DateTime.iso8601('2026-06-14T05:09:06.632Z'),
    id: '1f8d97ba-ec20-4b90-b874-17e68a52013e',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '65a052a8-8e5c-470c-a37a-d85fadef393a',
        namespace: 'application',
        slug: 'arguo',
        value: 'Defessus occaecati adflicto caecus claustrum annus addo.'
      ),
    ],
    offers: [],
    original_status: 'caput',
    original_substatus: 'admiratio',
    rejected_at: DateTime.iso8601('2026-11-18T05:41:15.937Z'),
    rejected_reason: 'Talio credo vomica allatus stella.',
    source: 'alii',
    status: Models::Shared::AtsApplicationStatus::REVIEWING,
    summary: 'Crebro nostrum alias sponte turbo sopor vergo surculus nam copiose. Enim casso cursus aestus deprecator. Despecto tabella argentum decretum cultellus aveho distinctio verecundia stella.',
    updated_at: DateTime.iso8601('2026-11-25T07:36:12.404Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsCandidate identified by `id`. Provide the unified AtsCandidate fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsCandidate" method="put" path="/ats/{connection_id}/candidate/{id}" example="ats_candidate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAtsCandidateRequest.new(
  ats_candidate: Models::Shared::AtsCandidate.new(
    address: Models::Shared::PropertyAtsCandidateAddress.new(
      address1: '699 Legros Falls',
      city: 'New Albertoboro',
      country_code: 'US',
      postal_code: '85550-0688',
      region: 'Minnesota',
      region_code: 'WY'
    ),
    company_name: 'Doyle-Kutch LLC',
    created_at: DateTime.iso8601('2023-10-16T05:42:56.049Z'),
    date_of_birth: DateTime.iso8601('1994-07-05T19:48:57.631Z'),
    education: [
      Models::Shared::AtsCandidateEducation.new(
        degree: 'wilt powerfully',
        end_at: DateTime.iso8601('1978-04-14T07:58:36.326Z'),
        field_of_study: 'totam',
        institution: 'Wunsch - Grimes-Heller',
        level: 'phd',
        start_at: DateTime.iso8601('1994-06-09T13:31:39.059Z')
      ),
      Models::Shared::AtsCandidateEducation.new(
        degree: 'substantial yum',
        end_at: DateTime.iso8601('1989-09-06T03:32:39.901Z'),
        field_of_study: 'commodi',
        institution: 'Franecki and Sons',
        level: 'highschool',
        start_at: DateTime.iso8601('1992-11-28T20:23:20.311Z')
      ),
    ],
    emails: [
      Models::Shared::AtsEmail.new(
        email: 'alyce.rempel@outlook.com',
        name: 'Alyce Rempel',
        type: Models::Shared::AtsEmailType::HOME
      ),
    ],
    experiences: [
      Models::Shared::AtsCandidateExperience.new(
        company_name: 'Mayert - Rohan',
        end_at: DateTime.iso8601('1974-03-01T17:02:58.824Z'),
        start_at: DateTime.iso8601('1999-09-21T22:12:51.663Z'),
        title: 'Central Response Designer'
      ),
      Models::Shared::AtsCandidateExperience.new(
        company_name: 'Padberg, Keeling and Franey',
        end_at: DateTime.iso8601('2004-10-14T14:01:00.717Z'),
        start_at: DateTime.iso8601('1996-12-15T04:12:04.582Z'),
        title: 'Central Communications Producer'
      ),
    ],
    first_name: 'Alyce',
    has_do_not_contact: false,
    id: '87e972b6-9cb0-4597-8685-ff8d26a6d813',
    image_url: 'https://avatars.githubusercontent.com/u/99913246',
    is_private: true,
    job_ids: [],
    last_name: 'Rempel',
    link_urls: [
      'https://www.linkedin.com/in/alyce-rempel',
    ],
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '4ac38584-1f62-4b0a-b683-22c45dad5ddd',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'chirographum'
      ),
    ],
    name: 'Alyce Rempel',
    origin: Models::Shared::Origin::AGENCY,
    skills: [
      'curvo',
      'voveo',
    ],
    sources: [
      'tripudio',
      'volup',
    ],
    summary: 'Spero nostrum damnatio averto pecus cervus aspicio. Stabilis thesis admiratio. Acquiro sperno voluptate laboriosam comitatus teres doloribus canonicus considero tersus.',
    tags: [
      'alo',
    ],
    telephones: [
      Models::Shared::AtsTelephone.new(
        telephone: '(251) 489-6457',
        type: Models::Shared::AtsTelephoneType::MOBILE
      ),
    ],
    title: 'Internal Paradigm Consultant',
    updated_at: DateTime.iso8601('2024-05-05T11:50:36.362Z'),
    web_url: 'https://light-meander.com/'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsCompany identified by `id`. Provide the unified AtsCompany fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsCompany" method="put" path="/ats/{connection_id}/company/{id}" example="ats_company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAtsCompanyRequest.new(
  ats_company: Models::Shared::AtsCompany.new(
    created_at: DateTime.iso8601('2019-04-22T03:50:02.920Z'),
    fees: [
      Models::Shared::AtsFee.new(
        percentage: 23.0,
        type: Models::Shared::AtsFeeType::CONTINGENCY
      ),
    ],
    id: '234a8086-78c0-41e0-b03d-67176ef65edc',
    name: 'Streich, Mohr and Barton',
    phone: '245-586-5728 x0090',
    updated_at: DateTime.iso8601('2020-10-08T12:06:27.096Z'),
    website_url: 'https://www.streichmohr.com'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsDocument identified by `id`. Provide the unified AtsDocument fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsDocument" method="put" path="/ats/{connection_id}/document/{id}" example="ats_document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAtsDocumentRequest.new(
  ats_document: Models::Shared::AtsDocument.new(
    created_at: DateTime.iso8601('2021-08-20T08:00:27.437Z'),
    document_url: 'https://thin-video.org/',
    filename: 'reggie_langosh_resume.pdf',
    id: '75c4e97f-d5b0-41ae-a7cd-e177cab5cae9',
    metadata: [],
    type: Models::Shared::AtsDocumentType::COVER_LETTER,
    updated_at: DateTime.iso8601('2022-12-16T18:02:49.614Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsInterview identified by `id`. Provide the unified AtsInterview fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsInterview" method="put" path="/ats/{connection_id}/interview/{id}" example="ats_interview" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAtsInterviewRequest.new(
  ats_interview: Models::Shared::AtsInterview.new(
    created_at: DateTime.iso8601('2021-11-28T03:14:47.774Z'),
    end_at: DateTime.iso8601('2021-12-08T06:33:19.583Z'),
    id: '49325416-4e65-4995-89ba-6c88abe2b960',
    location: '9604 S Pine Street',
    meeting_url: 'https://gummy-battle.name/',
    metadata: [],
    start_at: DateTime.iso8601('2021-12-08T06:03:19.583Z'),
    status: Models::Shared::AtsInterviewStatus::SCHEDULED,
    updated_at: DateTime.iso8601('2023-10-07T19:48:00.913Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsJob identified by `id`. Provide the unified AtsJob fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsJob" method="put" path="/ats/{connection_id}/job/{id}" example="ats_job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAtsJobRequest.new(
  ats_job: Models::Shared::AtsJob.new(
    addresses: [
      Models::Shared::AtsAddress.new(
        address1: '458 E 8th Street',
        city: 'Visalia',
        country_code: 'US',
        postal_code: '60669-0678',
        region: 'Oregon',
        region_code: 'DE'
      ),
    ],
    compensation: [
      Models::Shared::AtsCompensation.new(
        currency: 'GBP',
        frequency: Models::Shared::Frequency::DAY,
        max: 174_303.0,
        min: 174_042.0,
        type: Models::Shared::AtsCompensationType::BONUS
      ),
      Models::Shared::AtsCompensation.new(
        currency: 'KMF',
        frequency: Models::Shared::Frequency::MONTH,
        max: 171_171.0,
        min: 151_975.0,
        type: Models::Shared::AtsCompensationType::SALARY
      ),
    ],
    created_at: DateTime.iso8601('2023-06-16T12:51:44.518Z'),
    description: 'Senior',
    employment_type: Models::Shared::EmploymentType::FREELANCE,
    fees: [
      Models::Shared::AtsFee.new(
        amount: 35_146.0,
        currency: 'AFN',
        type: Models::Shared::AtsFeeType::CONTINGENCY
      ),
    ],
    hiring_managers: [],
    id: '81dfe3ab-ab56-4172-b410-5e0659c94e5a',
    industry: 'Refined Ceramic Keyboard',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'dff7d8c5-6535-4377-aec6-9a1ad578e8e0',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'cursus'
      ),
    ],
    minimum_degree: 'Bachelor',
    minimum_experience_years: 3.0,
    name: 'Senior Interactions Developer',
    number_of_openings: 1.0,
    openings: [
      Models::Shared::AtsJobOpening.new(
        close_reason: 'Tolero aequus tamquam inflammatio asporto canis vinitor utrum.',
        opened_at: DateTime.iso8601('2026-07-11T17:02:30.764Z'),
        status: Models::Shared::AtsJobOpeningStatus::OPEN
      ),
    ],
    postings: [
      Models::Shared::AtsJobPosting.new(
        address: Models::Shared::PropertyAtsJobPostingAddress.new(
          address1: '295 First Street',
          city: 'East Agustinton',
          country_code: 'US',
          postal_code: '57059',
          region: 'Utah',
          region_code: 'NE'
        ),
        created_at: DateTime.iso8601('2026-09-06T13:12:28.860Z'),
        description: 'Sublime.',
        id: '1dcbbe5a-6c34-43fd-b8bc-2089c9be5a18',
        is_active: false,
        location: '5699 Purdy Motorway',
        name: 'Legacy Implementation Orchestrator',
        posting_url: 'https://elementary-privilege.com/',
        updated_at: DateTime.iso8601('2026-10-03T16:13:35.303Z')
      ),
    ],
    public_job_urls: [
      'https://parched-dash.info',
      'https://mild-midwife.org/',
    ],
    questions: [
      Models::Shared::AtsJobQuestion.new(
        description: 'Capitulus.',
        id: 'add03fa2-7f16-4d43-8f41-8bd2ccfdab5b',
        max_length: 214.0,
        min_length: 1.0,
        options: [
          'aetas',
          'vado',
        ],
        prompt: 'Agnosco tendo.',
        question: 'Deporto tolero.',
        required: true,
        type: Models::Shared::AtsJobQuestionType::TEXT
      ),
      Models::Shared::AtsJobQuestion.new(
        id: 'a991ec23-2566-4c96-ac51-efa2927b159b',
        max_length: 309.0,
        min_length: 1.0,
        options: [
          'sodalitas',
        ],
        prompt: 'Supra veritatis.',
        question: 'Maxime tres tergiversatio tactus vehemens architecto ab nam defetiscor.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT
      ),
      Models::Shared::AtsJobQuestion.new(
        description: 'Confero trepide.',
        id: 'f69f8d0f-4a9d-4d27-b785-3fa7b50c5365',
        max_length: 428.0,
        min_length: 1.0,
        options: [
          'censura',
        ],
        prompt: 'Taceo rem compello spectaculum mollitia arcus compello.',
        question: 'Attonbitus reprehenderit voro depono constans vehemens.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT
      ),
    ],
    skills: [
      'similique',
      'absque',
    ],
    status: Models::Shared::AtsJobStatus::ARCHIVED,
    summary: 'Contra damno desolo suadeo utrimque cresco aetas turpis.',
    updated_at: DateTime.iso8601('2026-03-30T02:21:39.711Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AtsScorecard identified by `id`. Provide the unified AtsScorecard fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsScorecard" method="put" path="/ats/{connection_id}/scorecard/{id}" example="ats_scorecard" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAtsScorecardRequest.new(
  ats_scorecard: Models::Shared::AtsScorecard.new(
    comment: 'Aliquam.',
    created_at: DateTime.iso8601('2022-02-20T17:09:45.498Z'),
    id: 'cb717d5a-b5f9-4659-8486-468b91e132db',
    metadata: [],
    questions: [
      Models::Shared::AtsScorecardQuestion.new(
        description: 'Pecto vulpes libero vomer comburo.',
        text: 'Desidero modi tamdiu auxilium defessus adimpleo clementia tero.'
      ),
      Models::Shared::AtsScorecardQuestion.new(
        answer: 'Conatus cicuta doloremque statua bonus.',
        description: 'Aduro viscus celebrer.',
        text: 'Decretum.'
      ),
    ],
    recommendation: Models::Shared::Recommendation::STRONG_YES,
    updated_at: DateTime.iso8601('2023-06-16T01:21:27.444Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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