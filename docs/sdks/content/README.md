# Content
(*content*)

## Overview

### Available Operations

* [create_lms_content](#create_lms_content) - Create a content
* [get_lms_content](#get_lms_content) - Retrieve a content
* [list_lms_contents](#list_lms_contents) - List all contents
* [patch_lms_content](#patch_lms_content) - Update a content
* [remove_lms_content](#remove_lms_content) - Remove a content
* [update_lms_content](#update_lms_content) - Update a content

## create_lms_content

Create a content

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsContent" method="post" path="/lms/{connection_id}/content" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.content.create_lms_content(lms_content: Models::Shared::LmsContent.new(
  categories: [
    'territo',
  ],
  created_at: DateTime.iso8601('2020-10-22T22:30:50.963Z'),
  description: 'Usque laboriosam ventosus adflicto.',
  difficulty: 'Beginner',
  duration_minutes: 19.0,
  external_reference: '0d230e31-a9c4-4a35-a5b9-9168e91ffff5',
  id: '99c6e418-b48c-4ac4-8ea4-e6935480a6c3',
  instructors: [
    Models::Shared::LmsReference.new(
      id: '91a23b20-a7a3-4323-9548-0897c09eb49e',
      name: 'Winston Ferry',
    ),
  ],
  is_active: true,
  languages: [
    'despecto',
    'suppellex',
  ],
  localizations: [
    Models::Shared::LmsContentLocalization.new(
      description: 'Numquam.',
      language: 'es',
      name: 'validus',
    ),
    Models::Shared::LmsContentLocalization.new(
      description: 'Callide.',
      language: 'fr',
      name: 'crux',
    ),
  ],
  media: [
    Models::Shared::LmsMedia.new(
      content: 'Adnuo antepono vulticulus incidunt. Commemoro voro ocer arca velut vigor venustas una audeo. Consectetur totidem amor amo vigor. Patior ulciscor cohors necessitatibus beatae. Copiose cedo sub decens acer.',
      description: 'Venia aeternus tandem spargo.',
      languages: [
        'zu',
        'ba',
      ],
      name: 'subiungo',
      thumbnail_url: 'https://loremflickr.com/2056/3712?lock=5644845642923518',
      type: Models::Shared::LmsMediaType::OTHER,
      url: 'https://loremflickr.com/2593/1553?lock=8591263400111785',
    ),
    Models::Shared::LmsMedia.new(
      content: 'Terminatio acidus tripudio teres. Compono demum aut aestivus ambitus pecus tergum verumtamen vestrum. Absque adversus desino aut tabernus tollo vigor. Cur agnitio totidem consuasor bene doloribus. Vetus abundans curriculum curatio usitas.',
      description: 'Comedo valde caste combibo.',
      languages: [
        'it',
        'hu',
      ],
      name: 'beneficium',
      thumbnail_url: 'https://picsum.photos/seed/pNFr1/2597/885',
      type: Models::Shared::LmsMediaType::WEB,
      url: 'https://loremflickr.com/3597/239?lock=7142808124990633',
    ),
    Models::Shared::LmsMedia.new(
      content: 'Coepi demo adversus capillus aro unus templum. Aspicio alius vehemens terminatio varietas vomica. Apud thorax defero decet impedit verbera pauci laboriosam molestiae urbanus. Aveho vergo crux certus nulla caute sophismata. Caute voluptatibus patrocinor demo verumtamen adeo canis sapiente depraedor verus.',
      description: 'Tunc barba decens.',
      languages: [
        'bn',
        'yo',
      ],
      name: 'qui',
      thumbnail_url: 'https://loremflickr.com/1375/3377?lock=6601832177607674',
      type: Models::Shared::LmsMediaType::IMAGE,
      url: 'https://loremflickr.com/3927/2086?lock=5199784913821481',
    ),
  ],
  name: 'ut',
  provider_name: 'Berge LLC',
  published_at: DateTime.iso8601('2023-11-08T11:32:09.080Z'),
  short_description: 'Commemoro.',
  skills: [
    'trucido',
  ],
  sort_order: 3.0,
  subjects: [
    Models::Shared::LmsSubject.new(
      name: 'tibi',
      rank: 1.0,
    ),
  ],
  tags: [
    'dens',
  ],
  updated_at: DateTime.iso8601('2022-09-23T11:12:34.561Z'),
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

Retrieve a content

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsContent" method="get" path="/lms/{connection_id}/content/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

List all contents

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsContents" method="get" path="/lms/{connection_id}/content" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLmsContentsRequest.new(
  connection_id: '<id>',
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

Update a content

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsContent" method="patch" path="/lms/{connection_id}/content/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLmsContentRequest.new(
  lms_content: Models::Shared::LmsContent.new(
    categories: [
      'territo',
    ],
    created_at: DateTime.iso8601('2020-10-22T22:30:50.963Z'),
    description: 'Usque laboriosam ventosus adflicto.',
    difficulty: 'Beginner',
    duration_minutes: 19.0,
    external_reference: '0d230e31-a9c4-4a35-a5b9-9168e91ffff5',
    id: 'e5541a3f-34cb-41b3-bec7-97e33782a388',
    instructors: [
      Models::Shared::LmsReference.new(
        id: '91a23b20-a7a3-4323-9548-0897c09eb49e',
        name: 'Winston Ferry',
      ),
    ],
    is_active: true,
    languages: [
      'despecto',
      'suppellex',
    ],
    localizations: [
      Models::Shared::LmsContentLocalization.new(
        description: 'Numquam.',
        language: 'es',
        name: 'validus',
      ),
      Models::Shared::LmsContentLocalization.new(
        description: 'Callide.',
        language: 'fr',
        name: 'crux',
      ),
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Adnuo antepono vulticulus incidunt. Commemoro voro ocer arca velut vigor venustas una audeo. Consectetur totidem amor amo vigor. Patior ulciscor cohors necessitatibus beatae. Copiose cedo sub decens acer.',
        description: 'Venia aeternus tandem spargo.',
        languages: [
          'zu',
          'ba',
        ],
        name: 'subiungo',
        thumbnail_url: 'https://loremflickr.com/2056/3712?lock=5644845642923518',
        type: Models::Shared::LmsMediaType::OTHER,
        url: 'https://loremflickr.com/2593/1553?lock=8591263400111785',
      ),
      Models::Shared::LmsMedia.new(
        content: 'Terminatio acidus tripudio teres. Compono demum aut aestivus ambitus pecus tergum verumtamen vestrum. Absque adversus desino aut tabernus tollo vigor. Cur agnitio totidem consuasor bene doloribus. Vetus abundans curriculum curatio usitas.',
        description: 'Comedo valde caste combibo.',
        languages: [
          'it',
          'hu',
        ],
        name: 'beneficium',
        thumbnail_url: 'https://picsum.photos/seed/pNFr1/2597/885',
        type: Models::Shared::LmsMediaType::WEB,
        url: 'https://loremflickr.com/3597/239?lock=7142808124990633',
      ),
      Models::Shared::LmsMedia.new(
        content: 'Coepi demo adversus capillus aro unus templum. Aspicio alius vehemens terminatio varietas vomica. Apud thorax defero decet impedit verbera pauci laboriosam molestiae urbanus. Aveho vergo crux certus nulla caute sophismata. Caute voluptatibus patrocinor demo verumtamen adeo canis sapiente depraedor verus.',
        description: 'Tunc barba decens.',
        languages: [
          'bn',
          'yo',
        ],
        name: 'qui',
        thumbnail_url: 'https://loremflickr.com/1375/3377?lock=6601832177607674',
        type: Models::Shared::LmsMediaType::IMAGE,
        url: 'https://loremflickr.com/3927/2086?lock=5199784913821481',
      ),
    ],
    name: 'ut',
    provider_name: 'Berge LLC',
    published_at: DateTime.iso8601('2023-11-08T11:32:09.080Z'),
    short_description: 'Commemoro.',
    skills: [
      'trucido',
    ],
    sort_order: 3.0,
    subjects: [
      Models::Shared::LmsSubject.new(
        name: 'tibi',
        rank: 1.0,
      ),
    ],
    tags: [
      'dens',
    ],
    updated_at: DateTime.iso8601('2022-09-23T11:12:34.570Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Remove a content

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsContent" method="delete" path="/lms/{connection_id}/content/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Update a content

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsContent" method="put" path="/lms/{connection_id}/content/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLmsContentRequest.new(
  lms_content: Models::Shared::LmsContent.new(
    categories: [
      'territo',
    ],
    created_at: DateTime.iso8601('2020-10-22T22:30:50.963Z'),
    description: 'Usque laboriosam ventosus adflicto.',
    difficulty: 'Beginner',
    duration_minutes: 19.0,
    external_reference: '0d230e31-a9c4-4a35-a5b9-9168e91ffff5',
    id: 'e5541a3f-34cb-41b3-bec7-97e33782a388',
    instructors: [
      Models::Shared::LmsReference.new(
        id: '91a23b20-a7a3-4323-9548-0897c09eb49e',
        name: 'Winston Ferry',
      ),
    ],
    is_active: true,
    languages: [
      'despecto',
      'suppellex',
    ],
    localizations: [
      Models::Shared::LmsContentLocalization.new(
        description: 'Numquam.',
        language: 'es',
        name: 'validus',
      ),
      Models::Shared::LmsContentLocalization.new(
        description: 'Callide.',
        language: 'fr',
        name: 'crux',
      ),
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Adnuo antepono vulticulus incidunt. Commemoro voro ocer arca velut vigor venustas una audeo. Consectetur totidem amor amo vigor. Patior ulciscor cohors necessitatibus beatae. Copiose cedo sub decens acer.',
        description: 'Venia aeternus tandem spargo.',
        languages: [
          'zu',
          'ba',
        ],
        name: 'subiungo',
        thumbnail_url: 'https://loremflickr.com/2056/3712?lock=5644845642923518',
        type: Models::Shared::LmsMediaType::OTHER,
        url: 'https://loremflickr.com/2593/1553?lock=8591263400111785',
      ),
      Models::Shared::LmsMedia.new(
        content: 'Terminatio acidus tripudio teres. Compono demum aut aestivus ambitus pecus tergum verumtamen vestrum. Absque adversus desino aut tabernus tollo vigor. Cur agnitio totidem consuasor bene doloribus. Vetus abundans curriculum curatio usitas.',
        description: 'Comedo valde caste combibo.',
        languages: [
          'it',
          'hu',
        ],
        name: 'beneficium',
        thumbnail_url: 'https://picsum.photos/seed/pNFr1/2597/885',
        type: Models::Shared::LmsMediaType::WEB,
        url: 'https://loremflickr.com/3597/239?lock=7142808124990633',
      ),
      Models::Shared::LmsMedia.new(
        content: 'Coepi demo adversus capillus aro unus templum. Aspicio alius vehemens terminatio varietas vomica. Apud thorax defero decet impedit verbera pauci laboriosam molestiae urbanus. Aveho vergo crux certus nulla caute sophismata. Caute voluptatibus patrocinor demo verumtamen adeo canis sapiente depraedor verus.',
        description: 'Tunc barba decens.',
        languages: [
          'bn',
          'yo',
        ],
        name: 'qui',
        thumbnail_url: 'https://loremflickr.com/1375/3377?lock=6601832177607674',
        type: Models::Shared::LmsMediaType::IMAGE,
        url: 'https://loremflickr.com/3927/2086?lock=5199784913821481',
      ),
    ],
    name: 'ut',
    provider_name: 'Berge LLC',
    published_at: DateTime.iso8601('2023-11-08T11:32:09.080Z'),
    short_description: 'Commemoro.',
    skills: [
      'trucido',
    ],
    sort_order: 3.0,
    subjects: [
      Models::Shared::LmsSubject.new(
        name: 'tibi',
        rank: 1.0,
      ),
    ],
    tags: [
      'dens',
    ],
    updated_at: DateTime.iso8601('2022-09-23T11:12:34.570Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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