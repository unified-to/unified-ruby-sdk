# Content

## Overview

### Available Operations

* [create_lms_content](#create_lms_content) - Create a content
* [get_lms_content](#get_lms_content) - Retrieve a content
* [list_lms_contents](#list_lms_contents) - List all contents
* [patch_lms_content](#patch_lms_content) - Update a content
* [remove_lms_content](#remove_lms_content) - Remove a content
* [update_lms_content](#update_lms_content) - Update a content

## create_lms_content

Creates a LmsContent. Provide the unified LmsContent fields in the request body; they are mapped to the provider's API. Returns the created LmsContent.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsContent" method="post" path="/lms/{connection_id}/content" example="lms_content" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.content.create_lms_content(lms_content: Models::Shared::LmsContent.new(
  categories: [
    'tergum',
  ],
  created_at: DateTime.iso8601('2020-10-22T22:30:50.963Z'),
  description: 'Adflicto despecto suppellex socius cresco.',
  difficulty: 'Beginner',
  duration_minutes: 19.0,
  id: '82b2da94-99b0-4e3d-963b-4d5155299567',
  instructors: [],
  is_active: true,
  languages: [
    'campana',
    'viriliter',
  ],
  localizations: [
    Models::Shared::LmsContentLocalization.new(
      description: 'Vindico vorago.',
      language: 'es',
      name: 'aeger'
    ),
    Models::Shared::LmsContentLocalization.new(
      description: 'Sulum.',
      language: 'es',
      name: 'voluptate'
    ),
  ],
  media: [
    Models::Shared::LmsMedia.new(
      content: 'Cohors necessitatibus beatae copiose copiose cedo sub decens acer. Spiritus velum adulatio commodi textus beneficium termes comedo valde caste. Sodalitas bos timor abeo cur. Sperno decet acquiro tabgo canto terminatio acidus tripudio teres. Compono demum aut aestivus ambitus pecus tergum verumtamen vestrum.',
      description: 'Incidunt tepidus commemoro voro ocer.',
      languages: [
        'ro',
        'af',
      ],
      name: 'antepono',
      thumbnail_url: 'https://picsum.photos/seed/URbmlO66Wk/587/3603',
      type: Models::Shared::LmsMediaType::OTHER,
      url: 'https://picsum.photos/seed/4KFvVbCx83/2788/2850'
    ),
    Models::Shared::LmsMedia.new(
      content: 'Ago neque qui cursim tunc barba decens. Tutamen amplus tabella tabgo infit. Demo adversus capillus aro unus. Dedico aspicio alius vehemens terminatio varietas vomica voluptatibus apud. Defero decet impedit verbera pauci laboriosam molestiae urbanus mollitia. Vergo crux certus nulla.',
      description: 'Bene doloribus.',
      languages: [
        'ru',
        'sw',
      ],
      name: 'totidem',
      thumbnail_url: 'https://picsum.photos/seed/qpRev/1286/3718',
      type: Models::Shared::LmsMediaType::WEB,
      url: 'https://picsum.photos/seed/JOWrp5/254/2004'
    ),
    Models::Shared::LmsMedia.new(
      content: 'Laborum adiuvo labore officia demulceo. Abduco mollitia ventosus synagoga certus magni vado cilicium stella. Velut capitulus attero odio advenio similique acsi totam atavus aufero. Ventosus campana animi.',
      description: 'Trucido dens pecus aer stella.',
      languages: [
        'is',
        'sk',
      ],
      name: 'territo',
      thumbnail_url: 'https://picsum.photos/seed/81EuDedaf/557/986',
      type: Models::Shared::LmsMediaType::IMAGE,
      url: 'https://picsum.photos/seed/BtV2eDuVm7/3644/1033'
    ),
  ],
  metadata: [],
  name: 'laboriosam',
  provider_name: 'Mraz - Keeling',
  published_at: DateTime.iso8601('2022-09-15T01:52:15.286Z'),
  short_description: 'Videlicet pauci.',
  skills: [
    'soleo',
  ],
  sort_order: 3.0,
  subjects: [
    Models::Shared::LmsSubject.new(
      name: 'clam',
      rank: 1.0
    ),
  ],
  tags: [
    'audio',
  ],
  updated_at: DateTime.iso8601('2022-10-16T13:02:01.571Z')
), connection_id: '<id>')

unless res.lms_content.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `lms_content`                                                                                                                                    | [Models::Shared::LmsContent](../../models/shared/lmscontent.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLmsContentQueryParamFields](../../models/operations/createlmscontentqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLmsContentResponse)](../../models/operations/createlmscontentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_lms_content

Retrieves a single LmsContent by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsContent" method="get" path="/lms/{connection_id}/content/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.content.get_lms_content(connection_id: '<id>', id: '<id>')

unless res.lms_content.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Content                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLmsContentQueryParamFields](../../models/operations/getlmscontentqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLmsContentResponse)](../../models/operations/getlmscontentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_lms_contents

Returns a list of LmsContents. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsContents" method="get" path="/lms/{connection_id}/content" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListLmsContentsRequest.new(
  connection_id: '<id>'
)
res = s.content.list_lms_contents(request: req)

unless res.lms_contents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListLmsContentsRequest](../../models/operations/listlmscontentsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListLmsContentsResponse)](../../models/operations/listlmscontentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_lms_content

Updates the LmsContent identified by `id`. Provide the unified LmsContent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsContent" method="patch" path="/lms/{connection_id}/content/{id}" example="lms_content" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchLmsContentRequest.new(
  lms_content: Models::Shared::LmsContent.new(
    categories: [
      'tergum',
    ],
    created_at: DateTime.iso8601('2020-10-22T22:30:50.963Z'),
    description: 'Adflicto despecto suppellex socius cresco.',
    difficulty: 'Beginner',
    duration_minutes: 19.0,
    id: '404a9ce3-33da-4a03-9dac-d944eeba3ce9',
    instructors: [],
    is_active: true,
    languages: [
      'campana',
      'viriliter',
    ],
    localizations: [
      Models::Shared::LmsContentLocalization.new(
        description: 'Vindico vorago.',
        language: 'es',
        name: 'aeger'
      ),
      Models::Shared::LmsContentLocalization.new(
        description: 'Sulum.',
        language: 'es',
        name: 'voluptate'
      ),
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Cohors necessitatibus beatae copiose copiose cedo sub decens acer. Spiritus velum adulatio commodi textus beneficium termes comedo valde caste. Sodalitas bos timor abeo cur. Sperno decet acquiro tabgo canto terminatio acidus tripudio teres. Compono demum aut aestivus ambitus pecus tergum verumtamen vestrum.',
        description: 'Incidunt tepidus commemoro voro ocer.',
        languages: [
          'ro',
          'af',
        ],
        name: 'antepono',
        thumbnail_url: 'https://picsum.photos/seed/URbmlO66Wk/587/3603',
        type: Models::Shared::LmsMediaType::OTHER,
        url: 'https://picsum.photos/seed/4KFvVbCx83/2788/2850'
      ),
      Models::Shared::LmsMedia.new(
        content: 'Ago neque qui cursim tunc barba decens. Tutamen amplus tabella tabgo infit. Demo adversus capillus aro unus. Dedico aspicio alius vehemens terminatio varietas vomica voluptatibus apud. Defero decet impedit verbera pauci laboriosam molestiae urbanus mollitia. Vergo crux certus nulla.',
        description: 'Bene doloribus.',
        languages: [
          'ru',
          'sw',
        ],
        name: 'totidem',
        thumbnail_url: 'https://picsum.photos/seed/qpRev/1286/3718',
        type: Models::Shared::LmsMediaType::WEB,
        url: 'https://picsum.photos/seed/JOWrp5/254/2004'
      ),
      Models::Shared::LmsMedia.new(
        content: 'Laborum adiuvo labore officia demulceo. Abduco mollitia ventosus synagoga certus magni vado cilicium stella. Velut capitulus attero odio advenio similique acsi totam atavus aufero. Ventosus campana animi.',
        description: 'Trucido dens pecus aer stella.',
        languages: [
          'is',
          'sk',
        ],
        name: 'territo',
        thumbnail_url: 'https://picsum.photos/seed/81EuDedaf/557/986',
        type: Models::Shared::LmsMediaType::IMAGE,
        url: 'https://picsum.photos/seed/BtV2eDuVm7/3644/1033'
      ),
    ],
    metadata: [],
    name: 'laboriosam',
    provider_name: 'Mraz - Keeling',
    published_at: DateTime.iso8601('2022-09-15T01:52:15.296Z'),
    short_description: 'Videlicet pauci.',
    skills: [
      'soleo',
    ],
    sort_order: 3.0,
    subjects: [
      Models::Shared::LmsSubject.new(
        name: 'clam',
        rank: 1.0
      ),
    ],
    tags: [
      'audio',
    ],
    updated_at: DateTime.iso8601('2022-10-16T13:02:01.581Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.content.patch_lms_content(request: req)

unless res.lms_content.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchLmsContentRequest](../../models/operations/patchlmscontentrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchLmsContentResponse)](../../models/operations/patchlmscontentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_lms_content

Deletes the LmsContent identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsContent" method="delete" path="/lms/{connection_id}/content/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.content.remove_lms_content(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Content    |

### Response

**[T.nilable(Models::Operations::RemoveLmsContentResponse)](../../models/operations/removelmscontentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_lms_content

Updates the LmsContent identified by `id`. Provide the unified LmsContent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsContent" method="put" path="/lms/{connection_id}/content/{id}" example="lms_content" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateLmsContentRequest.new(
  lms_content: Models::Shared::LmsContent.new(
    categories: [
      'tergum',
    ],
    created_at: DateTime.iso8601('2020-10-22T22:30:50.963Z'),
    description: 'Adflicto despecto suppellex socius cresco.',
    difficulty: 'Beginner',
    duration_minutes: 19.0,
    id: '404a9ce3-33da-4a03-9dac-d944eeba3ce9',
    instructors: [],
    is_active: true,
    languages: [
      'campana',
      'viriliter',
    ],
    localizations: [
      Models::Shared::LmsContentLocalization.new(
        description: 'Vindico vorago.',
        language: 'es',
        name: 'aeger'
      ),
      Models::Shared::LmsContentLocalization.new(
        description: 'Sulum.',
        language: 'es',
        name: 'voluptate'
      ),
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Cohors necessitatibus beatae copiose copiose cedo sub decens acer. Spiritus velum adulatio commodi textus beneficium termes comedo valde caste. Sodalitas bos timor abeo cur. Sperno decet acquiro tabgo canto terminatio acidus tripudio teres. Compono demum aut aestivus ambitus pecus tergum verumtamen vestrum.',
        description: 'Incidunt tepidus commemoro voro ocer.',
        languages: [
          'ro',
          'af',
        ],
        name: 'antepono',
        thumbnail_url: 'https://picsum.photos/seed/URbmlO66Wk/587/3603',
        type: Models::Shared::LmsMediaType::OTHER,
        url: 'https://picsum.photos/seed/4KFvVbCx83/2788/2850'
      ),
      Models::Shared::LmsMedia.new(
        content: 'Ago neque qui cursim tunc barba decens. Tutamen amplus tabella tabgo infit. Demo adversus capillus aro unus. Dedico aspicio alius vehemens terminatio varietas vomica voluptatibus apud. Defero decet impedit verbera pauci laboriosam molestiae urbanus mollitia. Vergo crux certus nulla.',
        description: 'Bene doloribus.',
        languages: [
          'ru',
          'sw',
        ],
        name: 'totidem',
        thumbnail_url: 'https://picsum.photos/seed/qpRev/1286/3718',
        type: Models::Shared::LmsMediaType::WEB,
        url: 'https://picsum.photos/seed/JOWrp5/254/2004'
      ),
      Models::Shared::LmsMedia.new(
        content: 'Laborum adiuvo labore officia demulceo. Abduco mollitia ventosus synagoga certus magni vado cilicium stella. Velut capitulus attero odio advenio similique acsi totam atavus aufero. Ventosus campana animi.',
        description: 'Trucido dens pecus aer stella.',
        languages: [
          'is',
          'sk',
        ],
        name: 'territo',
        thumbnail_url: 'https://picsum.photos/seed/81EuDedaf/557/986',
        type: Models::Shared::LmsMediaType::IMAGE,
        url: 'https://picsum.photos/seed/BtV2eDuVm7/3644/1033'
      ),
    ],
    metadata: [],
    name: 'laboriosam',
    provider_name: 'Mraz - Keeling',
    published_at: DateTime.iso8601('2022-09-15T01:52:15.296Z'),
    short_description: 'Videlicet pauci.',
    skills: [
      'soleo',
    ],
    sort_order: 3.0,
    subjects: [
      Models::Shared::LmsSubject.new(
        name: 'clam',
        rank: 1.0
      ),
    ],
    tags: [
      'audio',
    ],
    updated_at: DateTime.iso8601('2022-10-16T13:02:01.581Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.content.update_lms_content(request: req)

unless res.lms_content.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateLmsContentRequest](../../models/operations/updatelmscontentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateLmsContentResponse)](../../models/operations/updatelmscontentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |