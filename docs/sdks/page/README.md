# Page
(*page*)

## Overview

### Available Operations

* [create_kms_page2](#create_kms_page2) - Create a page
* [get_kms_page2](#get_kms_page2) - Retrieve a page
* [list_kms_pages2](#list_kms_pages2) - List all pages
* [patch_kms_page2](#patch_kms_page2) - Update a page
* [remove_kms_page2](#remove_kms_page2) - Remove a page
* [update_kms_page2](#update_kms_page2) - Update a page

## create_kms_page2

Create a page

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createKmsPage2" method="post" path="/kms/{connection_id}/page" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.page.create_kms_page2(kms_page: Models::Shared::KmsPage.new(
  type: Models::Shared::KmsPageType::OTHER,
), connection_id: '<id>')

unless res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `kms_page`                                                                                                                                       | [Models::Shared::KmsPage](../../models/shared/kmspage.md)                                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateKmsPage2QueryParamFields](../../models/operations/createkmspage2queryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateKmsPage2Response)](../../models/operations/createkmspage2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_kms_page2

Retrieve a page

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getKmsPage2" method="get" path="/kms/{connection_id}/page/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.page.get_kms_page2(connection_id: '<id>', id: '<id>')

unless res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Page                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetKmsPage2QueryParamFields](../../models/operations/getkmspage2queryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetKmsPage2Response)](../../models/operations/getkmspage2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_kms_pages2

List all pages

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listKmsPages2" method="get" path="/kms/{connection_id}/page" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListKmsPages2Request.new(
  connection_id: '<id>',
)

res = s.page.list_kms_pages2(request: req)

unless res.kms_pages.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListKmsPages2Request](../../models/operations/listkmspages2request.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListKmsPages2Response)](../../models/operations/listkmspages2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_kms_page2

Update a page

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchKmsPage2" method="patch" path="/kms/{connection_id}/page/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchKmsPage2Request.new(
  kms_page: Models::Shared::KmsPage.new(
    type: Models::Shared::KmsPageType::OTHER,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.page.patch_kms_page2(request: req)

unless res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::PatchKmsPage2Request](../../models/operations/patchkmspage2request.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::PatchKmsPage2Response)](../../models/operations/patchkmspage2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_kms_page2

Remove a page

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeKmsPage2" method="delete" path="/kms/{connection_id}/page/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.page.remove_kms_page2(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveKmsPage2Response)](../../models/operations/removekmspage2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_kms_page2

Update a page

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateKmsPage2" method="put" path="/kms/{connection_id}/page/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateKmsPage2Request.new(
  kms_page: Models::Shared::KmsPage.new(
    type: Models::Shared::KmsPageType::MARKDOWN,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.page.update_kms_page2(request: req)

unless res.kms_page.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::UpdateKmsPage2Request](../../models/operations/updatekmspage2request.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::UpdateKmsPage2Response)](../../models/operations/updatekmspage2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |