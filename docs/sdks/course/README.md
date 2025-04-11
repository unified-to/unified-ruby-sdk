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

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.course.create_lms_course(lms_course=Models::Shared::LmsCourse.new(
  name: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.lms_course.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `lms_course`                                                  | [Models::Shared::LmsCourse](../../models/shared/lmscourse.md) | :heavy_check_mark:                                            | N/A                                                           |
| `connection_id`                                               | *::String*                                                    | :heavy_check_mark:                                            | ID of the connection                                          |
| `fields_`                                                     | T::Array<*::String*>                                          | :heavy_minus_sign:                                            | Comma-delimited fields to return                              |

### Response

**[T.nilable(Models::Operations::CreateLmsCourseResponse)](../../models/operations/createlmscourseresponse.md)**



## get_lms_course

Retrieve a course

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.course.get_lms_course(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_course.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Course                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetLmsCourseResponse)](../../models/operations/getlmscourseresponse.md)**



## list_lms_courses

List all courses

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListLmsCoursesRequest.new(
  connection_id: "<id>",
)

res = s.course.list_lms_courses(req)

if ! res.lms_courses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListLmsCoursesRequest](../../models/operations/listlmscoursesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListLmsCoursesResponse)](../../models/operations/listlmscoursesresponse.md)**



## patch_lms_course

Update a course

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.course.patch_lms_course(lms_course=Models::Shared::LmsCourse.new(
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_course.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `lms_course`                                                  | [Models::Shared::LmsCourse](../../models/shared/lmscourse.md) | :heavy_check_mark:                                            | N/A                                                           |
| `connection_id`                                               | *::String*                                                    | :heavy_check_mark:                                            | ID of the connection                                          |
| `id`                                                          | *::String*                                                    | :heavy_check_mark:                                            | ID of the Course                                              |
| `fields_`                                                     | T::Array<*::String*>                                          | :heavy_minus_sign:                                            | Comma-delimited fields to return                              |

### Response

**[T.nilable(Models::Operations::PatchLmsCourseResponse)](../../models/operations/patchlmscourseresponse.md)**



## remove_lms_course

Remove a course

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.course.remove_lms_course(connection_id="<id>", id="<id>")

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



## update_lms_course

Update a course

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.course.update_lms_course(lms_course=Models::Shared::LmsCourse.new(
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_course.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `lms_course`                                                  | [Models::Shared::LmsCourse](../../models/shared/lmscourse.md) | :heavy_check_mark:                                            | N/A                                                           |
| `connection_id`                                               | *::String*                                                    | :heavy_check_mark:                                            | ID of the connection                                          |
| `id`                                                          | *::String*                                                    | :heavy_check_mark:                                            | ID of the Course                                              |
| `fields_`                                                     | T::Array<*::String*>                                          | :heavy_minus_sign:                                            | Comma-delimited fields to return                              |

### Response

**[T.nilable(Models::Operations::UpdateLmsCourseResponse)](../../models/operations/updatelmscourseresponse.md)**

