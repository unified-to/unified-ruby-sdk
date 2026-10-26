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

Creates a AtsCandidate. Provide the unified AtsCandidate fields in the request body; they are mapped to the provider's API. Returns the created AtsCandidate.

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
  id: '24b7225e-0ea9-4a20-85de-4af5f11ecf6a',
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
      id: '979dcb54-d084-4b24-929b-aa194f6f4fc1',
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
  updated_at: DateTime.iso8601('2024-04-29T14:20:50.103Z'),
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

## get_ats_candidate

Retrieves a single AtsCandidate by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Returns a list of AtsCandidates. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Updates the AtsCandidate identified by `id`. Provide the unified AtsCandidate fields to change in the request body.

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
    id: 'fa3a3bf0-8e4c-44f6-b396-79b92e525952',
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
        id: '4ffa6368-5ad4-45b2-b893-63684a3bbdfc',
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
    updated_at: DateTime.iso8601('2024-04-29T14:20:50.110Z'),
    web_url: 'https://fragrant-husband.net/',
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

Deletes the AtsCandidate identified by `id`.

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

Updates the AtsCandidate identified by `id`. Provide the unified AtsCandidate fields to change in the request body.

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
    id: 'fa3a3bf0-8e4c-44f6-b396-79b92e525952',
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
        id: '4ffa6368-5ad4-45b2-b893-63684a3bbdfc',
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
    updated_at: DateTime.iso8601('2024-04-29T14:20:50.110Z'),
    web_url: 'https://fragrant-husband.net/',
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