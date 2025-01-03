# Comment
(*comment*)

## Overview

### Available Operations

* [create_task_comment](#create_task_comment) - Create a comment
* [get_task_comment](#get_task_comment) - Retrieve a comment
* [list_task_comments](#list_task_comments) - List all comments
* [patch_task_comment](#patch_task_comment) - Update a comment
* [remove_task_comment](#remove_task_comment) - Remove a comment
* [update_task_comment](#update_task_comment) - Update a comment

## create_task_comment

Create a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.comment.create_task_comment(connection_id="<id>", task_comment=::UnifiedRubySDK::Shared::TaskComment.new(
  task_id: "<id>",
  text: "<value>",
), fields_=[
  "<value>",
])

if ! res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                              | Type                                                                                   | Required                                                                               | Description                                                                            |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `connection_id`                                                                        | *::String*                                                                             | :heavy_check_mark:                                                                     | ID of the connection                                                                   |
| `task_comment`                                                                         | [T.nilable(::UnifiedRubySDK::Shared::TaskComment)](../../models/shared/taskcomment.md) | :heavy_minus_sign:                                                                     | N/A                                                                                    |
| `fields_`                                                                              | T::Array<*::String*>                                                                   | :heavy_minus_sign:                                                                     | Comma-delimited fields to return                                                       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateTaskCommentResponse)](../../models/operations/createtaskcommentresponse.md)**



## get_task_comment

Retrieve a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.comment.get_task_comment(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Comment                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetTaskCommentResponse)](../../models/operations/gettaskcommentresponse.md)**



## list_task_comments

List all comments

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListTaskCommentsRequest.new(
  connection_id: "<id>",
)
    
res = s.comment.list_task_comments(req)

if ! res.task_comments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListTaskCommentsRequest](../../models/operations/listtaskcommentsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListTaskCommentsResponse)](../../models/operations/listtaskcommentsresponse.md)**



## patch_task_comment

Update a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.comment.patch_task_comment(connection_id="<id>", id="<id>", task_comment=::UnifiedRubySDK::Shared::TaskComment.new(
  task_id: "<id>",
  text: "<value>",
), fields_=[
  "<value>",
])

if ! res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                              | Type                                                                                   | Required                                                                               | Description                                                                            |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `connection_id`                                                                        | *::String*                                                                             | :heavy_check_mark:                                                                     | ID of the connection                                                                   |
| `id`                                                                                   | *::String*                                                                             | :heavy_check_mark:                                                                     | ID of the Comment                                                                      |
| `task_comment`                                                                         | [T.nilable(::UnifiedRubySDK::Shared::TaskComment)](../../models/shared/taskcomment.md) | :heavy_minus_sign:                                                                     | N/A                                                                                    |
| `fields_`                                                                              | T::Array<*::String*>                                                                   | :heavy_minus_sign:                                                                     | Comma-delimited fields to return                                                       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchTaskCommentResponse)](../../models/operations/patchtaskcommentresponse.md)**



## remove_task_comment

Remove a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.comment.remove_task_comment(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Comment    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveTaskCommentResponse)](../../models/operations/removetaskcommentresponse.md)**



## update_task_comment

Update a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.comment.update_task_comment(connection_id="<id>", id="<id>", task_comment=::UnifiedRubySDK::Shared::TaskComment.new(
  task_id: "<id>",
  text: "<value>",
), fields_=[
  "<value>",
])

if ! res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                              | Type                                                                                   | Required                                                                               | Description                                                                            |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `connection_id`                                                                        | *::String*                                                                             | :heavy_check_mark:                                                                     | ID of the connection                                                                   |
| `id`                                                                                   | *::String*                                                                             | :heavy_check_mark:                                                                     | ID of the Comment                                                                      |
| `task_comment`                                                                         | [T.nilable(::UnifiedRubySDK::Shared::TaskComment)](../../models/shared/taskcomment.md) | :heavy_minus_sign:                                                                     | N/A                                                                                    |
| `fields_`                                                                              | T::Array<*::String*>                                                                   | :heavy_minus_sign:                                                                     | Comma-delimited fields to return                                                       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateTaskCommentResponse)](../../models/operations/updatetaskcommentresponse.md)**

