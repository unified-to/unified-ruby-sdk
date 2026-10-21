# Job
(*job*)

## Overview

### Available Operations

* [create_ats_job](#create_ats_job) - Create a job
* [create_hris_job](#create_hris_job) - Create a job
* [get_ats_job](#get_ats_job) - Retrieve a job
* [get_hris_job](#get_hris_job) - Retrieve a job
* [list_ats_jobs](#list_ats_jobs) - List all jobs
* [list_hris_jobs](#list_hris_jobs) - List all jobs
* [patch_ats_job](#patch_ats_job) - Update a job
* [patch_hris_job](#patch_hris_job) - Update a job
* [remove_ats_job](#remove_ats_job) - Remove a job
* [remove_hris_job](#remove_hris_job) - Remove a job
* [update_ats_job](#update_ats_job) - Update a job
* [update_hris_job](#update_hris_job) - Update a job

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

res = s.job.create_ats_job(ats_job: Models::Shared::AtsJob.new(
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

## create_hris_job

Create a job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisJob" method="post" path="/hris/{connection_id}/job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.job.create_hris_job(hris_job: Models::Shared::HrisJob.new(
  code: 'P-05547',
  created_at: DateTime.iso8601('2020-10-28T01:13:19.491Z'),
  description: 'Alienus timor depromo bonus vobis creator tabella callide cavus triumphus caveo.',
  employment_type: Models::Shared::HrisJobEmploymentType::FREELANCE,
  id: '9a3cb5cb-f487-4b03-8119-62f5eec3c16a',
  is_active: false,
  metadata: [],
  name: 'Internal Integration Specialist',
  updated_at: DateTime.iso8601('2023-01-30T05:18:40.719Z'),
), connection_id: '<id>')

unless res.hris_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_job`                                                                                                                                       | [Models::Shared::HrisJob](../../models/shared/hrisjob.md)                                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisJobQueryParamFields](../../models/operations/createhrisjobqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisJobResponse)](../../models/operations/createhrisjobresponse.md)**

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

res = s.job.get_ats_job(connection_id: '<id>', id: '<id>')

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

## get_hris_job

Retrieve a job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisJob" method="get" path="/hris/{connection_id}/job/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.job.get_hris_job(connection_id: '<id>', id: '<id>')

unless res.hris_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Job                                                                                                                                    |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisJobQueryParamFields](../../models/operations/gethrisjobqueryparamfields.md)>                                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisJobResponse)](../../models/operations/gethrisjobresponse.md)**

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

res = s.job.list_ats_jobs(request: req)

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

## list_hris_jobs

List all jobs

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisJobs" method="get" path="/hris/{connection_id}/job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisJobsRequest.new(
  connection_id: '<id>',
)

res = s.job.list_hris_jobs(request: req)

unless res.hris_jobs.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListHrisJobsRequest](../../models/operations/listhrisjobsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListHrisJobsResponse)](../../models/operations/listhrisjobsresponse.md)**

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

res = s.job.patch_ats_job(request: req)

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

## patch_hris_job

Update a job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisJob" method="patch" path="/hris/{connection_id}/job/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisJobRequest.new(
  hris_job: Models::Shared::HrisJob.new(
    code: 'P-05547',
    created_at: DateTime.iso8601('2020-10-28T01:13:19.491Z'),
    description: 'Alienus timor depromo bonus vobis creator tabella callide cavus triumphus caveo.',
    employment_type: Models::Shared::HrisJobEmploymentType::FREELANCE,
    id: '51987954-bfbe-4f6d-8e56-6f516c79198d',
    is_active: false,
    metadata: [],
    name: 'Internal Integration Specialist',
    updated_at: DateTime.iso8601('2023-01-30T05:18:40.762Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.job.patch_hris_job(request: req)

unless res.hris_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::PatchHrisJobRequest](../../models/operations/patchhrisjobrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::PatchHrisJobResponse)](../../models/operations/patchhrisjobresponse.md)**

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

res = s.job.remove_ats_job(connection_id: '<id>', id: '<id>')

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

## remove_hris_job

Remove a job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisJob" method="delete" path="/hris/{connection_id}/job/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.job.remove_hris_job(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveHrisJobResponse)](../../models/operations/removehrisjobresponse.md)**

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

res = s.job.update_ats_job(request: req)

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

## update_hris_job

Update a job

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisJob" method="put" path="/hris/{connection_id}/job/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisJobRequest.new(
  hris_job: Models::Shared::HrisJob.new(
    code: 'P-05547',
    created_at: DateTime.iso8601('2020-10-28T01:13:19.491Z'),
    description: 'Alienus timor depromo bonus vobis creator tabella callide cavus triumphus caveo.',
    employment_type: Models::Shared::HrisJobEmploymentType::FREELANCE,
    id: '51987954-bfbe-4f6d-8e56-6f516c79198d',
    is_active: false,
    metadata: [],
    name: 'Internal Integration Specialist',
    updated_at: DateTime.iso8601('2023-01-30T05:18:40.762Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.job.update_hris_job(request: req)

unless res.hris_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::UpdateHrisJobRequest](../../models/operations/updatehrisjobrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::UpdateHrisJobResponse)](../../models/operations/updatehrisjobresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |