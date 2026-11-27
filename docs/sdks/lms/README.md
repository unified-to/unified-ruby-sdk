# Lms

## Overview

### Available Operations

* [create_lms_activity](#create_lms_activity) - Create an activity
* [create_lms_class](#create_lms_class) - Create a class
* [create_lms_collection](#create_lms_collection) - Create a collection
* [create_lms_content](#create_lms_content) - Create a content
* [create_lms_course](#create_lms_course) - Create a course
* [create_lms_instructor](#create_lms_instructor) - Create an instructor
* [create_lms_student](#create_lms_student) - Create a student
* [get_lms_activity](#get_lms_activity) - Retrieve an activity
* [get_lms_class](#get_lms_class) - Retrieve a class
* [get_lms_collection](#get_lms_collection) - Retrieve a collection
* [get_lms_content](#get_lms_content) - Retrieve a content
* [get_lms_course](#get_lms_course) - Retrieve a course
* [get_lms_instructor](#get_lms_instructor) - Retrieve an instructor
* [get_lms_student](#get_lms_student) - Retrieve a student
* [list_lms_activities](#list_lms_activities) - List all activities
* [list_lms_classes](#list_lms_classes) - List all classes
* [list_lms_collections](#list_lms_collections) - List all collections
* [list_lms_contents](#list_lms_contents) - List all contents
* [list_lms_courses](#list_lms_courses) - List all courses
* [list_lms_instructors](#list_lms_instructors) - List all instructors
* [list_lms_students](#list_lms_students) - List all students
* [patch_lms_activity](#patch_lms_activity) - Update an activity
* [patch_lms_class](#patch_lms_class) - Update a class
* [patch_lms_collection](#patch_lms_collection) - Update a collection
* [patch_lms_content](#patch_lms_content) - Update a content
* [patch_lms_course](#patch_lms_course) - Update a course
* [patch_lms_instructor](#patch_lms_instructor) - Update an instructor
* [patch_lms_student](#patch_lms_student) - Update a student
* [remove_lms_activity](#remove_lms_activity) - Remove an activity
* [remove_lms_class](#remove_lms_class) - Remove a class
* [remove_lms_collection](#remove_lms_collection) - Remove a collection
* [remove_lms_content](#remove_lms_content) - Remove a content
* [remove_lms_course](#remove_lms_course) - Remove a course
* [remove_lms_instructor](#remove_lms_instructor) - Remove an instructor
* [remove_lms_student](#remove_lms_student) - Remove a student
* [update_lms_activity](#update_lms_activity) - Update an activity
* [update_lms_class](#update_lms_class) - Update a class
* [update_lms_collection](#update_lms_collection) - Update a collection
* [update_lms_content](#update_lms_content) - Update a content
* [update_lms_course](#update_lms_course) - Update a course
* [update_lms_instructor](#update_lms_instructor) - Update an instructor
* [update_lms_student](#update_lms_student) - Update a student

## create_lms_activity

Creates a LmsActivity. Provide the unified LmsActivity fields in the request body; they are mapped to the provider's API. Returns the created LmsActivity.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsActivity" method="post" path="/lms/{connection_id}/activity" example="lms_activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.create_lms_activity(lms_activity: Models::Shared::LmsActivity.new(
  assigned_grade: 'deserunt',
  completed_at: DateTime.iso8601('2023-12-25T07:06:47.120Z'),
  created_at: DateTime.iso8601('2020-10-17T01:25:21.745Z'),
  duration_minutes: 55.0,
  id: 'b2b88109-961c-4e65-89e3-42c3c6c59f59',
  is_completed: true,
  metadata: [],
  progress_percentage: 100.0,
  started_at: DateTime.iso8601('2021-04-28T09:20:57.504Z'),
  updated_at: DateTime.iso8601('2022-02-07T22:18:28.328Z')
), connection_id: '<id>')

unless res.lms_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `lms_activity`                                                                                                                                   | [Models::Shared::LmsActivity](../../models/shared/lmsactivity.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLmsActivityQueryParamFields](../../models/operations/createlmsactivityqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLmsActivityResponse)](../../models/operations/createlmsactivityresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_lms_class

Creates a LmsClass. Provide the unified LmsClass fields in the request body; they are mapped to the provider's API. Returns the created LmsClass.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsClass" method="post" path="/lms/{connection_id}/class" example="lms_class" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.create_lms_class(lms_class: Models::Shared::LmsClass.new(
  created_at: DateTime.iso8601('2020-02-20T14:48:51.845Z'),
  description: 'Animus callide corpus.',
  id: 'fef42aac-944a-4d4e-8b93-abfbb0198bc2',
  instructors: [],
  languages: [
    'in',
  ],
  media: [
    Models::Shared::LmsMedia.new(
      content: 'Ceno earum culpa adhaero tabesco apostolus talis. Ultra accommodo deinde sono culpo arto cruciamentum triduana. Solvo uter adficio.',
      description: 'Defetiscor aetas.',
      languages: [
        'ko',
        'lv',
      ],
      name: 'suspendo',
      thumbnail_url: 'https://picsum.photos/seed/coddeQdTZn/105/852',
      type: Models::Shared::LmsMediaType::VIDEO,
      url: 'https://picsum.photos/seed/wl3tnt/2277/2170'
    ),
  ],
  metadata: [],
  name: 'sperno',
  students: [],
  updated_at: DateTime.iso8601('2025-09-03T04:14:55.043Z')
), connection_id: '<id>')

unless res.lms_class.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `lms_class`                                                                                                                                      | [Models::Shared::LmsClass](../../models/shared/lmsclass.md)                                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLmsClassQueryParamFields](../../models/operations/createlmsclassqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLmsClassResponse)](../../models/operations/createlmsclassresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_lms_collection

Creates a LmsCollection. Provide the unified LmsCollection fields in the request body; they are mapped to the provider's API. Returns the created LmsCollection.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsCollection" method="post" path="/lms/{connection_id}/collection" example="lms_collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.create_lms_collection(lms_collection: Models::Shared::LmsCollection.new(
  created_at: DateTime.iso8601('2019-08-19T14:40:29.227Z'),
  description: 'Defluo.',
  id: '05c44bf5-60c4-42b1-946a-ffe80de47a36',
  is_active: true,
  media: [
    Models::Shared::LmsMedia.new(
      content: 'Sollers adeo caste brevis denuo attonbitus. Amita ducimus capillus claudeo vulgaris temporibus arbustum solium. Degusto suppono commodo fuga surculus tripudio doloribus. Quaerat cauda civitas carcer alveus alienus sperno vetus. Adulescens conspergo appositus arguo. Fugiat cimentarius depono angustus somniculosus tubineus terra beatae sui.',
      description: 'Alias sit careo vesco tollo.',
      languages: [
        'eo',
      ],
      name: 'aiunt',
      thumbnail_url: 'https://picsum.photos/seed/Iy2MXlem/2398/73',
      type: Models::Shared::LmsMediaType::HEADSHOT,
      url: 'https://picsum.photos/seed/5KfxRKbzo1/2699/3216'
    ),
  ],
  metadata: [],
  name: 'spargo',
  updated_at: DateTime.iso8601('2026-09-04T03:28:53.488Z')
), connection_id: '<id>')

unless res.lms_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `lms_collection`                                                                                                                                 | [Models::Shared::LmsCollection](../../models/shared/lmscollection.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLmsCollectionQueryParamFields](../../models/operations/createlmscollectionqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLmsCollectionResponse)](../../models/operations/createlmscollectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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
res = s.lms.create_lms_content(lms_content: Models::Shared::LmsContent.new(
  categories: [
    'tergum',
  ],
  created_at: DateTime.iso8601('2020-10-22T22:30:50.963Z'),
  description: 'Adflicto despecto suppellex socius cresco.',
  difficulty: 'Beginner',
  duration_minutes: 19.0,
  id: 'fe1ad914-67ce-4900-bbd9-1807fd6f1c62',
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
  published_at: DateTime.iso8601('2022-09-14T18:25:33.374Z'),
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
  updated_at: DateTime.iso8601('2022-10-16T05:15:01.227Z')
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

## create_lms_course

Creates a LmsCourse. Provide the unified LmsCourse fields in the request body; they are mapped to the provider's API. Returns the created LmsCourse.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsCourse" method="post" path="/lms/{connection_id}/course" example="lms_course" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.create_lms_course(lms_course: Models::Shared::LmsCourse.new(
  categories: [
    'deripio',
    'tergiversatio',
  ],
  created_at: DateTime.iso8601('2022-10-06T09:58:53.559Z'),
  currency: 'DZD',
  description: 'Aut.',
  duration_minutes: 148.0,
  id: '40a97e02-eb36-47f0-8bd0-c5f0eb3a92b7',
  instructors: [],
  is_active: true,
  is_private: false,
  languages: [
    'capitulus',
    'desparatus',
    'earum',
  ],
  media: [
    Models::Shared::LmsMedia.new(
      content: 'Carbo dapifer adeptio. Ipsum utrimque quae architecto repellendus cum. Conitor anser abutor error adsuesco abeo caelestis.',
      description: 'Accommodo adipiscor campana aegrotatio.',
      languages: [
        'el',
        'hr',
      ],
      name: 'conduco',
      thumbnail_url: 'https://picsum.photos/seed/yTatRhK/3873/3840',
      type: Models::Shared::LmsMediaType::OTHER,
      url: 'https://picsum.photos/seed/vcfQAbs/3357/2472'
    ),
  ],
  metadata: [],
  name: 'vinco',
  price_amount: 84.0,
  provider_name: 'Roberts Group',
  published_at: DateTime.iso8601('2022-11-06T12:27:14.244Z'),
  skills: [
    'aveho',
    'via',
  ],
  students: [],
  time_estimate_minutes: 100.0,
  updated_at: DateTime.iso8601('2023-02-12T22:24:37.401Z')
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

## create_lms_instructor

Creates a LmsInstructor. Provide the unified LmsInstructor fields in the request body; they are mapped to the provider's API. Returns the created LmsInstructor.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsInstructor" method="post" path="/lms/{connection_id}/instructor" example="lms_instructor" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.create_lms_instructor(lms_instructor: Models::Shared::LmsInstructor.new(
  created_at: DateTime.iso8601('2021-10-12T16:38:54.979Z'),
  emails: [
    Models::Shared::LmsEmail.new,
  ],
  first_name: 'Miranda',
  id: '58a79b6e-7fad-4b3e-aed7-aeb359ecf6f3',
  image_url: 'https://avatars.githubusercontent.com/u/96902788',
  last_name: 'Turcotte',
  metadata: [],
  name: 'Miranda Turcotte',
  telephones: [
    Models::Shared::LmsTelephone.new(
      telephone: '(752) 816-3330',
      type: Models::Shared::LmsTelephoneType::WORK
    ),
    Models::Shared::LmsTelephone.new(
      telephone: '(415) 345-1798',
      type: Models::Shared::LmsTelephoneType::HOME
    ),
  ],
  title: 'Customer Brand Planner',
  updated_at: DateTime.iso8601('2025-08-21T07:05:43.050Z')
), connection_id: '<id>')

unless res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `lms_instructor`                                                                                                                                 | [Models::Shared::LmsInstructor](../../models/shared/lmsinstructor.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLmsInstructorQueryParamFields](../../models/operations/createlmsinstructorqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLmsInstructorResponse)](../../models/operations/createlmsinstructorresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_lms_student

Creates a LmsStudent. Provide the unified LmsStudent fields in the request body; they are mapped to the provider's API. Returns the created LmsStudent.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsStudent" method="post" path="/lms/{connection_id}/student" example="lms_student" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.create_lms_student(lms_student: Models::Shared::LmsStudent.new(
  address: Models::Shared::PropertyLmsStudentAddress.new(
    address1: '4610 Smith Cove',
    city: 'Lake Milanchester',
    country_code: 'US',
    postal_code: '58634-4787',
    region: 'Iowa',
    region_code: 'AZ'
  ),
  created_at: DateTime.iso8601('2020-03-23T06:59:29.777Z'),
  emails: [
    Models::Shared::LmsEmail.new,
  ],
  first_name: 'Lazaro',
  id: 'e1c19016-f0e8-4d37-833f-1ba6e8be75b9',
  image_url: 'https://avatars.githubusercontent.com/u/3245424',
  last_name: 'Zulauf-Schowalter',
  metadata: [],
  name: 'Lazaro Zulauf-Schowalter',
  telephones: [
    Models::Shared::LmsTelephone.new(
      telephone: '(476) 500-2870',
      type: Models::Shared::LmsTelephoneType::WORK
    ),
    Models::Shared::LmsTelephone.new(
      telephone: '(338) 436-9806',
      type: Models::Shared::LmsTelephoneType::FAX
    ),
    Models::Shared::LmsTelephone.new(
      telephone: '(852) 940-8205',
      type: Models::Shared::LmsTelephoneType::FAX
    ),
  ],
  updated_at: DateTime.iso8601('2022-07-13T18:14:24.347Z')
), connection_id: '<id>')

unless res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `lms_student`                                                                                                                                    | [Models::Shared::LmsStudent](../../models/shared/lmsstudent.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLmsStudentQueryParamFields](../../models/operations/createlmsstudentqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLmsStudentResponse)](../../models/operations/createlmsstudentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_lms_activity

Retrieves a single LmsActivity by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsActivity" method="get" path="/lms/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.get_lms_activity(connection_id: '<id>', id: '<id>')

unless res.lms_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Activity                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLmsActivityQueryParamFields](../../models/operations/getlmsactivityqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLmsActivityResponse)](../../models/operations/getlmsactivityresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_lms_class

Retrieves a single LmsClass by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsClass" method="get" path="/lms/{connection_id}/class/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.get_lms_class(connection_id: '<id>', id: '<id>')

unless res.lms_class.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Class                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLmsClassQueryParamFields](../../models/operations/getlmsclassqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLmsClassResponse)](../../models/operations/getlmsclassresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_lms_collection

Retrieves a single LmsCollection by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsCollection" method="get" path="/lms/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.get_lms_collection(connection_id: '<id>', id: '<id>')

unless res.lms_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Collection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLmsCollectionQueryParamFields](../../models/operations/getlmscollectionqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLmsCollectionResponse)](../../models/operations/getlmscollectionresponse.md)**

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
res = s.lms.get_lms_content(connection_id: '<id>', id: '<id>')

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

## get_lms_course

Retrieves a single LmsCourse by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsCourse" method="get" path="/lms/{connection_id}/course/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.get_lms_course(connection_id: '<id>', id: '<id>')

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

## get_lms_instructor

Retrieves a single LmsInstructor by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsInstructor" method="get" path="/lms/{connection_id}/instructor/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.get_lms_instructor(connection_id: '<id>', id: '<id>')

unless res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Instructor                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLmsInstructorQueryParamFields](../../models/operations/getlmsinstructorqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLmsInstructorResponse)](../../models/operations/getlmsinstructorresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_lms_student

Retrieves a single LmsStudent by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsStudent" method="get" path="/lms/{connection_id}/student/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.get_lms_student(connection_id: '<id>', id: '<id>')

unless res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Student                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLmsStudentQueryParamFields](../../models/operations/getlmsstudentqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLmsStudentResponse)](../../models/operations/getlmsstudentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_lms_activities

Returns a list of LmsActivities. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsActivities" method="get" path="/lms/{connection_id}/activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListLmsActivitiesRequest.new(
  connection_id: '<id>'
)
res = s.lms.list_lms_activities(request: req)

unless res.lms_activities.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListLmsActivitiesRequest](../../models/operations/listlmsactivitiesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListLmsActivitiesResponse)](../../models/operations/listlmsactivitiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_lms_classes

Returns a list of LmsClasses. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsClasses" method="get" path="/lms/{connection_id}/class" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListLmsClassesRequest.new(
  connection_id: '<id>'
)
res = s.lms.list_lms_classes(request: req)

unless res.lms_classes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListLmsClassesRequest](../../models/operations/listlmsclassesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListLmsClassesResponse)](../../models/operations/listlmsclassesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_lms_collections

Returns a list of LmsCollections. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsCollections" method="get" path="/lms/{connection_id}/collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListLmsCollectionsRequest.new(
  connection_id: '<id>'
)
res = s.lms.list_lms_collections(request: req)

unless res.lms_collections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListLmsCollectionsRequest](../../models/operations/listlmscollectionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListLmsCollectionsResponse)](../../models/operations/listlmscollectionsresponse.md)**

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
res = s.lms.list_lms_contents(request: req)

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

## list_lms_courses

Returns a list of LmsCourses. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsCourses" method="get" path="/lms/{connection_id}/course" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListLmsCoursesRequest.new(
  connection_id: '<id>'
)
res = s.lms.list_lms_courses(request: req)

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

## list_lms_instructors

Returns a list of LmsInstructors. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsInstructors" method="get" path="/lms/{connection_id}/instructor" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListLmsInstructorsRequest.new(
  connection_id: '<id>'
)
res = s.lms.list_lms_instructors(request: req)

unless res.lms_instructors.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListLmsInstructorsRequest](../../models/operations/listlmsinstructorsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListLmsInstructorsResponse)](../../models/operations/listlmsinstructorsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_lms_students

Returns a list of LmsStudents. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsStudents" method="get" path="/lms/{connection_id}/student" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListLmsStudentsRequest.new(
  connection_id: '<id>'
)
res = s.lms.list_lms_students(request: req)

unless res.lms_students.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListLmsStudentsRequest](../../models/operations/listlmsstudentsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListLmsStudentsResponse)](../../models/operations/listlmsstudentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_lms_activity

Updates the LmsActivity identified by `id`. Provide the unified LmsActivity fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsActivity" method="patch" path="/lms/{connection_id}/activity/{id}" example="lms_activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchLmsActivityRequest.new(
  lms_activity: Models::Shared::LmsActivity.new(
    assigned_grade: 'deserunt',
    completed_at: DateTime.iso8601('2023-12-25T07:06:47.125Z'),
    created_at: DateTime.iso8601('2020-10-17T01:25:21.745Z'),
    duration_minutes: 55.0,
    id: 'e96ef5ea-1e95-473b-8fae-b8cc2d9b6729',
    is_completed: true,
    metadata: [],
    progress_percentage: 100.0,
    started_at: DateTime.iso8601('2021-04-28T09:20:57.505Z'),
    updated_at: DateTime.iso8601('2022-02-07T22:18:28.330Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.patch_lms_activity(request: req)

unless res.lms_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchLmsActivityRequest](../../models/operations/patchlmsactivityrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchLmsActivityResponse)](../../models/operations/patchlmsactivityresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_lms_class

Updates the LmsClass identified by `id`. Provide the unified LmsClass fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsClass" method="patch" path="/lms/{connection_id}/class/{id}" example="lms_class" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchLmsClassRequest.new(
  lms_class: Models::Shared::LmsClass.new(
    created_at: DateTime.iso8601('2020-02-20T14:48:51.845Z'),
    description: 'Animus callide corpus.',
    id: '2bf14277-0ce7-42ee-9343-148ae890304a',
    instructors: [],
    languages: [
      'in',
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Ceno earum culpa adhaero tabesco apostolus talis. Ultra accommodo deinde sono culpo arto cruciamentum triduana. Solvo uter adficio.',
        description: 'Defetiscor aetas.',
        languages: [
          'ko',
          'lv',
        ],
        name: 'suspendo',
        thumbnail_url: 'https://picsum.photos/seed/coddeQdTZn/105/852',
        type: Models::Shared::LmsMediaType::VIDEO,
        url: 'https://picsum.photos/seed/wl3tnt/2277/2170'
      ),
    ],
    metadata: [],
    name: 'sperno',
    students: [],
    updated_at: DateTime.iso8601('2025-09-03T04:14:55.059Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.patch_lms_class(request: req)

unless res.lms_class.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::PatchLmsClassRequest](../../models/operations/patchlmsclassrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::PatchLmsClassResponse)](../../models/operations/patchlmsclassresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_lms_collection

Updates the LmsCollection identified by `id`. Provide the unified LmsCollection fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsCollection" method="patch" path="/lms/{connection_id}/collection/{id}" example="lms_collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchLmsCollectionRequest.new(
  lms_collection: Models::Shared::LmsCollection.new(
    created_at: DateTime.iso8601('2019-08-19T14:40:29.227Z'),
    description: 'Defluo.',
    id: 'ef7025ad-8db8-4a1b-9c1b-9ee55ce5b312',
    is_active: true,
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Sollers adeo caste brevis denuo attonbitus. Amita ducimus capillus claudeo vulgaris temporibus arbustum solium. Degusto suppono commodo fuga surculus tripudio doloribus. Quaerat cauda civitas carcer alveus alienus sperno vetus. Adulescens conspergo appositus arguo. Fugiat cimentarius depono angustus somniculosus tubineus terra beatae sui.',
        description: 'Alias sit careo vesco tollo.',
        languages: [
          'eo',
        ],
        name: 'aiunt',
        thumbnail_url: 'https://picsum.photos/seed/Iy2MXlem/2398/73',
        type: Models::Shared::LmsMediaType::HEADSHOT,
        url: 'https://picsum.photos/seed/5KfxRKbzo1/2699/3216'
      ),
    ],
    metadata: [],
    name: 'spargo',
    updated_at: DateTime.iso8601('2026-09-04T03:28:53.498Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.patch_lms_collection(request: req)

unless res.lms_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchLmsCollectionRequest](../../models/operations/patchlmscollectionrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchLmsCollectionResponse)](../../models/operations/patchlmscollectionresponse.md)**

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
    id: '7c699388-ed1b-4295-88ab-d5d6ba1b694a',
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
    published_at: DateTime.iso8601('2022-09-14T18:25:33.381Z'),
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
    updated_at: DateTime.iso8601('2022-10-16T05:15:01.233Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.patch_lms_content(request: req)

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

## patch_lms_course

Updates the LmsCourse identified by `id`. Provide the unified LmsCourse fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsCourse" method="patch" path="/lms/{connection_id}/course/{id}" example="lms_course" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchLmsCourseRequest.new(
  lms_course: Models::Shared::LmsCourse.new(
    categories: [
      'deripio',
      'tergiversatio',
    ],
    created_at: DateTime.iso8601('2022-10-06T09:58:53.559Z'),
    currency: 'DZD',
    description: 'Aut.',
    duration_minutes: 148.0,
    id: 'e542c7a9-4fa3-4357-bfca-4353797da1e9',
    instructors: [],
    is_active: true,
    is_private: false,
    languages: [
      'capitulus',
      'desparatus',
      'earum',
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Carbo dapifer adeptio. Ipsum utrimque quae architecto repellendus cum. Conitor anser abutor error adsuesco abeo caelestis.',
        description: 'Accommodo adipiscor campana aegrotatio.',
        languages: [
          'el',
          'hr',
        ],
        name: 'conduco',
        thumbnail_url: 'https://picsum.photos/seed/yTatRhK/3873/3840',
        type: Models::Shared::LmsMediaType::OTHER,
        url: 'https://picsum.photos/seed/vcfQAbs/3357/2472'
      ),
    ],
    metadata: [],
    name: 'vinco',
    price_amount: 84.0,
    provider_name: 'Roberts Group',
    published_at: DateTime.iso8601('2022-11-06T12:27:14.245Z'),
    skills: [
      'aveho',
      'via',
    ],
    students: [],
    time_estimate_minutes: 100.0,
    updated_at: DateTime.iso8601('2023-02-12T22:24:37.403Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.patch_lms_course(request: req)

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

## patch_lms_instructor

Updates the LmsInstructor identified by `id`. Provide the unified LmsInstructor fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsInstructor" method="patch" path="/lms/{connection_id}/instructor/{id}" example="lms_instructor" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchLmsInstructorRequest.new(
  lms_instructor: Models::Shared::LmsInstructor.new(
    created_at: DateTime.iso8601('2021-10-12T16:38:54.979Z'),
    emails: [
      Models::Shared::LmsEmail.new,
    ],
    first_name: 'Miranda',
    id: '5fccb015-519c-4f70-a1bd-1694805fbb66',
    image_url: 'https://avatars.githubusercontent.com/u/96902788',
    last_name: 'Turcotte',
    metadata: [],
    name: 'Miranda Turcotte',
    telephones: [
      Models::Shared::LmsTelephone.new(
        telephone: '(752) 816-3330',
        type: Models::Shared::LmsTelephoneType::WORK
      ),
      Models::Shared::LmsTelephone.new(
        telephone: '(415) 345-1798',
        type: Models::Shared::LmsTelephoneType::HOME
      ),
    ],
    title: 'Customer Brand Planner',
    updated_at: DateTime.iso8601('2025-08-21T07:05:43.058Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.patch_lms_instructor(request: req)

unless res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchLmsInstructorRequest](../../models/operations/patchlmsinstructorrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchLmsInstructorResponse)](../../models/operations/patchlmsinstructorresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_lms_student

Updates the LmsStudent identified by `id`. Provide the unified LmsStudent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsStudent" method="patch" path="/lms/{connection_id}/student/{id}" example="lms_student" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchLmsStudentRequest.new(
  lms_student: Models::Shared::LmsStudent.new(
    address: Models::Shared::PropertyLmsStudentAddress.new(
      address1: '4610 Smith Cove',
      city: 'Lake Milanchester',
      country_code: 'US',
      postal_code: '58634-4787',
      region: 'Iowa',
      region_code: 'AZ'
    ),
    created_at: DateTime.iso8601('2020-03-23T06:59:29.777Z'),
    emails: [
      Models::Shared::LmsEmail.new,
    ],
    first_name: 'Lazaro',
    id: '887c5d83-6580-4ba9-a2a2-5246fdc76460',
    image_url: 'https://avatars.githubusercontent.com/u/3245424',
    last_name: 'Zulauf-Schowalter',
    metadata: [],
    name: 'Lazaro Zulauf-Schowalter',
    telephones: [
      Models::Shared::LmsTelephone.new(
        telephone: '(476) 500-2870',
        type: Models::Shared::LmsTelephoneType::WORK
      ),
      Models::Shared::LmsTelephone.new(
        telephone: '(338) 436-9806',
        type: Models::Shared::LmsTelephoneType::FAX
      ),
      Models::Shared::LmsTelephone.new(
        telephone: '(852) 940-8205',
        type: Models::Shared::LmsTelephoneType::FAX
      ),
    ],
    updated_at: DateTime.iso8601('2022-07-13T18:14:24.354Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.patch_lms_student(request: req)

unless res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchLmsStudentRequest](../../models/operations/patchlmsstudentrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchLmsStudentResponse)](../../models/operations/patchlmsstudentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_lms_activity

Deletes the LmsActivity identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsActivity" method="delete" path="/lms/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.remove_lms_activity(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Activity   |

### Response

**[T.nilable(Models::Operations::RemoveLmsActivityResponse)](../../models/operations/removelmsactivityresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_lms_class

Deletes the LmsClass identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsClass" method="delete" path="/lms/{connection_id}/class/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.remove_lms_class(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Class      |

### Response

**[T.nilable(Models::Operations::RemoveLmsClassResponse)](../../models/operations/removelmsclassresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_lms_collection

Deletes the LmsCollection identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsCollection" method="delete" path="/lms/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.remove_lms_collection(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Collection |

### Response

**[T.nilable(Models::Operations::RemoveLmsCollectionResponse)](../../models/operations/removelmscollectionresponse.md)**

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
res = s.lms.remove_lms_content(connection_id: '<id>', id: '<id>')

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

## remove_lms_course

Deletes the LmsCourse identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsCourse" method="delete" path="/lms/{connection_id}/course/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.remove_lms_course(connection_id: '<id>', id: '<id>')

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

## remove_lms_instructor

Deletes the LmsInstructor identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsInstructor" method="delete" path="/lms/{connection_id}/instructor/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.remove_lms_instructor(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Instructor |

### Response

**[T.nilable(Models::Operations::RemoveLmsInstructorResponse)](../../models/operations/removelmsinstructorresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_lms_student

Deletes the LmsStudent identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsStudent" method="delete" path="/lms/{connection_id}/student/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.lms.remove_lms_student(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Student    |

### Response

**[T.nilable(Models::Operations::RemoveLmsStudentResponse)](../../models/operations/removelmsstudentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_lms_activity

Updates the LmsActivity identified by `id`. Provide the unified LmsActivity fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsActivity" method="put" path="/lms/{connection_id}/activity/{id}" example="lms_activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateLmsActivityRequest.new(
  lms_activity: Models::Shared::LmsActivity.new(
    assigned_grade: 'deserunt',
    completed_at: DateTime.iso8601('2023-12-25T07:06:47.125Z'),
    created_at: DateTime.iso8601('2020-10-17T01:25:21.745Z'),
    duration_minutes: 55.0,
    id: 'e96ef5ea-1e95-473b-8fae-b8cc2d9b6729',
    is_completed: true,
    metadata: [],
    progress_percentage: 100.0,
    started_at: DateTime.iso8601('2021-04-28T09:20:57.505Z'),
    updated_at: DateTime.iso8601('2022-02-07T22:18:28.330Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.update_lms_activity(request: req)

unless res.lms_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateLmsActivityRequest](../../models/operations/updatelmsactivityrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateLmsActivityResponse)](../../models/operations/updatelmsactivityresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_lms_class

Updates the LmsClass identified by `id`. Provide the unified LmsClass fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsClass" method="put" path="/lms/{connection_id}/class/{id}" example="lms_class" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateLmsClassRequest.new(
  lms_class: Models::Shared::LmsClass.new(
    created_at: DateTime.iso8601('2020-02-20T14:48:51.845Z'),
    description: 'Animus callide corpus.',
    id: '2bf14277-0ce7-42ee-9343-148ae890304a',
    instructors: [],
    languages: [
      'in',
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Ceno earum culpa adhaero tabesco apostolus talis. Ultra accommodo deinde sono culpo arto cruciamentum triduana. Solvo uter adficio.',
        description: 'Defetiscor aetas.',
        languages: [
          'ko',
          'lv',
        ],
        name: 'suspendo',
        thumbnail_url: 'https://picsum.photos/seed/coddeQdTZn/105/852',
        type: Models::Shared::LmsMediaType::VIDEO,
        url: 'https://picsum.photos/seed/wl3tnt/2277/2170'
      ),
    ],
    metadata: [],
    name: 'sperno',
    students: [],
    updated_at: DateTime.iso8601('2025-09-03T04:14:55.059Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.update_lms_class(request: req)

unless res.lms_class.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::UpdateLmsClassRequest](../../models/operations/updatelmsclassrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::UpdateLmsClassResponse)](../../models/operations/updatelmsclassresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_lms_collection

Updates the LmsCollection identified by `id`. Provide the unified LmsCollection fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsCollection" method="put" path="/lms/{connection_id}/collection/{id}" example="lms_collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateLmsCollectionRequest.new(
  lms_collection: Models::Shared::LmsCollection.new(
    created_at: DateTime.iso8601('2019-08-19T14:40:29.227Z'),
    description: 'Defluo.',
    id: 'ef7025ad-8db8-4a1b-9c1b-9ee55ce5b312',
    is_active: true,
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Sollers adeo caste brevis denuo attonbitus. Amita ducimus capillus claudeo vulgaris temporibus arbustum solium. Degusto suppono commodo fuga surculus tripudio doloribus. Quaerat cauda civitas carcer alveus alienus sperno vetus. Adulescens conspergo appositus arguo. Fugiat cimentarius depono angustus somniculosus tubineus terra beatae sui.',
        description: 'Alias sit careo vesco tollo.',
        languages: [
          'eo',
        ],
        name: 'aiunt',
        thumbnail_url: 'https://picsum.photos/seed/Iy2MXlem/2398/73',
        type: Models::Shared::LmsMediaType::HEADSHOT,
        url: 'https://picsum.photos/seed/5KfxRKbzo1/2699/3216'
      ),
    ],
    metadata: [],
    name: 'spargo',
    updated_at: DateTime.iso8601('2026-09-04T03:28:53.498Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.update_lms_collection(request: req)

unless res.lms_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateLmsCollectionRequest](../../models/operations/updatelmscollectionrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateLmsCollectionResponse)](../../models/operations/updatelmscollectionresponse.md)**

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
    id: '7c699388-ed1b-4295-88ab-d5d6ba1b694a',
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
    published_at: DateTime.iso8601('2022-09-14T18:25:33.381Z'),
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
    updated_at: DateTime.iso8601('2022-10-16T05:15:01.233Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.update_lms_content(request: req)

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

## update_lms_course

Updates the LmsCourse identified by `id`. Provide the unified LmsCourse fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsCourse" method="put" path="/lms/{connection_id}/course/{id}" example="lms_course" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateLmsCourseRequest.new(
  lms_course: Models::Shared::LmsCourse.new(
    categories: [
      'deripio',
      'tergiversatio',
    ],
    created_at: DateTime.iso8601('2022-10-06T09:58:53.559Z'),
    currency: 'DZD',
    description: 'Aut.',
    duration_minutes: 148.0,
    id: 'e542c7a9-4fa3-4357-bfca-4353797da1e9',
    instructors: [],
    is_active: true,
    is_private: false,
    languages: [
      'capitulus',
      'desparatus',
      'earum',
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Carbo dapifer adeptio. Ipsum utrimque quae architecto repellendus cum. Conitor anser abutor error adsuesco abeo caelestis.',
        description: 'Accommodo adipiscor campana aegrotatio.',
        languages: [
          'el',
          'hr',
        ],
        name: 'conduco',
        thumbnail_url: 'https://picsum.photos/seed/yTatRhK/3873/3840',
        type: Models::Shared::LmsMediaType::OTHER,
        url: 'https://picsum.photos/seed/vcfQAbs/3357/2472'
      ),
    ],
    metadata: [],
    name: 'vinco',
    price_amount: 84.0,
    provider_name: 'Roberts Group',
    published_at: DateTime.iso8601('2022-11-06T12:27:14.245Z'),
    skills: [
      'aveho',
      'via',
    ],
    students: [],
    time_estimate_minutes: 100.0,
    updated_at: DateTime.iso8601('2023-02-12T22:24:37.403Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.update_lms_course(request: req)

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

## update_lms_instructor

Updates the LmsInstructor identified by `id`. Provide the unified LmsInstructor fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsInstructor" method="put" path="/lms/{connection_id}/instructor/{id}" example="lms_instructor" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateLmsInstructorRequest.new(
  lms_instructor: Models::Shared::LmsInstructor.new(
    created_at: DateTime.iso8601('2021-10-12T16:38:54.979Z'),
    emails: [
      Models::Shared::LmsEmail.new,
    ],
    first_name: 'Miranda',
    id: '5fccb015-519c-4f70-a1bd-1694805fbb66',
    image_url: 'https://avatars.githubusercontent.com/u/96902788',
    last_name: 'Turcotte',
    metadata: [],
    name: 'Miranda Turcotte',
    telephones: [
      Models::Shared::LmsTelephone.new(
        telephone: '(752) 816-3330',
        type: Models::Shared::LmsTelephoneType::WORK
      ),
      Models::Shared::LmsTelephone.new(
        telephone: '(415) 345-1798',
        type: Models::Shared::LmsTelephoneType::HOME
      ),
    ],
    title: 'Customer Brand Planner',
    updated_at: DateTime.iso8601('2025-08-21T07:05:43.058Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.update_lms_instructor(request: req)

unless res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateLmsInstructorRequest](../../models/operations/updatelmsinstructorrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateLmsInstructorResponse)](../../models/operations/updatelmsinstructorresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_lms_student

Updates the LmsStudent identified by `id`. Provide the unified LmsStudent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsStudent" method="put" path="/lms/{connection_id}/student/{id}" example="lms_student" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateLmsStudentRequest.new(
  lms_student: Models::Shared::LmsStudent.new(
    address: Models::Shared::PropertyLmsStudentAddress.new(
      address1: '4610 Smith Cove',
      city: 'Lake Milanchester',
      country_code: 'US',
      postal_code: '58634-4787',
      region: 'Iowa',
      region_code: 'AZ'
    ),
    created_at: DateTime.iso8601('2020-03-23T06:59:29.777Z'),
    emails: [
      Models::Shared::LmsEmail.new,
    ],
    first_name: 'Lazaro',
    id: '887c5d83-6580-4ba9-a2a2-5246fdc76460',
    image_url: 'https://avatars.githubusercontent.com/u/3245424',
    last_name: 'Zulauf-Schowalter',
    metadata: [],
    name: 'Lazaro Zulauf-Schowalter',
    telephones: [
      Models::Shared::LmsTelephone.new(
        telephone: '(476) 500-2870',
        type: Models::Shared::LmsTelephoneType::WORK
      ),
      Models::Shared::LmsTelephone.new(
        telephone: '(338) 436-9806',
        type: Models::Shared::LmsTelephoneType::FAX
      ),
      Models::Shared::LmsTelephone.new(
        telephone: '(852) 940-8205',
        type: Models::Shared::LmsTelephoneType::FAX
      ),
    ],
    updated_at: DateTime.iso8601('2022-07-13T18:14:24.354Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.lms.update_lms_student(request: req)

unless res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateLmsStudentRequest](../../models/operations/updatelmsstudentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateLmsStudentResponse)](../../models/operations/updatelmsstudentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |