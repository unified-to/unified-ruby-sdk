# Job
(*job*)

## Overview

### Available Operations

* [create_ats_job](#create_ats_job) - Create a job
* [get_ats_job](#get_ats_job) - Retrieve a job
* [list_ats_jobs](#list_ats_jobs) - List all jobs
* [patch_ats_job](#patch_ats_job) - Update a job
* [remove_ats_job](#remove_ats_job) - Remove a job
* [update_ats_job](#update_ats_job) - Update a job

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
  hiring_managers: [
    Models::Shared::AtsReference.new(
      id: 'fd9852e3-9035-4f42-beb3-bbf4e4022122',
      name: 'Eloise Mueller PhD',
    ),
  ],
  id: '88fa8443-47cf-4ea7-b991-6ea986d128d6',
  industry: 'Gorgeous Plastic Computer',
  language_locale: 'en',
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: '2f0c5e81-5af9-4c33-96d0-96f69b110483',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'acceptus',
    ),
  ],
  minimum_degree: 'Bachelor',
  minimum_experience_years: 3.0,
  name: 'Forward Brand Producer',
  number_of_openings: 1.0,
  openings: [
    Models::Shared::AtsJobOpening.new(
      close_reason: 'Admoveo trado textilis.',
      opened_at: DateTime.iso8601('2026-05-11T07:21:22.369Z'),
      status: Models::Shared::AtsJobOpeningStatus::OPEN,
    ),
  ],
  postings: [
    Models::Shared::AtsJobPosting.new(
      address: Models::Shared::PropertyAtsJobPostingAddress.new(
        address1: '8460 Nils Trace',
        city: 'West Mervinburgh',
        country_code: 'US',
        postal_code: '14162',
        region: 'Maine',
        region_code: 'MO',
      ),
      created_at: DateTime.iso8601('2026-07-04T00:48:38.847Z'),
      description: 'Deduco cultellus alii terebro depono thesaurus.',
      id: 'f6101769-deb3-4721-978c-d205638870ee',
      is_active: false,
      location: '6788 Oxford Road',
      name: 'Forward Security Orchestrator',
      posting_url: 'https://ajar-metabolite.net/',
      updated_at: DateTime.iso8601('2026-07-29T16:10:29.240Z'),
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
      id: 'b3a0b53b-38f3-4e8d-84b9-f413a900d79b',
      options: [
        'odit',
      ],
      prompt: 'Similique absque temeritas celebrer enim.',
      question: 'Vinitor sodalitas desino sollers viduo volo.',
      required: false,
      type: Models::Shared::AtsJobQuestionType::TEXT,
    ),
    Models::Shared::AtsJobQuestion.new(
      description: 'Abstergo possimus quibusdam deinde amoveo.',
      id: '568be61d-060e-4d8c-a8ab-8a17cb25edf3',
      options: [
        'vallum',
      ],
      prompt: 'Ara thermae aetas vivo constans victoria volo carbo vehemens praesentium.',
      question: 'Subiungo ambitus neque talis amitto terreo alienus quae vulticulus.',
      required: false,
      type: Models::Shared::AtsJobQuestionType::TEXT,
    ),
  ],
  skills: [
    'amiculum',
    'crux',
  ],
  status: Models::Shared::AtsJobStatus::ARCHIVED,
  summary: 'Amicitia vergo hic.',
  updated_at: DateTime.iso8601('2026-02-02T08:51:50.092Z'),
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
        id: 'fd9852e3-9035-4f42-beb3-bbf4e4022122',
        name: 'Eloise Mueller PhD',
      ),
    ],
    id: 'e331e505-2a64-45d9-a765-5ca70dc9300e',
    industry: 'Gorgeous Plastic Computer',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '84884497-da33-403e-ba81-e795f77df061',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'acceptus',
      ),
    ],
    minimum_degree: 'Bachelor',
    minimum_experience_years: 3.0,
    name: 'Forward Brand Producer',
    number_of_openings: 1.0,
    openings: [
      Models::Shared::AtsJobOpening.new(
        close_reason: 'Admoveo trado textilis.',
        opened_at: DateTime.iso8601('2026-05-11T07:21:22.437Z'),
        status: Models::Shared::AtsJobOpeningStatus::OPEN,
      ),
    ],
    postings: [
      Models::Shared::AtsJobPosting.new(
        address: Models::Shared::PropertyAtsJobPostingAddress.new(
          address1: '8460 Nils Trace',
          city: 'West Mervinburgh',
          country_code: 'US',
          postal_code: '14162',
          region: 'Maine',
          region_code: 'MO',
        ),
        created_at: DateTime.iso8601('2026-07-04T00:48:38.919Z'),
        description: 'Deduco cultellus alii terebro depono thesaurus.',
        id: 'f6101769-deb3-4721-978c-d205638870ee',
        is_active: false,
        location: '6788 Oxford Road',
        name: 'Forward Security Orchestrator',
        posting_url: 'https://ajar-metabolite.net/',
        updated_at: DateTime.iso8601('2026-07-29T16:10:29.315Z'),
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
        id: 'b3a0b53b-38f3-4e8d-84b9-f413a900d79b',
        options: [
          'odit',
        ],
        prompt: 'Similique absque temeritas celebrer enim.',
        question: 'Vinitor sodalitas desino sollers viduo volo.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
      Models::Shared::AtsJobQuestion.new(
        description: 'Abstergo possimus quibusdam deinde amoveo.',
        id: '568be61d-060e-4d8c-a8ab-8a17cb25edf3',
        options: [
          'vallum',
        ],
        prompt: 'Ara thermae aetas vivo constans victoria volo carbo vehemens praesentium.',
        question: 'Subiungo ambitus neque talis amitto terreo alienus quae vulticulus.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
    ],
    skills: [
      'amiculum',
      'crux',
    ],
    status: Models::Shared::AtsJobStatus::ARCHIVED,
    summary: 'Amicitia vergo hic.',
    updated_at: DateTime.iso8601('2026-02-02T08:51:50.154Z'),
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
        id: 'fd9852e3-9035-4f42-beb3-bbf4e4022122',
        name: 'Eloise Mueller PhD',
      ),
    ],
    id: 'e331e505-2a64-45d9-a765-5ca70dc9300e',
    industry: 'Gorgeous Plastic Computer',
    language_locale: 'en',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: '84884497-da33-403e-ba81-e795f77df061',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'acceptus',
      ),
    ],
    minimum_degree: 'Bachelor',
    minimum_experience_years: 3.0,
    name: 'Forward Brand Producer',
    number_of_openings: 1.0,
    openings: [
      Models::Shared::AtsJobOpening.new(
        close_reason: 'Admoveo trado textilis.',
        opened_at: DateTime.iso8601('2026-05-11T07:21:22.437Z'),
        status: Models::Shared::AtsJobOpeningStatus::OPEN,
      ),
    ],
    postings: [
      Models::Shared::AtsJobPosting.new(
        address: Models::Shared::PropertyAtsJobPostingAddress.new(
          address1: '8460 Nils Trace',
          city: 'West Mervinburgh',
          country_code: 'US',
          postal_code: '14162',
          region: 'Maine',
          region_code: 'MO',
        ),
        created_at: DateTime.iso8601('2026-07-04T00:48:38.919Z'),
        description: 'Deduco cultellus alii terebro depono thesaurus.',
        id: 'f6101769-deb3-4721-978c-d205638870ee',
        is_active: false,
        location: '6788 Oxford Road',
        name: 'Forward Security Orchestrator',
        posting_url: 'https://ajar-metabolite.net/',
        updated_at: DateTime.iso8601('2026-07-29T16:10:29.315Z'),
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
        id: 'b3a0b53b-38f3-4e8d-84b9-f413a900d79b',
        options: [
          'odit',
        ],
        prompt: 'Similique absque temeritas celebrer enim.',
        question: 'Vinitor sodalitas desino sollers viduo volo.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
      Models::Shared::AtsJobQuestion.new(
        description: 'Abstergo possimus quibusdam deinde amoveo.',
        id: '568be61d-060e-4d8c-a8ab-8a17cb25edf3',
        options: [
          'vallum',
        ],
        prompt: 'Ara thermae aetas vivo constans victoria volo carbo vehemens praesentium.',
        question: 'Subiungo ambitus neque talis amitto terreo alienus quae vulticulus.',
        required: false,
        type: Models::Shared::AtsJobQuestionType::TEXT,
      ),
    ],
    skills: [
      'amiculum',
      'crux',
    ],
    status: Models::Shared::AtsJobStatus::ARCHIVED,
    summary: 'Amicitia vergo hic.',
    updated_at: DateTime.iso8601('2026-02-02T08:51:50.154Z'),
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