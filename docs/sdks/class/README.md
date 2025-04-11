# Class
(*class_*)

## Overview

### Available Operations

* [create_lms_class](#create_lms_class) - Create a class
* [get_lms_class](#get_lms_class) - Retrieve a class
* [list_lms_classes](#list_lms_classes) - List all classes
* [patch_lms_class](#patch_lms_class) - Update a class
* [remove_lms_class](#remove_lms_class) - Remove a class
* [update_lms_class](#update_lms_class) - Update a class

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

res = s.class_.create_lms_class(lms_class=Models::Shared::LmsClass.new(
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

res = s.class_.get_lms_class(connection_id="<id>", id="<id>", fields_=[
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

res = s.class_.list_lms_classes(req)

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

res = s.class_.patch_lms_class(lms_class=Models::Shared::LmsClass.new(
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

res = s.class_.remove_lms_class(connection_id="<id>", id="<id>")

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

res = s.class_.update_lms_class(lms_class=Models::Shared::LmsClass.new(
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

