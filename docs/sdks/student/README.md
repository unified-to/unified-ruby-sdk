# Student
(*student*)

## Overview

### Available Operations

* [create_lms_student](#create_lms_student) - Create a student
* [get_lms_student](#get_lms_student) - Retrieve a student
* [list_lms_students](#list_lms_students) - List all students
* [patch_lms_student](#patch_lms_student) - Update a student
* [remove_lms_student](#remove_lms_student) - Remove a student
* [update_lms_student](#update_lms_student) - Update a student

## create_lms_student

Create a student

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.student.create_lms_student(lms_student=::UnifiedRubySDK::Shared::LmsStudent.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `lms_student`                                                             | [::UnifiedRubySDK::Shared::LmsStudent](../../models/shared/lmsstudent.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `connection_id`                                                           | *::String*                                                                | :heavy_check_mark:                                                        | ID of the connection                                                      |
| `fields_`                                                                 | T::Array<*::String*>                                                      | :heavy_minus_sign:                                                        | Comma-delimited fields to return                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateLmsStudentResponse)](../../models/operations/createlmsstudentresponse.md)**



## get_lms_student

Retrieve a student

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.student.get_lms_student(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Student                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetLmsStudentResponse)](../../models/operations/getlmsstudentresponse.md)**



## list_lms_students

List all students

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListLmsStudentsRequest.new(
  connection_id: "<id>",
)

res = s.student.list_lms_students(req)

if ! res.lms_students.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::UnifiedRubySDK::Operations::ListLmsStudentsRequest](../../models/operations/listlmsstudentsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListLmsStudentsResponse)](../../models/operations/listlmsstudentsresponse.md)**



## patch_lms_student

Update a student

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.student.patch_lms_student(lms_student=::UnifiedRubySDK::Shared::LmsStudent.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `lms_student`                                                             | [::UnifiedRubySDK::Shared::LmsStudent](../../models/shared/lmsstudent.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `connection_id`                                                           | *::String*                                                                | :heavy_check_mark:                                                        | ID of the connection                                                      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Student                                                         |
| `fields_`                                                                 | T::Array<*::String*>                                                      | :heavy_minus_sign:                                                        | Comma-delimited fields to return                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchLmsStudentResponse)](../../models/operations/patchlmsstudentresponse.md)**



## remove_lms_student

Remove a student

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.student.remove_lms_student(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveLmsStudentResponse)](../../models/operations/removelmsstudentresponse.md)**



## update_lms_student

Update a student

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.student.update_lms_student(lms_student=::UnifiedRubySDK::Shared::LmsStudent.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `lms_student`                                                             | [::UnifiedRubySDK::Shared::LmsStudent](../../models/shared/lmsstudent.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `connection_id`                                                           | *::String*                                                                | :heavy_check_mark:                                                        | ID of the connection                                                      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Student                                                         |
| `fields_`                                                                 | T::Array<*::String*>                                                      | :heavy_minus_sign:                                                        | Comma-delimited fields to return                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateLmsStudentResponse)](../../models/operations/updatelmsstudentresponse.md)**

