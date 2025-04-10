# Comment
(*comment*)

## Overview

### Available Operations

* [create_kms_comment](#create_kms_comment) - Create a comment
* [create_task_comment](#create_task_comment) - Create a comment
* [get_kms_comment](#get_kms_comment) - Retrieve a comment
* [get_task_comment](#get_task_comment) - Retrieve a comment
* [list_kms_comments](#list_kms_comments) - List all comments
* [list_task_comments](#list_task_comments) - List all comments
* [patch_kms_comment](#patch_kms_comment) - Update a comment
* [patch_task_comment](#patch_task_comment) - Update a comment
* [remove_kms_comment](#remove_kms_comment) - Remove a comment
* [remove_task_comment](#remove_task_comment) - Remove a comment
* [update_kms_comment](#update_kms_comment) - Update a comment
* [update_task_comment](#update_task_comment) - Update a comment

## create_kms_comment

Create a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.comment.create_kms_comment(kms_comment=Models::Shared::KmsComment.new(
  content: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.kms_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `kms_comment`                                                   | [Models::Shared::KmsComment](../../models/shared/kmscomment.md) | :heavy_check_mark:                                              | N/A                                                             |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::CreateKmsCommentResponse)](../../models/operations/createkmscommentresponse.md)**



## create_task_comment

Create a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.comment.create_task_comment(task_comment=Models::Shared::TaskComment.new(
  task_id: "<id>",
  text: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `task_comment`                                                    | [Models::Shared::TaskComment](../../models/shared/taskcomment.md) | :heavy_check_mark:                                                | N/A                                                               |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `fields_`                                                         | T::Array<*::String*>                                              | :heavy_minus_sign:                                                | Comma-delimited fields to return                                  |

### Response

**[T.nilable(Models::Operations::CreateTaskCommentResponse)](../../models/operations/createtaskcommentresponse.md)**



## get_kms_comment

Retrieve a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.comment.get_kms_comment(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.kms_comment.nil?
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

**[T.nilable(Models::Operations::GetKmsCommentResponse)](../../models/operations/getkmscommentresponse.md)**



## get_task_comment

Retrieve a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
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

**[T.nilable(Models::Operations::GetTaskCommentResponse)](../../models/operations/gettaskcommentresponse.md)**



## list_kms_comments

List all comments

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListKmsCommentsRequest.new(
  connection_id: "<id>",
)

res = s.comment.list_kms_comments(req)

if ! res.kms_comments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListKmsCommentsRequest](../../models/operations/listkmscommentsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListKmsCommentsResponse)](../../models/operations/listkmscommentsresponse.md)**



## list_task_comments

List all comments

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListTaskCommentsRequest.new(
  connection_id: "<id>",
)

res = s.comment.list_task_comments(req)

if ! res.task_comments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListTaskCommentsRequest](../../models/operations/listtaskcommentsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListTaskCommentsResponse)](../../models/operations/listtaskcommentsresponse.md)**



## patch_kms_comment

Update a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.comment.patch_kms_comment(kms_comment=Models::Shared::KmsComment.new(
  content: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.kms_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `kms_comment`                                                   | [Models::Shared::KmsComment](../../models/shared/kmscomment.md) | :heavy_check_mark:                                              | N/A                                                             |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *::String*                                                      | :heavy_check_mark:                                              | ID of the Comment                                               |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::PatchKmsCommentResponse)](../../models/operations/patchkmscommentresponse.md)**



## patch_task_comment

Update a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.comment.patch_task_comment(task_comment=Models::Shared::TaskComment.new(
  task_id: "<id>",
  text: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `task_comment`                                                    | [Models::Shared::TaskComment](../../models/shared/taskcomment.md) | :heavy_check_mark:                                                | N/A                                                               |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | ID of the Comment                                                 |
| `fields_`                                                         | T::Array<*::String*>                                              | :heavy_minus_sign:                                                | Comma-delimited fields to return                                  |

### Response

**[T.nilable(Models::Operations::PatchTaskCommentResponse)](../../models/operations/patchtaskcommentresponse.md)**



## remove_kms_comment

Remove a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.comment.remove_kms_comment(connection_id="<id>", id="<id>")

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

**[T.nilable(Models::Operations::RemoveKmsCommentResponse)](../../models/operations/removekmscommentresponse.md)**



## remove_task_comment

Remove a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
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

**[T.nilable(Models::Operations::RemoveTaskCommentResponse)](../../models/operations/removetaskcommentresponse.md)**



## update_kms_comment

Update a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.comment.update_kms_comment(kms_comment=Models::Shared::KmsComment.new(
  content: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.kms_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `kms_comment`                                                   | [Models::Shared::KmsComment](../../models/shared/kmscomment.md) | :heavy_check_mark:                                              | N/A                                                             |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *::String*                                                      | :heavy_check_mark:                                              | ID of the Comment                                               |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::UpdateKmsCommentResponse)](../../models/operations/updatekmscommentresponse.md)**



## update_task_comment

Update a comment

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.comment.update_task_comment(task_comment=Models::Shared::TaskComment.new(
  task_id: "<id>",
  text: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `task_comment`                                                    | [Models::Shared::TaskComment](../../models/shared/taskcomment.md) | :heavy_check_mark:                                                | N/A                                                               |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | ID of the Comment                                                 |
| `fields_`                                                         | T::Array<*::String*>                                              | :heavy_minus_sign:                                                | Comma-delimited fields to return                                  |

### Response

**[T.nilable(Models::Operations::UpdateTaskCommentResponse)](../../models/operations/updatetaskcommentresponse.md)**

