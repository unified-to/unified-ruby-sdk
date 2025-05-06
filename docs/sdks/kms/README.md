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

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.kms.create_kms_comment(kms_comment=Models::Shared::KmsComment.new(
  content: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
], raw="<value>")

if ! res.kms_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `kms_comment`                                                                                                                                    | [Models::Shared::KmsComment](../../models/shared/kmscomment.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateKmsCommentResponse)](../../models/operations/createkmscommentresponse.md)**



## create_kms_page

Create a page

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.kms.create_kms_page(kms_page=Models::Shared::KmsPage.new(
  title: "<value>",
  type: Models::Shared::KmsPageType::HTML,
), connection_id="<id>", fields_=[
  "<value>",
], raw="<value>")

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `kms_page`                                                                                                                                       | [Models::Shared::KmsPage](../../models/shared/kmspage.md)                                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateKmsPageResponse)](../../models/operations/createkmspageresponse.md)**



## create_kms_space

Create a space

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.kms.create_kms_space(kms_space=Models::Shared::KmsSpace.new(
  name: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
], raw="<value>")

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `kms_space`                                                                                                                                      | [Models::Shared::KmsSpace](../../models/shared/kmsspace.md)                                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateKmsSpaceResponse)](../../models/operations/createkmsspaceresponse.md)**



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

res = s.kms.get_kms_comment(connection_id="<id>", id="<id>", fields_=[
  "<value>",
], raw="<value>")

if ! res.kms_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Comment                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetKmsCommentResponse)](../../models/operations/getkmscommentresponse.md)**



## get_kms_page

Retrieve a page

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.kms.get_kms_page(connection_id="<id>", id="<id>", fields_=[
  "<value>",
], raw="<value>")

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Page                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetKmsPageResponse)](../../models/operations/getkmspageresponse.md)**



## get_kms_space

Retrieve a space

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.kms.get_kms_space(connection_id="<id>", id="<id>", fields_=[
  "<value>",
], raw="<value>")

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Space                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetKmsSpaceResponse)](../../models/operations/getkmsspaceresponse.md)**



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

res = s.kms.list_kms_comments(req)

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



## list_kms_pages

List all pages

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListKmsPagesRequest.new(
  connection_id: "<id>",
)

res = s.kms.list_kms_pages(req)

if ! res.kms_pages.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListKmsPagesRequest](../../models/operations/listkmspagesrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListKmsPagesResponse)](../../models/operations/listkmspagesresponse.md)**



## list_kms_spaces

List all spaces

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListKmsSpacesRequest.new(
  connection_id: "<id>",
)

res = s.kms.list_kms_spaces(req)

if ! res.kms_spaces.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListKmsSpacesRequest](../../models/operations/listkmsspacesrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListKmsSpacesResponse)](../../models/operations/listkmsspacesresponse.md)**



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

req = Models::Operations::PatchKmsCommentRequest.new(
  kms_comment: Models::Shared::KmsComment.new(
    content: "<value>",
  ),
  connection_id: "<id>",
  id: "<id>",
)

res = s.kms.patch_kms_comment(req)

if ! res.kms_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchKmsCommentRequest](../../models/operations/patchkmscommentrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchKmsCommentResponse)](../../models/operations/patchkmscommentresponse.md)**



## patch_kms_page

Update a page

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::PatchKmsPageRequest.new(
  kms_page: Models::Shared::KmsPage.new(
    title: "<value>",
    type: Models::Shared::KmsPageType::TEXT,
  ),
  connection_id: "<id>",
  id: "<id>",
)

res = s.kms.patch_kms_page(req)

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::PatchKmsPageRequest](../../models/operations/patchkmspagerequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::PatchKmsPageResponse)](../../models/operations/patchkmspageresponse.md)**



## patch_kms_space

Update a space

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::PatchKmsSpaceRequest.new(
  kms_space: Models::Shared::KmsSpace.new(
    name: "<value>",
  ),
  connection_id: "<id>",
  id: "<id>",
)

res = s.kms.patch_kms_space(req)

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::PatchKmsSpaceRequest](../../models/operations/patchkmsspacerequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::PatchKmsSpaceResponse)](../../models/operations/patchkmsspaceresponse.md)**



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

**[T.nilable(Models::Operations::RemoveKmsCommentResponse)](../../models/operations/removekmscommentresponse.md)**



## remove_kms_page

Remove a page

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
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

**[T.nilable(Models::Operations::RemoveKmsPageResponse)](../../models/operations/removekmspageresponse.md)**



## remove_kms_space

Remove a space

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
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

**[T.nilable(Models::Operations::RemoveKmsSpaceResponse)](../../models/operations/removekmsspaceresponse.md)**



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

req = Models::Operations::UpdateKmsCommentRequest.new(
  kms_comment: Models::Shared::KmsComment.new(
    content: "<value>",
  ),
  connection_id: "<id>",
  id: "<id>",
)

res = s.kms.update_kms_comment(req)

if ! res.kms_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateKmsCommentRequest](../../models/operations/updatekmscommentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateKmsCommentResponse)](../../models/operations/updatekmscommentresponse.md)**



## update_kms_page

Update a page

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::UpdateKmsPageRequest.new(
  kms_page: Models::Shared::KmsPage.new(
    title: "<value>",
    type: Models::Shared::KmsPageType::OTHER,
  ),
  connection_id: "<id>",
  id: "<id>",
)

res = s.kms.update_kms_page(req)

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::UpdateKmsPageRequest](../../models/operations/updatekmspagerequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::UpdateKmsPageResponse)](../../models/operations/updatekmspageresponse.md)**



## update_kms_space

Update a space

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::UpdateKmsSpaceRequest.new(
  kms_space: Models::Shared::KmsSpace.new(
    name: "<value>",
  ),
  connection_id: "<id>",
  id: "<id>",
)

res = s.kms.update_kms_space(req)

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::UpdateKmsSpaceRequest](../../models/operations/updatekmsspacerequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::UpdateKmsSpaceResponse)](../../models/operations/updatekmsspaceresponse.md)**

