# Candidate
(*candidate*)

## Overview

### Available Operations

* [create_ats_candidate](#create_ats_candidate) - Create a candidate
* [get_ats_candidate](#get_ats_candidate) - Retrieve a candidate
* [list_ats_candidates](#list_ats_candidates) - List all candidates
* [patch_ats_candidate](#patch_ats_candidate) - Update a candidate
* [remove_ats_candidate](#remove_ats_candidate) - Remove a candidate
* [update_ats_candidate](#update_ats_candidate) - Update a candidate

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

res = s.candidate.create_ats_candidate(ats_candidate: Models::Shared::AtsCandidate.new(
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
  id: '5783d841-61c1-4e84-89a1-75752d0c34de',
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
      id: '15415530-c27a-40d4-bac7-71c36dd5d9c8',
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
  updated_at: DateTime.iso8601('2024-04-23T10:02:23.058Z'),
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

res = s.candidate.get_ats_candidate(connection_id: '<id>', id: '<id>')

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

res = s.candidate.list_ats_candidates(request: req)

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
    id: '716db3fd-4ddf-42c5-8e0d-aff56725cdd2',
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
        id: '94b0b9be-6037-4b57-8924-0c1ada734aca',
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
    updated_at: DateTime.iso8601('2024-04-23T10:02:23.064Z'),
    web_url: 'https://expert-lender.name/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.candidate.patch_ats_candidate(request: req)

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

res = s.candidate.remove_ats_candidate(connection_id: '<id>', id: '<id>')

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
    id: '716db3fd-4ddf-42c5-8e0d-aff56725cdd2',
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
        id: '94b0b9be-6037-4b57-8924-0c1ada734aca',
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
    updated_at: DateTime.iso8601('2024-04-23T10:02:23.064Z'),
    web_url: 'https://expert-lender.name/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.candidate.update_ats_candidate(request: req)

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