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

Create an instructor

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.instructor.create_lms_instructor(connection_id="<id>", lms_instructor=::UnifiedRubySDK::Shared::LmsInstructor.new(), fields_=[
  "<value>",
])

if ! res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                  | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `connection_id`                                                                            | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the connection                                                                       |
| `lms_instructor`                                                                           | [T.nilable(::UnifiedRubySDK::Shared::LmsInstructor)](../../models/shared/lmsinstructor.md) | :heavy_minus_sign:                                                                         | N/A                                                                                        |
| `fields_`                                                                                  | T::Array<*::String*>                                                                       | :heavy_minus_sign:                                                                         | Comma-delimited fields to return                                                           |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateLmsInstructorResponse)](../../models/operations/createlmsinstructorresponse.md)**



## get_lms_instructor

Retrieve an instructor

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.instructor.get_lms_instructor(connection_id="<id>", id="<id>", fields_=[
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

**[T.nilable(::UnifiedRubySDK::Operations::GetLmsInstructorResponse)](../../models/operations/getlmsinstructorresponse.md)**



## list_lms_instructors

List all instructors

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListLmsInstructorsRequest.new(
  connection_id: "<id>",
)
    
res = s.instructor.list_lms_instructors(req)

if ! res.lms_instructors.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListLmsInstructorsRequest](../../models/operations/listlmsinstructorsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListLmsInstructorsResponse)](../../models/operations/listlmsinstructorsresponse.md)**



## patch_lms_instructor

Update an instructor

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.instructor.patch_lms_instructor(connection_id="<id>", id="<id>", lms_instructor=::UnifiedRubySDK::Shared::LmsInstructor.new(), fields_=[
  "<value>",
])

if ! res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                  | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `connection_id`                                                                            | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the connection                                                                       |
| `id`                                                                                       | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the Instructor                                                                       |
| `lms_instructor`                                                                           | [T.nilable(::UnifiedRubySDK::Shared::LmsInstructor)](../../models/shared/lmsinstructor.md) | :heavy_minus_sign:                                                                         | N/A                                                                                        |
| `fields_`                                                                                  | T::Array<*::String*>                                                                       | :heavy_minus_sign:                                                                         | Comma-delimited fields to return                                                           |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchLmsInstructorResponse)](../../models/operations/patchlmsinstructorresponse.md)**



## remove_lms_instructor

Remove an instructor

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.instructor.remove_lms_instructor(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveLmsInstructorResponse)](../../models/operations/removelmsinstructorresponse.md)**



## update_lms_instructor

Update an instructor

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.instructor.update_lms_instructor(connection_id="<id>", id="<id>", lms_instructor=::UnifiedRubySDK::Shared::LmsInstructor.new(), fields_=[
  "<value>",
])

if ! res.lms_instructor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                  | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `connection_id`                                                                            | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the connection                                                                       |
| `id`                                                                                       | *::String*                                                                                 | :heavy_check_mark:                                                                         | ID of the Instructor                                                                       |
| `lms_instructor`                                                                           | [T.nilable(::UnifiedRubySDK::Shared::LmsInstructor)](../../models/shared/lmsinstructor.md) | :heavy_minus_sign:                                                                         | N/A                                                                                        |
| `fields_`                                                                                  | T::Array<*::String*>                                                                       | :heavy_minus_sign:                                                                         | Comma-delimited fields to return                                                           |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateLmsInstructorResponse)](../../models/operations/updatelmsinstructorresponse.md)**
