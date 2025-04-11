# Page
(*page*)

## Overview

### Available Operations

* [create_kms_page](#create_kms_page) - Create a page
* [get_kms_page](#get_kms_page) - Retrieve a page
* [list_kms_pages](#list_kms_pages) - List all pages
* [patch_kms_page](#patch_kms_page) - Update a page
* [remove_kms_page](#remove_kms_page) - Remove a page
* [update_kms_page](#update_kms_page) - Update a page

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

res = s.page.create_kms_page(kms_page=Models::Shared::KmsPage.new(
  title: "<value>",
  type: Models::Shared::KmsPageType::HTML,
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `kms_page`                                                | [Models::Shared::KmsPage](../../models/shared/kmspage.md) | :heavy_check_mark:                                        | N/A                                                       |
| `connection_id`                                           | *::String*                                                | :heavy_check_mark:                                        | ID of the connection                                      |
| `fields_`                                                 | T::Array<*::String*>                                      | :heavy_minus_sign:                                        | Comma-delimited fields to return                          |

### Response

**[T.nilable(Models::Operations::CreateKmsPageResponse)](../../models/operations/createkmspageresponse.md)**



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

res = s.page.get_kms_page(connection_id="<id>", id="<id>", fields_=[
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

**[T.nilable(Models::Operations::GetKmsPageResponse)](../../models/operations/getkmspageresponse.md)**



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

res = s.page.list_kms_pages(req)

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

res = s.page.patch_kms_page(kms_page=Models::Shared::KmsPage.new(
  title: "<value>",
  type: Models::Shared::KmsPageType::TEXT,
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `kms_page`                                                | [Models::Shared::KmsPage](../../models/shared/kmspage.md) | :heavy_check_mark:                                        | N/A                                                       |
| `connection_id`                                           | *::String*                                                | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *::String*                                                | :heavy_check_mark:                                        | ID of the Page                                            |
| `fields_`                                                 | T::Array<*::String*>                                      | :heavy_minus_sign:                                        | Comma-delimited fields to return                          |

### Response

**[T.nilable(Models::Operations::PatchKmsPageResponse)](../../models/operations/patchkmspageresponse.md)**



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

res = s.page.remove_kms_page(connection_id="<id>", id="<id>")

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

res = s.page.update_kms_page(kms_page=Models::Shared::KmsPage.new(
  title: "<value>",
  type: Models::Shared::KmsPageType::OTHER,
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `kms_page`                                                | [Models::Shared::KmsPage](../../models/shared/kmspage.md) | :heavy_check_mark:                                        | N/A                                                       |
| `connection_id`                                           | *::String*                                                | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *::String*                                                | :heavy_check_mark:                                        | ID of the Page                                            |
| `fields_`                                                 | T::Array<*::String*>                                      | :heavy_minus_sign:                                        | Comma-delimited fields to return                          |

### Response

**[T.nilable(Models::Operations::UpdateKmsPageResponse)](../../models/operations/updatekmspageresponse.md)**

