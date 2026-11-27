# Candidate

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

<!-- UsageSnippet language="ruby" operationID="createAtsCandidate" method="post" path="/ats/{connection_id}/candidate" example="ats_candidate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.candidate.create_ats_candidate(ats_candidate: Models::Shared::AtsCandidate.new(
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
  id: '50542aed-bb3b-4ff5-b08a-8c456aa79c00',
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
      id: '085a0529-b5ff-40e4-870e-ede1495f7e38',
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
  updated_at: DateTime.iso8601('2024-05-05T07:35:19.515Z'),
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAtsCandidatesRequest.new(
  connection_id: '<id>'
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
    id: '6fb92c38-538f-40b7-8ad2-7af722ba37fb',
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
        id: '00427e8b-9d6a-4825-b839-68c7283b3789',
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
    updated_at: DateTime.iso8601('2024-05-05T07:35:19.519Z'),
    web_url: 'https://light-meander.com/'
  ),
  connection_id: '<id>',
  id: '<id>'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    id: '6fb92c38-538f-40b7-8ad2-7af722ba37fb',
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
        id: '00427e8b-9d6a-4825-b839-68c7283b3789',
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
    updated_at: DateTime.iso8601('2024-05-05T07:35:19.519Z'),
    web_url: 'https://light-meander.com/'
  ),
  connection_id: '<id>',
  id: '<id>'
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