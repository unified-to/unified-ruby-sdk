# Instructor
(*instructor*)

## Overview

### Available Operations

* [create_lms_instructor](#create_lms_instructor) - Create an instructor
* [get_lms_instructor](#get_lms_instructor) - Retrieve an instructor
* [list_lms_instructors](#list_lms_instructors) - List all instructors
* [patch_lms_instructor](#patch_lms_instructor) - Update an instructor
* [remove_lms_instructor](#remove_lms_instructor) - Remove an instructor
* [update_lms_instructor](#update_lms_instructor) - Update an instructor

## create_lms_instructor

Creates a LmsInstructor. Provide the unified LmsInstructor fields in the request body; they are mapped to the provider's API. Returns the created LmsInstructor.

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

res = s.instructor.create_lms_instructor(lms_instructor: Models::Shared::LmsInstructor.new(
  created_at: DateTime.iso8601('2021-10-12T16:38:54.979Z'),
  emails: [
    Models::Shared::LmsEmail.new(),
  ],
  first_name: 'Deangelo',
  id: '381a2539-f544-4ce4-a0f4-6f046fa573ee',
  image_url: 'https://avatars.githubusercontent.com/u/95131132',
  last_name: 'Ritchie',
  metadata: [],
  name: 'Deangelo Ritchie',
  telephones: [
    Models::Shared::LmsTelephone.new(
      telephone: '(605) 752-8163',
      type: Models::Shared::LmsTelephoneType::WORK,
    ),
    Models::Shared::LmsTelephone.new(
      telephone: '(430) 415-2451',
      type: Models::Shared::LmsTelephoneType::HOME,
    ),
  ],
  title: 'Regional Security Agent',
  updated_at: DateTime.iso8601('2025-07-28T01:26:43.646Z'),
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

## get_lms_instructor

Retrieves a single LmsInstructor by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

res = s.instructor.get_lms_instructor(connection_id: '<id>', id: '<id>')

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

## list_lms_instructors

Returns a list of LmsInstructors. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

res = s.instructor.list_lms_instructors(request: req)

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

## patch_lms_instructor

Updates the LmsInstructor identified by `id`. Provide the unified LmsInstructor fields to change in the request body.

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
    ],
    first_name: 'Deangelo',
    id: 'd530d47a-0927-433e-aa7a-bfca2749466e',
    image_url: 'https://avatars.githubusercontent.com/u/95131132',
    last_name: 'Ritchie',
    metadata: [],
    name: 'Deangelo Ritchie',
    telephones: [
      Models::Shared::LmsTelephone.new(
        telephone: '(605) 752-8163',
        type: Models::Shared::LmsTelephoneType::WORK,
      ),
      Models::Shared::LmsTelephone.new(
        telephone: '(430) 415-2451',
        type: Models::Shared::LmsTelephoneType::HOME,
      ),
    ],
    title: 'Regional Security Agent',
    updated_at: DateTime.iso8601('2025-07-28T01:26:43.661Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.instructor.patch_lms_instructor(request: req)

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

## remove_lms_instructor

Deletes the LmsInstructor identified by `id`.

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

res = s.instructor.remove_lms_instructor(connection_id: '<id>', id: '<id>')

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

## update_lms_instructor

Updates the LmsInstructor identified by `id`. Provide the unified LmsInstructor fields to change in the request body.

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
    ],
    first_name: 'Deangelo',
    id: 'd530d47a-0927-433e-aa7a-bfca2749466e',
    image_url: 'https://avatars.githubusercontent.com/u/95131132',
    last_name: 'Ritchie',
    metadata: [],
    name: 'Deangelo Ritchie',
    telephones: [
      Models::Shared::LmsTelephone.new(
        telephone: '(605) 752-8163',
        type: Models::Shared::LmsTelephoneType::WORK,
      ),
      Models::Shared::LmsTelephone.new(
        telephone: '(430) 415-2451',
        type: Models::Shared::LmsTelephoneType::HOME,
      ),
    ],
    title: 'Regional Security Agent',
    updated_at: DateTime.iso8601('2025-07-28T01:26:43.661Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.instructor.update_lms_instructor(request: req)

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