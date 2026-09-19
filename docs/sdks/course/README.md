# Course
(*course*)

## Overview

### Available Operations

* [create_lms_course](#create_lms_course) - Create a course
* [get_lms_course](#get_lms_course) - Retrieve a course
* [list_lms_courses](#list_lms_courses) - List all courses
* [patch_lms_course](#patch_lms_course) - Update a course
* [remove_lms_course](#remove_lms_course) - Remove a course
* [update_lms_course](#update_lms_course) - Update a course

## create_lms_course

Create a course

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsCourse" method="post" path="/lms/{connection_id}/course" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.course.create_lms_course(lms_course: Models::Shared::LmsCourse.new(
  categories: [
    'tergiversatio',
    'tumultus',
  ],
  created_at: DateTime.iso8601('2022-10-06T09:58:53.559Z'),
  currency: 'FJD',
  description: 'Vinco alias aut capitulus.',
  duration_minutes: 148.0,
  id: '60900257-dd8b-4545-90ec-64e943b95aac',
  instructors: [],
  is_active: true,
  is_private: false,
  languages: [
    'desparatus',
    'earum',
    'deripio',
  ],
  media: [
    Models::Shared::LmsMedia.new(
      content: 'Adeptio crudelis ipsum utrimque quae architecto. Cum eius conitor anser abutor error adsuesco abeo. Denego nihil caries aveho.',
      description: 'Adipiscor.',
      languages: [
        'ms',
        'te',
      ],
      name: 'tandem',
      thumbnail_url: 'https://picsum.photos/seed/syTatRhK03/928/273',
      type: Models::Shared::LmsMediaType::OTHER,
      url: 'https://picsum.photos/seed/fQAbsk/2472/1671',
    ),
  ],
  name: 'comptus',
  price_amount: 84.0,
  provider_name: 'Homenick - Wunsch',
  published_at: DateTime.iso8601('2023-12-30T03:35:03.902Z'),
  skills: [
    'adiuvo',
    'tam',
  ],
  students: [],
  time_estimate_minutes: 100.0,
  updated_at: DateTime.iso8601('2023-02-07T00:38:15.179Z'),
), connection_id: '<id>')

unless res.lms_course.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `lms_course`                                                                                                                                     | [Models::Shared::LmsCourse](../../models/shared/lmscourse.md)                                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLmsCourseQueryParamFields](../../models/operations/createlmscoursequeryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLmsCourseResponse)](../../models/operations/createlmscourseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_lms_course

Retrieve a course

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsCourse" method="get" path="/lms/{connection_id}/course/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.course.get_lms_course(connection_id: '<id>', id: '<id>')

unless res.lms_course.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Course                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLmsCourseQueryParamFields](../../models/operations/getlmscoursequeryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLmsCourseResponse)](../../models/operations/getlmscourseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_lms_courses

List all courses

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsCourses" method="get" path="/lms/{connection_id}/course" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLmsCoursesRequest.new(
  connection_id: '<id>',
)

res = s.course.list_lms_courses(request: req)

unless res.lms_courses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListLmsCoursesRequest](../../models/operations/listlmscoursesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListLmsCoursesResponse)](../../models/operations/listlmscoursesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_lms_course

Update a course

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsCourse" method="patch" path="/lms/{connection_id}/course/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLmsCourseRequest.new(
  lms_course: Models::Shared::LmsCourse.new(
    categories: [
      'tergiversatio',
      'tumultus',
    ],
    created_at: DateTime.iso8601('2022-10-06T09:58:53.559Z'),
    currency: 'FJD',
    description: 'Vinco alias aut capitulus.',
    duration_minutes: 148.0,
    id: 'a4a75333-73eb-4ada-991a-6e5fefb69c43',
    instructors: [],
    is_active: true,
    is_private: false,
    languages: [
      'desparatus',
      'earum',
      'deripio',
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Adeptio crudelis ipsum utrimque quae architecto. Cum eius conitor anser abutor error adsuesco abeo. Denego nihil caries aveho.',
        description: 'Adipiscor.',
        languages: [
          'ms',
          'te',
        ],
        name: 'tandem',
        thumbnail_url: 'https://picsum.photos/seed/syTatRhK03/928/273',
        type: Models::Shared::LmsMediaType::OTHER,
        url: 'https://picsum.photos/seed/fQAbsk/2472/1671',
      ),
    ],
    name: 'comptus',
    price_amount: 84.0,
    provider_name: 'Homenick - Wunsch',
    published_at: DateTime.iso8601('2023-12-30T03:35:03.902Z'),
    skills: [
      'adiuvo',
      'tam',
    ],
    students: [],
    time_estimate_minutes: 100.0,
    updated_at: DateTime.iso8601('2023-02-07T00:38:15.181Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.course.patch_lms_course(request: req)

unless res.lms_course.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchLmsCourseRequest](../../models/operations/patchlmscourserequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchLmsCourseResponse)](../../models/operations/patchlmscourseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_lms_course

Remove a course

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsCourse" method="delete" path="/lms/{connection_id}/course/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.course.remove_lms_course(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Course     |

### Response

**[T.nilable(Models::Operations::RemoveLmsCourseResponse)](../../models/operations/removelmscourseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_lms_course

Update a course

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsCourse" method="put" path="/lms/{connection_id}/course/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLmsCourseRequest.new(
  lms_course: Models::Shared::LmsCourse.new(
    categories: [
      'tergiversatio',
      'tumultus',
    ],
    created_at: DateTime.iso8601('2022-10-06T09:58:53.559Z'),
    currency: 'FJD',
    description: 'Vinco alias aut capitulus.',
    duration_minutes: 148.0,
    id: 'a4a75333-73eb-4ada-991a-6e5fefb69c43',
    instructors: [],
    is_active: true,
    is_private: false,
    languages: [
      'desparatus',
      'earum',
      'deripio',
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Adeptio crudelis ipsum utrimque quae architecto. Cum eius conitor anser abutor error adsuesco abeo. Denego nihil caries aveho.',
        description: 'Adipiscor.',
        languages: [
          'ms',
          'te',
        ],
        name: 'tandem',
        thumbnail_url: 'https://picsum.photos/seed/syTatRhK03/928/273',
        type: Models::Shared::LmsMediaType::OTHER,
        url: 'https://picsum.photos/seed/fQAbsk/2472/1671',
      ),
    ],
    name: 'comptus',
    price_amount: 84.0,
    provider_name: 'Homenick - Wunsch',
    published_at: DateTime.iso8601('2023-12-30T03:35:03.902Z'),
    skills: [
      'adiuvo',
      'tam',
    ],
    students: [],
    time_estimate_minutes: 100.0,
    updated_at: DateTime.iso8601('2023-02-07T00:38:15.181Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.course.update_lms_course(request: req)

unless res.lms_course.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateLmsCourseRequest](../../models/operations/updatelmscourserequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateLmsCourseResponse)](../../models/operations/updatelmscourseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |