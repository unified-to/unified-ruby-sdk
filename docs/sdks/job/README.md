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

Creates a AtsJob. Provide the unified AtsJob fields in the request body; they are mapped to the provider's API. Returns the created AtsJob.

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
  id: '4ac2ea0e-cf23-4d43-af5c-c5d602441a7b',
  industry: 'Handcrafted Bamboo Soap',
  language_locale: 'en',
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: '86031207-77af-4a86-9e8e-af58b2507324',
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
      opened_at: DateTime.iso8601('2026-06-15T00:57:22.077Z'),
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
      created_at: DateTime.iso8601('2026-08-09T12:40:18.450Z'),
      description: 'Beatus eum volutabrum balbus victus ipsa tubineus claustrum.',
      id: 'cbbcedf1-afd1-443f-9c03-ae602af35c74',
      is_active: false,
      location: '1725 Hessel Keys',
      name: 'International Identity Manager',
      posting_url: 'https://obedient-yak.com',
      updated_at: DateTime.iso8601('2026-09-05T00:12:14.280Z'),
    ),
  ],
  public_job_urls: [
    'https://trustworthy-elver.info',
    'https://parched-dash.info',
  ],
  questions: [
    Models::Shared::AtsJobQuestion.new(
      description: 'Auctus deporto tolero administratio capitulus animi agnosco tendo aetas vado.',
      id: '8c16bc3a-7cfd-4d26-8112-a8321c969eb2',
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
      id: '4074e1e3-8ddc-4064-8438-a7043bf5bdfa',
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
      id: 'c1dc6e0e-e6a7-4176-908d-103c892c8bdb',
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
  updated_at: DateTime.iso8601('2026-03-05T21:25:40.409Z'),
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

Creates a HrisJob. Provide the unified HrisJob fields in the request body; they are mapped to the provider's API. Returns the created HrisJob.

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
  id: 'ef59adb8-728d-4b74-b4db-2b8d3dc5b6c2',
  is_active: false,
  metadata: [],
  name: 'Internal Integration Specialist',
  updated_at: DateTime.iso8601('2023-02-02T06:04:01.463Z'),
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

Retrieves a single AtsJob by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Retrieves a single HrisJob by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Returns a list of AtsJobs. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Returns a list of HrisJobs. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Updates the AtsJob identified by `id`. Provide the unified AtsJob fields to change in the request body.

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
    id: 'b86f1e24-15b1-41ab-8027-f58ee271ac05',
    industry: 'Handcrafted Bamboo Soap',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '0e16abe6-34cd-4b8d-bf54-4860a4c582da',
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
        opened_at: DateTime.iso8601('2026-06-15T00:57:22.109Z'),
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
        created_at: DateTime.iso8601('2026-08-09T12:40:18.483Z'),
        description: 'Beatus eum volutabrum balbus victus ipsa tubineus claustrum.',
        id: 'c4484f90-7d52-4821-be79-74bde3c66c87',
        is_active: false,
        location: '1725 Hessel Keys',
        name: 'International Identity Manager',
        posting_url: 'https://obedient-yak.com',
        updated_at: DateTime.iso8601('2026-09-05T00:12:14.315Z'),
      ),
    ],
    public_job_urls: [
      'https://trustworthy-elver.info',
      'https://parched-dash.info',
    ],
    questions: [
      Models::Shared::AtsJobQuestion.new(
        description: 'Auctus deporto tolero administratio capitulus animi agnosco tendo aetas vado.',
        id: '7262426c-28cc-4c5f-999e-0ba61846b2ea',
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
        id: '4ef3e4b7-b51b-4709-a9a4-5ff4d6cd3c9f',
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
        id: 'f155807a-9f5c-451e-92a8-23b7dd8d1e76',
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
    updated_at: DateTime.iso8601('2026-03-05T21:25:40.438Z'),
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

Updates the HrisJob identified by `id`. Provide the unified HrisJob fields to change in the request body.

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
    id: '1cb77b7f-0c08-45ab-b82f-aaad1c9bb1d2',
    is_active: false,
    metadata: [],
    name: 'Internal Integration Specialist',
    updated_at: DateTime.iso8601('2023-02-02T06:04:01.499Z'),
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

Deletes the AtsJob identified by `id`.

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

Deletes the HrisJob identified by `id`.

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

Updates the AtsJob identified by `id`. Provide the unified AtsJob fields to change in the request body.

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
    id: 'b86f1e24-15b1-41ab-8027-f58ee271ac05',
    industry: 'Handcrafted Bamboo Soap',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '0e16abe6-34cd-4b8d-bf54-4860a4c582da',
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
        opened_at: DateTime.iso8601('2026-06-15T00:57:22.109Z'),
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
        created_at: DateTime.iso8601('2026-08-09T12:40:18.483Z'),
        description: 'Beatus eum volutabrum balbus victus ipsa tubineus claustrum.',
        id: 'c4484f90-7d52-4821-be79-74bde3c66c87',
        is_active: false,
        location: '1725 Hessel Keys',
        name: 'International Identity Manager',
        posting_url: 'https://obedient-yak.com',
        updated_at: DateTime.iso8601('2026-09-05T00:12:14.315Z'),
      ),
    ],
    public_job_urls: [
      'https://trustworthy-elver.info',
      'https://parched-dash.info',
    ],
    questions: [
      Models::Shared::AtsJobQuestion.new(
        description: 'Auctus deporto tolero administratio capitulus animi agnosco tendo aetas vado.',
        id: '7262426c-28cc-4c5f-999e-0ba61846b2ea',
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
        id: '4ef3e4b7-b51b-4709-a9a4-5ff4d6cd3c9f',
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
        id: 'f155807a-9f5c-451e-92a8-23b7dd8d1e76',
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
    updated_at: DateTime.iso8601('2026-03-05T21:25:40.438Z'),
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

Updates the HrisJob identified by `id`. Provide the unified HrisJob fields to change in the request body.

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
    id: '1cb77b7f-0c08-45ab-b82f-aaad1c9bb1d2',
    is_active: false,
    metadata: [],
    name: 'Internal Integration Specialist',
    updated_at: DateTime.iso8601('2023-02-02T06:04:01.499Z'),
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