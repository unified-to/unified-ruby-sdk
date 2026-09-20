# Lms
(*lms*)

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

Create an activity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsActivity" method="post" path="/lms/{connection_id}/activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.lms.create_lms_activity(lms_activity: Models::Shared::LmsActivity.new(
  assigned_grade: 'summopere',
  completed_at: DateTime.iso8601('2025-04-13T19:51:15.554Z'),
  created_at: DateTime.iso8601('2020-10-17T01:25:21.745Z'),
  duration_minutes: 55.0,
  id: 'a595b74e-ccb6-41b8-8740-e43a053d3637',
  is_completed: true,
  progress_percentage: 100.0,
  started_at: DateTime.iso8601('2023-12-24T04:54:05.825Z'),
  updated_at: DateTime.iso8601('2022-01-24T07:58:55.214Z'),
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

Create a class

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsClass" method="post" path="/lms/{connection_id}/class" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.lms.create_lms_class(lms_class: Models::Shared::LmsClass.new(
  created_at: DateTime.iso8601('2020-02-20T14:48:51.845Z'),
  description: 'Anser sperno decerno.',
  id: '4611ee5d-34cf-400e-a0a9-f37cb3962468',
  instructors: [],
  languages: [
    'in',
  ],
  media: [
    Models::Shared::LmsMedia.new(
      content: 'Defetiscor aetas acies benevolentia ulterius. Creta bis beneficium canis. Bonus valeo vulgo creator arca peior ceno earum culpa. Tabesco apostolus talis. Ultra accommodo deinde sono culpo arto cruciamentum triduana.',
      description: 'Esse confido.',
      languages: [
        'fa',
        'da',
      ],
      name: 'illo',
      thumbnail_url: 'https://loremflickr.com/199/1934?lock=4323325966476891',
      type: Models::Shared::LmsMediaType::VIDEO,
      url: 'https://loremflickr.com/487/921?lock=5127962071241632',
    ),
  ],
  name: 'virtus',
  students: [],
  updated_at: DateTime.iso8601('2025-07-09T12:37:34.303Z'),
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

Create a collection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsCollection" method="post" path="/lms/{connection_id}/collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.lms.create_lms_collection(lms_collection: Models::Shared::LmsCollection.new(
  created_at: DateTime.iso8601('2019-08-19T14:40:29.227Z'),
  description: 'Ab.',
  id: '20f824d9-8e1c-45d3-b92e-05d3003d16e5',
  is_active: true,
  media: [
    Models::Shared::LmsMedia.new(
      content: 'Accusamus earum sulum libero adficio testimonium vitae. Calcar contra vergo curis sollers. Caste brevis denuo. Tam amita ducimus capillus. Vulgaris temporibus arbustum solium id. Suppono commodo fuga surculus tripudio doloribus.',
      description: 'Aliquam tardus careo hic umbra.',
      languages: [
        'gl',
      ],
      name: 'thymum',
      thumbnail_url: 'https://picsum.photos/seed/15O5EfV/2982/752',
      type: Models::Shared::LmsMediaType::HEADSHOT,
      url: 'https://loremflickr.com/2679/70?lock=6078357625960554',
    ),
  ],
  name: 'ara',
  updated_at: DateTime.iso8601('2026-06-30T06:12:33.490Z'),
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

res = s.lms.create_lms_content(lms_content: Models::Shared::LmsContent.new(
  categories: [
    'territo',
  ],
  created_at: DateTime.iso8601('2020-10-22T22:30:50.963Z'),
  description: 'Usque laboriosam ventosus adflicto.',
  difficulty: 'Beginner',
  duration_minutes: 19.0,
  external_reference: '0d230e31-a9c4-4a35-a5b9-9168e91ffff5',
  id: 'f4a87f16-3667-465a-9d49-cf87d6c48104',
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
  updated_at: DateTime.iso8601('2022-09-24T02:43:27.700Z'),
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

res = s.lms.create_lms_course(lms_course: Models::Shared::LmsCourse.new(
  categories: [
    'tergiversatio',
    'tumultus',
  ],
  created_at: DateTime.iso8601('2022-10-06T09:58:53.559Z'),
  currency: 'FJD',
  description: 'Vinco alias aut capitulus.',
  duration_minutes: 148.0,
  id: 'cfe76cb3-3ec4-4b43-bc49-2fa5de3cfbff',
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
  updated_at: DateTime.iso8601('2023-02-07T02:35:51.533Z'),
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

Create an instructor

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsInstructor" method="post" path="/lms/{connection_id}/instructor" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.lms.create_lms_instructor(lms_instructor: Models::Shared::LmsInstructor.new(
  created_at: DateTime.iso8601('2021-10-12T16:38:54.979Z'),
  emails: [
    Models::Shared::LmsEmail.new(),
    Models::Shared::LmsEmail.new(),
  ],
  first_name: 'Deangelo',
  id: '92489c81-7aa0-434c-9863-e29e21d40e66',
  image_url: 'https://avatars.githubusercontent.com/u/20232618',
  last_name: 'Ritchie',
  name: 'Deangelo Ritchie',
  telephones: [
    Models::Shared::LmsTelephone.new(
      telephone: '(352) 551-7989',
      type: Models::Shared::LmsTelephoneType::HOME,
    ),
  ],
  title: 'Product Solutions Engineer',
  updated_at: DateTime.iso8601('2025-07-01T02:00:53.955Z'),
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

Create a student

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLmsStudent" method="post" path="/lms/{connection_id}/student" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.lms.create_lms_student(lms_student: Models::Shared::LmsStudent.new(
  address: Models::Shared::PropertyLmsStudentAddress.new(
    address1: '94082 Kassandra Camp',
    address2: 'Apt. 461',
    city: 'New Ibrahimmouth',
    country_code: 'US',
    postal_code: '52851',
    region: 'Tennessee',
    region_code: 'NV',
  ),
  created_at: DateTime.iso8601('2020-03-23T06:59:29.777Z'),
  emails: [
    Models::Shared::LmsEmail.new(),
    Models::Shared::LmsEmail.new(),
  ],
  first_name: 'Marcella',
  id: '2019db1c-1cef-499e-85e2-fe594bb960d6',
  image_url: 'https://avatars.githubusercontent.com/u/36301374',
  last_name: 'Murazik',
  name: 'Marcella Murazik',
  telephones: [
    Models::Shared::LmsTelephone.new(
      telephone: '(482) 469-8067',
      type: Models::Shared::LmsTelephoneType::FAX,
    ),
  ],
  updated_at: DateTime.iso8601('2022-06-20T06:24:14.227Z'),
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

Retrieve an activity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsActivity" method="get" path="/lms/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a class

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsClass" method="get" path="/lms/{connection_id}/class/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a collection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsCollection" method="get" path="/lms/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve an instructor

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsInstructor" method="get" path="/lms/{connection_id}/instructor/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a student

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLmsStudent" method="get" path="/lms/{connection_id}/student/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

List all activities

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsActivities" method="get" path="/lms/{connection_id}/activity" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLmsActivitiesRequest.new(
  connection_id: '<id>',
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

List all classes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsClasses" method="get" path="/lms/{connection_id}/class" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLmsClassesRequest.new(
  connection_id: '<id>',
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

List all collections

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsCollections" method="get" path="/lms/{connection_id}/collection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLmsCollectionsRequest.new(
  connection_id: '<id>',
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

List all instructors

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsInstructors" method="get" path="/lms/{connection_id}/instructor" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLmsInstructorsRequest.new(
  connection_id: '<id>',
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

List all students

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLmsStudents" method="get" path="/lms/{connection_id}/student" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLmsStudentsRequest.new(
  connection_id: '<id>',
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

Update an activity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsActivity" method="patch" path="/lms/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLmsActivityRequest.new(
  lms_activity: Models::Shared::LmsActivity.new(
    assigned_grade: 'summopere',
    completed_at: DateTime.iso8601('2025-04-13T19:51:15.559Z'),
    created_at: DateTime.iso8601('2020-10-17T01:25:21.745Z'),
    duration_minutes: 55.0,
    id: '5964618d-ad2d-4642-b124-32da4f3f4a3b',
    is_completed: true,
    progress_percentage: 100.0,
    started_at: DateTime.iso8601('2023-12-24T04:54:05.825Z'),
    updated_at: DateTime.iso8601('2022-01-24T07:58:55.216Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a class

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsClass" method="patch" path="/lms/{connection_id}/class/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLmsClassRequest.new(
  lms_class: Models::Shared::LmsClass.new(
    created_at: DateTime.iso8601('2020-02-20T14:48:51.845Z'),
    description: 'Anser sperno decerno.',
    id: '908df358-36cb-4f3b-97ba-81a263f9c8b6',
    instructors: [],
    languages: [
      'in',
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Defetiscor aetas acies benevolentia ulterius. Creta bis beneficium canis. Bonus valeo vulgo creator arca peior ceno earum culpa. Tabesco apostolus talis. Ultra accommodo deinde sono culpo arto cruciamentum triduana.',
        description: 'Esse confido.',
        languages: [
          'fa',
          'da',
        ],
        name: 'illo',
        thumbnail_url: 'https://loremflickr.com/199/1934?lock=4323325966476891',
        type: Models::Shared::LmsMediaType::VIDEO,
        url: 'https://loremflickr.com/487/921?lock=5127962071241632',
      ),
    ],
    name: 'virtus',
    students: [],
    updated_at: DateTime.iso8601('2025-07-09T12:37:34.316Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a collection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsCollection" method="patch" path="/lms/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLmsCollectionRequest.new(
  lms_collection: Models::Shared::LmsCollection.new(
    created_at: DateTime.iso8601('2019-08-19T14:40:29.227Z'),
    description: 'Ab.',
    id: 'fdad66a6-6522-4d4f-a514-6dbc4df37c63',
    is_active: true,
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Accusamus earum sulum libero adficio testimonium vitae. Calcar contra vergo curis sollers. Caste brevis denuo. Tam amita ducimus capillus. Vulgaris temporibus arbustum solium id. Suppono commodo fuga surculus tripudio doloribus.',
        description: 'Aliquam tardus careo hic umbra.',
        languages: [
          'gl',
        ],
        name: 'thymum',
        thumbnail_url: 'https://picsum.photos/seed/15O5EfV/2982/752',
        type: Models::Shared::LmsMediaType::HEADSHOT,
        url: 'https://loremflickr.com/2679/70?lock=6078357625960554',
      ),
    ],
    name: 'ara',
    updated_at: DateTime.iso8601('2026-06-30T06:12:33.506Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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
    id: 'e4154806-48b9-4b67-a03b-a0243336350c',
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
    updated_at: DateTime.iso8601('2022-09-24T02:43:27.710Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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
    id: '73703b4a-1b4f-44a1-9a96-038daa08b531',
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
    updated_at: DateTime.iso8601('2023-02-07T02:35:51.535Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update an instructor

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsInstructor" method="patch" path="/lms/{connection_id}/instructor/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLmsInstructorRequest.new(
  lms_instructor: Models::Shared::LmsInstructor.new(
    created_at: DateTime.iso8601('2021-10-12T16:38:54.979Z'),
    emails: [
      Models::Shared::LmsEmail.new(),
      Models::Shared::LmsEmail.new(),
    ],
    first_name: 'Deangelo',
    id: 'f1726438-de4c-4828-a412-7744fda0ce41',
    image_url: 'https://avatars.githubusercontent.com/u/20232618',
    last_name: 'Ritchie',
    name: 'Deangelo Ritchie',
    telephones: [
      Models::Shared::LmsTelephone.new(
        telephone: '(352) 551-7989',
        type: Models::Shared::LmsTelephoneType::HOME,
      ),
    ],
    title: 'Product Solutions Engineer',
    updated_at: DateTime.iso8601('2025-07-01T02:00:53.965Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a student

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLmsStudent" method="patch" path="/lms/{connection_id}/student/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLmsStudentRequest.new(
  lms_student: Models::Shared::LmsStudent.new(
    address: Models::Shared::PropertyLmsStudentAddress.new(
      address1: '94082 Kassandra Camp',
      address2: 'Apt. 461',
      city: 'New Ibrahimmouth',
      country_code: 'US',
      postal_code: '52851',
      region: 'Tennessee',
      region_code: 'NV',
    ),
    created_at: DateTime.iso8601('2020-03-23T06:59:29.777Z'),
    emails: [
      Models::Shared::LmsEmail.new(),
      Models::Shared::LmsEmail.new(),
    ],
    first_name: 'Marcella',
    id: '02cadcf0-d7ec-4afd-a492-b12491c981c6',
    image_url: 'https://avatars.githubusercontent.com/u/36301374',
    last_name: 'Murazik',
    name: 'Marcella Murazik',
    telephones: [
      Models::Shared::LmsTelephone.new(
        telephone: '(482) 469-8067',
        type: Models::Shared::LmsTelephoneType::FAX,
      ),
    ],
    updated_at: DateTime.iso8601('2022-06-20T06:24:14.234Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Remove an activity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsActivity" method="delete" path="/lms/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a class

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsClass" method="delete" path="/lms/{connection_id}/class/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a collection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsCollection" method="delete" path="/lms/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove an instructor

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsInstructor" method="delete" path="/lms/{connection_id}/instructor/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a student

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLmsStudent" method="delete" path="/lms/{connection_id}/student/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Update an activity

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsActivity" method="put" path="/lms/{connection_id}/activity/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLmsActivityRequest.new(
  lms_activity: Models::Shared::LmsActivity.new(
    assigned_grade: 'summopere',
    completed_at: DateTime.iso8601('2025-04-13T19:51:15.559Z'),
    created_at: DateTime.iso8601('2020-10-17T01:25:21.745Z'),
    duration_minutes: 55.0,
    id: '5964618d-ad2d-4642-b124-32da4f3f4a3b',
    is_completed: true,
    progress_percentage: 100.0,
    started_at: DateTime.iso8601('2023-12-24T04:54:05.825Z'),
    updated_at: DateTime.iso8601('2022-01-24T07:58:55.216Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a class

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsClass" method="put" path="/lms/{connection_id}/class/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLmsClassRequest.new(
  lms_class: Models::Shared::LmsClass.new(
    created_at: DateTime.iso8601('2020-02-20T14:48:51.845Z'),
    description: 'Anser sperno decerno.',
    id: '908df358-36cb-4f3b-97ba-81a263f9c8b6',
    instructors: [],
    languages: [
      'in',
    ],
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Defetiscor aetas acies benevolentia ulterius. Creta bis beneficium canis. Bonus valeo vulgo creator arca peior ceno earum culpa. Tabesco apostolus talis. Ultra accommodo deinde sono culpo arto cruciamentum triduana.',
        description: 'Esse confido.',
        languages: [
          'fa',
          'da',
        ],
        name: 'illo',
        thumbnail_url: 'https://loremflickr.com/199/1934?lock=4323325966476891',
        type: Models::Shared::LmsMediaType::VIDEO,
        url: 'https://loremflickr.com/487/921?lock=5127962071241632',
      ),
    ],
    name: 'virtus',
    students: [],
    updated_at: DateTime.iso8601('2025-07-09T12:37:34.316Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a collection

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsCollection" method="put" path="/lms/{connection_id}/collection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLmsCollectionRequest.new(
  lms_collection: Models::Shared::LmsCollection.new(
    created_at: DateTime.iso8601('2019-08-19T14:40:29.227Z'),
    description: 'Ab.',
    id: 'fdad66a6-6522-4d4f-a514-6dbc4df37c63',
    is_active: true,
    media: [
      Models::Shared::LmsMedia.new(
        content: 'Accusamus earum sulum libero adficio testimonium vitae. Calcar contra vergo curis sollers. Caste brevis denuo. Tam amita ducimus capillus. Vulgaris temporibus arbustum solium id. Suppono commodo fuga surculus tripudio doloribus.',
        description: 'Aliquam tardus careo hic umbra.',
        languages: [
          'gl',
        ],
        name: 'thymum',
        thumbnail_url: 'https://picsum.photos/seed/15O5EfV/2982/752',
        type: Models::Shared::LmsMediaType::HEADSHOT,
        url: 'https://loremflickr.com/2679/70?lock=6078357625960554',
      ),
    ],
    name: 'ara',
    updated_at: DateTime.iso8601('2026-06-30T06:12:33.506Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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
    id: 'e4154806-48b9-4b67-a03b-a0243336350c',
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
    updated_at: DateTime.iso8601('2022-09-24T02:43:27.710Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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
    id: '73703b4a-1b4f-44a1-9a96-038daa08b531',
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
    updated_at: DateTime.iso8601('2023-02-07T02:35:51.535Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update an instructor

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsInstructor" method="put" path="/lms/{connection_id}/instructor/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLmsInstructorRequest.new(
  lms_instructor: Models::Shared::LmsInstructor.new(
    created_at: DateTime.iso8601('2021-10-12T16:38:54.979Z'),
    emails: [
      Models::Shared::LmsEmail.new(),
      Models::Shared::LmsEmail.new(),
    ],
    first_name: 'Deangelo',
    id: 'f1726438-de4c-4828-a412-7744fda0ce41',
    image_url: 'https://avatars.githubusercontent.com/u/20232618',
    last_name: 'Ritchie',
    name: 'Deangelo Ritchie',
    telephones: [
      Models::Shared::LmsTelephone.new(
        telephone: '(352) 551-7989',
        type: Models::Shared::LmsTelephoneType::HOME,
      ),
    ],
    title: 'Product Solutions Engineer',
    updated_at: DateTime.iso8601('2025-07-01T02:00:53.965Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a student

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLmsStudent" method="put" path="/lms/{connection_id}/student/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLmsStudentRequest.new(
  lms_student: Models::Shared::LmsStudent.new(
    address: Models::Shared::PropertyLmsStudentAddress.new(
      address1: '94082 Kassandra Camp',
      address2: 'Apt. 461',
      city: 'New Ibrahimmouth',
      country_code: 'US',
      postal_code: '52851',
      region: 'Tennessee',
      region_code: 'NV',
    ),
    created_at: DateTime.iso8601('2020-03-23T06:59:29.777Z'),
    emails: [
      Models::Shared::LmsEmail.new(),
      Models::Shared::LmsEmail.new(),
    ],
    first_name: 'Marcella',
    id: '02cadcf0-d7ec-4afd-a492-b12491c981c6',
    image_url: 'https://avatars.githubusercontent.com/u/36301374',
    last_name: 'Murazik',
    name: 'Marcella Murazik',
    telephones: [
      Models::Shared::LmsTelephone.new(
        telephone: '(482) 469-8067',
        type: Models::Shared::LmsTelephoneType::FAX,
      ),
    ],
    updated_at: DateTime.iso8601('2022-06-20T06:24:14.234Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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