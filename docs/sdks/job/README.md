# Job

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

<!-- UsageSnippet language="ruby" operationID="createAtsJob" method="post" path="/ats/{connection_id}/job" example="ats_job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.job.create_ats_job(ats_job: Models::Shared::AtsJob.new(
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
  id: '37559966-6796-43d0-a8a5-5cb3a1a08afa',
  industry: 'Refined Ceramic Keyboard',
  language_locale: 'en',
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {
        'display_name' => 'Custom Property',
      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: 'ad773332-89f4-41c2-9f44-7f5f8aa705fa',
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
      opened_at: DateTime.iso8601('2026-07-10T19:44:01.973Z'),
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
      created_at: DateTime.iso8601('2026-09-05T14:49:11.156Z'),
      description: 'Sublime.',
      id: '2e67e354-2a2f-4dc9-af0c-da4f86cb15c7',
      is_active: false,
      location: '5699 Purdy Motorway',
      name: 'Legacy Implementation Orchestrator',
      posting_url: 'https://elementary-privilege.com/',
      updated_at: DateTime.iso8601('2026-10-02T17:19:21.702Z')
    ),
  ],
  public_job_urls: [
    'https://parched-dash.info',
    'https://mild-midwife.org/',
  ],
  questions: [
    Models::Shared::AtsJobQuestion.new(
      description: 'Capitulus.',
      id: '45ec1cb9-f4ed-4f3d-bd3e-05fdc57acd40',
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
      id: '7e6c439e-012b-4d66-921b-518ffb900fba',
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
      id: 'c7ab950a-e88e-43fd-b951-c9213cc11138',
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
  updated_at: DateTime.iso8601('2026-03-29T07:01:19.853Z')
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

<!-- UsageSnippet language="ruby" operationID="createHrisJob" method="post" path="/hris/{connection_id}/job" example="hris_job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.job.create_hris_job(hris_job: Models::Shared::HrisJob.new(
  code: 'P-54753',
  created_at: DateTime.iso8601('2020-10-28T01:13:19.491Z'),
  description: 'Bonus vobis creator tabella callide cavus triumphus caveo abbas patria.',
  employment_type: Models::Shared::HrisJobEmploymentType::FREELANCE,
  id: 'be4428f4-bd5c-4c1f-897e-72bb554c666f',
  is_active: false,
  metadata: [],
  name: 'Customer Security Assistant',
  updated_at: DateTime.iso8601('2023-02-13T04:35:30.712Z')
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsJobsRequest.new(
  connection_id: '<id>'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListHrisJobsRequest.new(
  connection_id: '<id>'
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
    id: 'd6e9481c-d05e-4d0b-96e5-df459af7b917',
    industry: 'Refined Ceramic Keyboard',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '38ce8b13-6dbf-4d9a-89cd-ab32e5615ffd',
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
        opened_at: DateTime.iso8601('2026-07-10T19:44:02.010Z'),
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
        created_at: DateTime.iso8601('2026-09-05T14:49:11.196Z'),
        description: 'Sublime.',
        id: 'a36161a7-9e79-4178-abde-92822ceb84c8',
        is_active: false,
        location: '5699 Purdy Motorway',
        name: 'Legacy Implementation Orchestrator',
        posting_url: 'https://elementary-privilege.com/',
        updated_at: DateTime.iso8601('2026-10-02T17:19:21.742Z')
      ),
    ],
    public_job_urls: [
      'https://parched-dash.info',
      'https://mild-midwife.org/',
    ],
    questions: [
      Models::Shared::AtsJobQuestion.new(
        description: 'Capitulus.',
        id: 'e51791ca-8c3f-4203-a822-d6702a802e48',
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
        id: '4072a8a2-e5ff-4a0c-a638-4d125bc486c3',
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
        id: '556a44bc-9b15-4a2a-b512-4583533fc506',
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
    updated_at: DateTime.iso8601('2026-03-29T07:01:19.887Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="patchHrisJob" method="patch" path="/hris/{connection_id}/job/{id}" example="hris_job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchHrisJobRequest.new(
  hris_job: Models::Shared::HrisJob.new(
    code: 'P-54753',
    created_at: DateTime.iso8601('2020-10-28T01:13:19.491Z'),
    description: 'Bonus vobis creator tabella callide cavus triumphus caveo abbas patria.',
    employment_type: Models::Shared::HrisJobEmploymentType::FREELANCE,
    id: 'acc8a3f8-b0cc-4c53-9c2e-8660ecea53b3',
    is_active: false,
    metadata: [],
    name: 'Customer Security Assistant',
    updated_at: DateTime.iso8601('2023-02-13T04:35:30.745Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    id: 'd6e9481c-d05e-4d0b-96e5-df459af7b917',
    industry: 'Refined Ceramic Keyboard',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          'display_name' => 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '38ce8b13-6dbf-4d9a-89cd-ab32e5615ffd',
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
        opened_at: DateTime.iso8601('2026-07-10T19:44:02.010Z'),
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
        created_at: DateTime.iso8601('2026-09-05T14:49:11.196Z'),
        description: 'Sublime.',
        id: 'a36161a7-9e79-4178-abde-92822ceb84c8',
        is_active: false,
        location: '5699 Purdy Motorway',
        name: 'Legacy Implementation Orchestrator',
        posting_url: 'https://elementary-privilege.com/',
        updated_at: DateTime.iso8601('2026-10-02T17:19:21.742Z')
      ),
    ],
    public_job_urls: [
      'https://parched-dash.info',
      'https://mild-midwife.org/',
    ],
    questions: [
      Models::Shared::AtsJobQuestion.new(
        description: 'Capitulus.',
        id: 'e51791ca-8c3f-4203-a822-d6702a802e48',
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
        id: '4072a8a2-e5ff-4a0c-a638-4d125bc486c3',
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
        id: '556a44bc-9b15-4a2a-b512-4583533fc506',
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
    updated_at: DateTime.iso8601('2026-03-29T07:01:19.887Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="updateHrisJob" method="put" path="/hris/{connection_id}/job/{id}" example="hris_job" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateHrisJobRequest.new(
  hris_job: Models::Shared::HrisJob.new(
    code: 'P-54753',
    created_at: DateTime.iso8601('2020-10-28T01:13:19.491Z'),
    description: 'Bonus vobis creator tabella callide cavus triumphus caveo abbas patria.',
    employment_type: Models::Shared::HrisJobEmploymentType::FREELANCE,
    id: 'acc8a3f8-b0cc-4c53-9c2e-8660ecea53b3',
    is_active: false,
    metadata: [],
    name: 'Customer Security Assistant',
    updated_at: DateTime.iso8601('2023-02-13T04:35:30.745Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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