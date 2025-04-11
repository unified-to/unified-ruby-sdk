# Lms
(*lms*)

## Overview

### Available Operations

* [create_lms_class](#create_lms_class) - Create a class
* [create_lms_course](#create_lms_course) - Create a course
* [create_lms_instructor](#create_lms_instructor) - Create an instructor
* [create_lms_student](#create_lms_student) - Create a student
* [get_lms_class](#get_lms_class) - Retrieve a class
* [get_lms_course](#get_lms_course) - Retrieve a course
* [get_lms_instructor](#get_lms_instructor) - Retrieve an instructor
* [get_lms_student](#get_lms_student) - Retrieve a student
* [list_lms_classes](#list_lms_classes) - List all classes
* [list_lms_courses](#list_lms_courses) - List all courses
* [list_lms_instructors](#list_lms_instructors) - List all instructors
* [list_lms_students](#list_lms_students) - List all students
* [patch_lms_class](#patch_lms_class) - Update a class
* [patch_lms_course](#patch_lms_course) - Update a course
* [patch_lms_instructor](#patch_lms_instructor) - Update an instructor
* [patch_lms_student](#patch_lms_student) - Update a student
* [remove_lms_class](#remove_lms_class) - Remove a class
* [remove_lms_course](#remove_lms_course) - Remove a course
* [remove_lms_instructor](#remove_lms_instructor) - Remove an instructor
* [remove_lms_student](#remove_lms_student) - Remove a student
* [update_lms_class](#update_lms_class) - Update a class
* [update_lms_course](#update_lms_course) - Update a course
* [update_lms_instructor](#update_lms_instructor) - Update an instructor
* [update_lms_student](#update_lms_student) - Update a student

## create_lms_class

Create a class

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.create_lms_class(lms_class=Models::Shared::LmsClass.new(
  course_id: "<id>",
  name: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.lms_class.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `lms_class`                                                 | [Models::Shared::LmsClass](../../models/shared/lmsclass.md) | :heavy_check_mark:                                          | N/A                                                         |
| `connection_id`                                             | *::String*                                                  | :heavy_check_mark:                                          | ID of the connection                                        |
| `fields_`                                                   | T::Array<*::String*>                                        | :heavy_minus_sign:                                          | Comma-delimited fields to return                            |

### Response

**[T.nilable(Models::Operations::CreateLmsClassResponse)](../../models/operations/createlmsclassresponse.md)**



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

res = s.lms.create_lms_course(lms_course=Models::Shared::LmsCourse.new(
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



## create_lms_instructor

Create an instructor

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.create_lms_instructor(lms_instructor=Models::Shared::LmsInstructor.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `lms_instructor`                                                      | [Models::Shared::LmsInstructor](../../models/shared/lmsinstructor.md) | :heavy_check_mark:                                                    | N/A                                                                   |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `fields_`                                                             | T::Array<*::String*>                                                  | :heavy_minus_sign:                                                    | Comma-delimited fields to return                                      |

### Response

**[T.nilable(Models::Operations::CreateLmsInstructorResponse)](../../models/operations/createlmsinstructorresponse.md)**



## create_lms_student

Create a student

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.create_lms_student(lms_student=Models::Shared::LmsStudent.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `lms_student`                                                   | [Models::Shared::LmsStudent](../../models/shared/lmsstudent.md) | :heavy_check_mark:                                              | N/A                                                             |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::CreateLmsStudentResponse)](../../models/operations/createlmsstudentresponse.md)**



## get_lms_class

Retrieve a class

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.get_lms_class(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_class.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Class                  |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetLmsClassResponse)](../../models/operations/getlmsclassresponse.md)**



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

res = s.lms.get_lms_course(connection_id="<id>", id="<id>", fields_=[
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



## get_lms_instructor

Retrieve an instructor

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.get_lms_instructor(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Instructor             |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetLmsInstructorResponse)](../../models/operations/getlmsinstructorresponse.md)**



## get_lms_student

Retrieve a student

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.get_lms_student(connection_id="<id>", id="<id>", fields_=[
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

**[T.nilable(Models::Operations::GetLmsStudentResponse)](../../models/operations/getlmsstudentresponse.md)**



## list_lms_classes

List all classes

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListLmsClassesRequest.new(
  connection_id: "<id>",
)

res = s.lms.list_lms_classes(req)

if ! res.lms_classes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListLmsClassesRequest](../../models/operations/listlmsclassesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListLmsClassesResponse)](../../models/operations/listlmsclassesresponse.md)**



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

res = s.lms.list_lms_courses(req)

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



## list_lms_instructors

List all instructors

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListLmsInstructorsRequest.new(
  connection_id: "<id>",
)

res = s.lms.list_lms_instructors(req)

if ! res.lms_instructors.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListLmsInstructorsRequest](../../models/operations/listlmsinstructorsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListLmsInstructorsResponse)](../../models/operations/listlmsinstructorsresponse.md)**



## list_lms_students

List all students

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListLmsStudentsRequest.new(
  connection_id: "<id>",
)

res = s.lms.list_lms_students(req)

if ! res.lms_students.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListLmsStudentsRequest](../../models/operations/listlmsstudentsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListLmsStudentsResponse)](../../models/operations/listlmsstudentsresponse.md)**



## patch_lms_class

Update a class

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.patch_lms_class(lms_class=Models::Shared::LmsClass.new(
  course_id: "<id>",
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_class.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `lms_class`                                                 | [Models::Shared::LmsClass](../../models/shared/lmsclass.md) | :heavy_check_mark:                                          | N/A                                                         |
| `connection_id`                                             | *::String*                                                  | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | ID of the Class                                             |
| `fields_`                                                   | T::Array<*::String*>                                        | :heavy_minus_sign:                                          | Comma-delimited fields to return                            |

### Response

**[T.nilable(Models::Operations::PatchLmsClassResponse)](../../models/operations/patchlmsclassresponse.md)**



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

res = s.lms.patch_lms_course(lms_course=Models::Shared::LmsCourse.new(
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



## patch_lms_instructor

Update an instructor

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.patch_lms_instructor(lms_instructor=Models::Shared::LmsInstructor.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `lms_instructor`                                                      | [Models::Shared::LmsInstructor](../../models/shared/lmsinstructor.md) | :heavy_check_mark:                                                    | N/A                                                                   |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *::String*                                                            | :heavy_check_mark:                                                    | ID of the Instructor                                                  |
| `fields_`                                                             | T::Array<*::String*>                                                  | :heavy_minus_sign:                                                    | Comma-delimited fields to return                                      |

### Response

**[T.nilable(Models::Operations::PatchLmsInstructorResponse)](../../models/operations/patchlmsinstructorresponse.md)**



## patch_lms_student

Update a student

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.patch_lms_student(lms_student=Models::Shared::LmsStudent.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `lms_student`                                                   | [Models::Shared::LmsStudent](../../models/shared/lmsstudent.md) | :heavy_check_mark:                                              | N/A                                                             |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *::String*                                                      | :heavy_check_mark:                                              | ID of the Student                                               |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::PatchLmsStudentResponse)](../../models/operations/patchlmsstudentresponse.md)**



## remove_lms_class

Remove a class

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.remove_lms_class(connection_id="<id>", id="<id>")

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

res = s.lms.remove_lms_course(connection_id="<id>", id="<id>")

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



## remove_lms_instructor

Remove an instructor

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.remove_lms_instructor(connection_id="<id>", id="<id>")

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



## remove_lms_student

Remove a student

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.remove_lms_student(connection_id="<id>", id="<id>")

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



## update_lms_class

Update a class

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.update_lms_class(lms_class=Models::Shared::LmsClass.new(
  course_id: "<id>",
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_class.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `lms_class`                                                 | [Models::Shared::LmsClass](../../models/shared/lmsclass.md) | :heavy_check_mark:                                          | N/A                                                         |
| `connection_id`                                             | *::String*                                                  | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | ID of the Class                                             |
| `fields_`                                                   | T::Array<*::String*>                                        | :heavy_minus_sign:                                          | Comma-delimited fields to return                            |

### Response

**[T.nilable(Models::Operations::UpdateLmsClassResponse)](../../models/operations/updatelmsclassresponse.md)**



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

res = s.lms.update_lms_course(lms_course=Models::Shared::LmsCourse.new(
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



## update_lms_instructor

Update an instructor

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.update_lms_instructor(lms_instructor=Models::Shared::LmsInstructor.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `lms_instructor`                                                      | [Models::Shared::LmsInstructor](../../models/shared/lmsinstructor.md) | :heavy_check_mark:                                                    | N/A                                                                   |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *::String*                                                            | :heavy_check_mark:                                                    | ID of the Instructor                                                  |
| `fields_`                                                             | T::Array<*::String*>                                                  | :heavy_minus_sign:                                                    | Comma-delimited fields to return                                      |

### Response

**[T.nilable(Models::Operations::UpdateLmsInstructorResponse)](../../models/operations/updatelmsinstructorresponse.md)**



## update_lms_student

Update a student

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.lms.update_lms_student(lms_student=Models::Shared::LmsStudent.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.lms_student.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `lms_student`                                                   | [Models::Shared::LmsStudent](../../models/shared/lmsstudent.md) | :heavy_check_mark:                                              | N/A                                                             |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *::String*                                                      | :heavy_check_mark:                                              | ID of the Student                                               |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::UpdateLmsStudentResponse)](../../models/operations/updatelmsstudentresponse.md)**

