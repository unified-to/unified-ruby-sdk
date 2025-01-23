# Kms
(*kms*)

## Overview

### Available Operations

* [create_kms_comment](#create_kms_comment) - Create a comment
* [create_kms_page](#create_kms_page) - Create a page
* [create_kms_space](#create_kms_space) - Create a space
* [get_kms_comment](#get_kms_comment) - Retrieve a comment
* [get_kms_page](#get_kms_page) - Retrieve a page
* [get_kms_space](#get_kms_space) - Retrieve a space
* [list_kms_comments](#list_kms_comments) - List all comments
* [list_kms_pages](#list_kms_pages) - List all pages
* [list_kms_spaces](#list_kms_spaces) - List all spaces
* [patch_kms_comment](#patch_kms_comment) - Update a comment
* [patch_kms_page](#patch_kms_page) - Update a page
* [patch_kms_space](#patch_kms_space) - Update a space
* [remove_kms_comment](#remove_kms_comment) - Remove a comment
* [remove_kms_page](#remove_kms_page) - Remove a page
* [remove_kms_space](#remove_kms_space) - Remove a space
* [update_kms_comment](#update_kms_comment) - Update a comment
* [update_kms_page](#update_kms_page) - Update a page
* [update_kms_space](#update_kms_space) - Update a space

## create_kms_comment

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

    
res = s.kms.create_kms_comment(connection_id="<id>", kms_comment=::UnifiedRubySDK::Shared::KmsComment.new(
  content: "<value>",
), fields_=[
  "<value>",
])

if ! res.kms_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                            | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `connection_id`                                                                      | *::String*                                                                           | :heavy_check_mark:                                                                   | ID of the connection                                                                 |
| `kms_comment`                                                                        | [T.nilable(::UnifiedRubySDK::Shared::KmsComment)](../../models/shared/kmscomment.md) | :heavy_minus_sign:                                                                   | N/A                                                                                  |
| `fields_`                                                                            | T::Array<*::String*>                                                                 | :heavy_minus_sign:                                                                   | Comma-delimited fields to return                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateKmsCommentResponse)](../../models/operations/createkmscommentresponse.md)**



## create_kms_page

Create a page

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.kms.create_kms_page(connection_id="<id>", kms_page=::UnifiedRubySDK::Shared::KmsPage.new(
  title: "<value>",
  type: ::UnifiedRubySDK::Shared::KmsPageType::HTML,
), fields_=[
  "<value>",
])

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                      | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `connection_id`                                                                | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the connection                                                           |
| `kms_page`                                                                     | [T.nilable(::UnifiedRubySDK::Shared::KmsPage)](../../models/shared/kmspage.md) | :heavy_minus_sign:                                                             | N/A                                                                            |
| `fields_`                                                                      | T::Array<*::String*>                                                           | :heavy_minus_sign:                                                             | Comma-delimited fields to return                                               |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateKmsPageResponse)](../../models/operations/createkmspageresponse.md)**



## create_kms_space

Create a space

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.kms.create_kms_space(connection_id="<id>", kms_space=::UnifiedRubySDK::Shared::KmsSpace.new(
  name: "<value>",
), fields_=[
  "<value>",
])

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                        | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `connection_id`                                                                  | *::String*                                                                       | :heavy_check_mark:                                                               | ID of the connection                                                             |
| `kms_space`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::KmsSpace)](../../models/shared/kmsspace.md) | :heavy_minus_sign:                                                               | N/A                                                                              |
| `fields_`                                                                        | T::Array<*::String*>                                                             | :heavy_minus_sign:                                                               | Comma-delimited fields to return                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateKmsSpaceResponse)](../../models/operations/createkmsspaceresponse.md)**



## get_kms_comment

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

    
res = s.kms.get_kms_comment(connection_id="<id>", id="<id>", fields_=[
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

**[T.nilable(::UnifiedRubySDK::Operations::GetKmsCommentResponse)](../../models/operations/getkmscommentresponse.md)**



## get_kms_page

Retrieve a page

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.kms.get_kms_page(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Page                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetKmsPageResponse)](../../models/operations/getkmspageresponse.md)**



## get_kms_space

Retrieve a space

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.kms.get_kms_space(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Space                  |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetKmsSpaceResponse)](../../models/operations/getkmsspaceresponse.md)**



## list_kms_comments

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


req = ::UnifiedRubySDK::Operations::ListKmsCommentsRequest.new(
  connection_id: "<id>",
)
    
res = s.kms.list_kms_comments(req)

if ! res.kms_comments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::UnifiedRubySDK::Operations::ListKmsCommentsRequest](../../models/operations/listkmscommentsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListKmsCommentsResponse)](../../models/operations/listkmscommentsresponse.md)**



## list_kms_pages

List all pages

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListKmsPagesRequest.new(
  connection_id: "<id>",
)
    
res = s.kms.list_kms_pages(req)

if ! res.kms_pages.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::UnifiedRubySDK::Operations::ListKmsPagesRequest](../../models/operations/listkmspagesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListKmsPagesResponse)](../../models/operations/listkmspagesresponse.md)**



## list_kms_spaces

List all spaces

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListKmsSpacesRequest.new(
  connection_id: "<id>",
)
    
res = s.kms.list_kms_spaces(req)

if ! res.kms_spaces.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::UnifiedRubySDK::Operations::ListKmsSpacesRequest](../../models/operations/listkmsspacesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListKmsSpacesResponse)](../../models/operations/listkmsspacesresponse.md)**



## patch_kms_comment

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

    
res = s.kms.patch_kms_comment(connection_id="<id>", id="<id>", kms_comment=::UnifiedRubySDK::Shared::KmsComment.new(
  content: "<value>",
), fields_=[
  "<value>",
])

if ! res.kms_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                            | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `connection_id`                                                                      | *::String*                                                                           | :heavy_check_mark:                                                                   | ID of the connection                                                                 |
| `id`                                                                                 | *::String*                                                                           | :heavy_check_mark:                                                                   | ID of the Comment                                                                    |
| `kms_comment`                                                                        | [T.nilable(::UnifiedRubySDK::Shared::KmsComment)](../../models/shared/kmscomment.md) | :heavy_minus_sign:                                                                   | N/A                                                                                  |
| `fields_`                                                                            | T::Array<*::String*>                                                                 | :heavy_minus_sign:                                                                   | Comma-delimited fields to return                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchKmsCommentResponse)](../../models/operations/patchkmscommentresponse.md)**



## patch_kms_page

Update a page

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.kms.patch_kms_page(connection_id="<id>", id="<id>", kms_page=::UnifiedRubySDK::Shared::KmsPage.new(
  title: "<value>",
  type: ::UnifiedRubySDK::Shared::KmsPageType::TEXT,
), fields_=[
  "<value>",
])

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                      | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `connection_id`                                                                | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the connection                                                           |
| `id`                                                                           | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the Page                                                                 |
| `kms_page`                                                                     | [T.nilable(::UnifiedRubySDK::Shared::KmsPage)](../../models/shared/kmspage.md) | :heavy_minus_sign:                                                             | N/A                                                                            |
| `fields_`                                                                      | T::Array<*::String*>                                                           | :heavy_minus_sign:                                                             | Comma-delimited fields to return                                               |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchKmsPageResponse)](../../models/operations/patchkmspageresponse.md)**



## patch_kms_space

Update a space

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.kms.patch_kms_space(connection_id="<id>", id="<id>", kms_space=::UnifiedRubySDK::Shared::KmsSpace.new(
  name: "<value>",
), fields_=[
  "<value>",
])

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                        | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `connection_id`                                                                  | *::String*                                                                       | :heavy_check_mark:                                                               | ID of the connection                                                             |
| `id`                                                                             | *::String*                                                                       | :heavy_check_mark:                                                               | ID of the Space                                                                  |
| `kms_space`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::KmsSpace)](../../models/shared/kmsspace.md) | :heavy_minus_sign:                                                               | N/A                                                                              |
| `fields_`                                                                        | T::Array<*::String*>                                                             | :heavy_minus_sign:                                                               | Comma-delimited fields to return                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchKmsSpaceResponse)](../../models/operations/patchkmsspaceresponse.md)**



## remove_kms_comment

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

    
res = s.kms.remove_kms_comment(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveKmsCommentResponse)](../../models/operations/removekmscommentresponse.md)**



## remove_kms_page

Remove a page

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.kms.remove_kms_page(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Page       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveKmsPageResponse)](../../models/operations/removekmspageresponse.md)**



## remove_kms_space

Remove a space

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.kms.remove_kms_space(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Space      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveKmsSpaceResponse)](../../models/operations/removekmsspaceresponse.md)**



## update_kms_comment

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

    
res = s.kms.update_kms_comment(connection_id="<id>", id="<id>", kms_comment=::UnifiedRubySDK::Shared::KmsComment.new(
  content: "<value>",
), fields_=[
  "<value>",
])

if ! res.kms_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                            | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `connection_id`                                                                      | *::String*                                                                           | :heavy_check_mark:                                                                   | ID of the connection                                                                 |
| `id`                                                                                 | *::String*                                                                           | :heavy_check_mark:                                                                   | ID of the Comment                                                                    |
| `kms_comment`                                                                        | [T.nilable(::UnifiedRubySDK::Shared::KmsComment)](../../models/shared/kmscomment.md) | :heavy_minus_sign:                                                                   | N/A                                                                                  |
| `fields_`                                                                            | T::Array<*::String*>                                                                 | :heavy_minus_sign:                                                                   | Comma-delimited fields to return                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateKmsCommentResponse)](../../models/operations/updatekmscommentresponse.md)**



## update_kms_page

Update a page

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.kms.update_kms_page(connection_id="<id>", id="<id>", kms_page=::UnifiedRubySDK::Shared::KmsPage.new(
  title: "<value>",
  type: ::UnifiedRubySDK::Shared::KmsPageType::OTHER,
), fields_=[
  "<value>",
])

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                      | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `connection_id`                                                                | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the connection                                                           |
| `id`                                                                           | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the Page                                                                 |
| `kms_page`                                                                     | [T.nilable(::UnifiedRubySDK::Shared::KmsPage)](../../models/shared/kmspage.md) | :heavy_minus_sign:                                                             | N/A                                                                            |
| `fields_`                                                                      | T::Array<*::String*>                                                           | :heavy_minus_sign:                                                             | Comma-delimited fields to return                                               |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateKmsPageResponse)](../../models/operations/updatekmspageresponse.md)**



## update_kms_space

Update a space

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.kms.update_kms_space(connection_id="<id>", id="<id>", kms_space=::UnifiedRubySDK::Shared::KmsSpace.new(
  name: "<value>",
), fields_=[
  "<value>",
])

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                        | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `connection_id`                                                                  | *::String*                                                                       | :heavy_check_mark:                                                               | ID of the connection                                                             |
| `id`                                                                             | *::String*                                                                       | :heavy_check_mark:                                                               | ID of the Space                                                                  |
| `kms_space`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::KmsSpace)](../../models/shared/kmsspace.md) | :heavy_minus_sign:                                                               | N/A                                                                              |
| `fields_`                                                                        | T::Array<*::String*>                                                             | :heavy_minus_sign:                                                               | Comma-delimited fields to return                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateKmsSpaceResponse)](../../models/operations/updatekmsspaceresponse.md)**

