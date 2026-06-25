# Space
(*space*)

## Overview

### Available Operations

* [create_kms_space2](#create_kms_space2) - Create a space
* [get_kms_space2](#get_kms_space2) - Retrieve a space
* [list_kms_spaces2](#list_kms_spaces2) - List all spaces
* [patch_kms_space2](#patch_kms_space2) - Update a space
* [remove_kms_space2](#remove_kms_space2) - Remove a space
* [update_kms_space2](#update_kms_space2) - Update a space

## create_kms_space2

Create a space

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createKmsSpace2" method="post" path="/kms/{connection_id}/space" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.space.create_kms_space2(kms_space: Models::Shared::KmsSpace.new(), connection_id: '<id>')

unless res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `kms_space`                                                                                                                                      | [Models::Shared::KmsSpace](../../models/shared/kmsspace.md)                                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateKmsSpace2QueryParamFields](../../models/operations/createkmsspace2queryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateKmsSpace2Response)](../../models/operations/createkmsspace2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_kms_space2

Retrieve a space

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getKmsSpace2" method="get" path="/kms/{connection_id}/space/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.space.get_kms_space2(connection_id: '<id>', id: '<id>')

unless res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Space                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetKmsSpace2QueryParamFields](../../models/operations/getkmsspace2queryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetKmsSpace2Response)](../../models/operations/getkmsspace2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_kms_spaces2

List all spaces

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listKmsSpaces2" method="get" path="/kms/{connection_id}/space" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListKmsSpaces2Request.new(
  connection_id: '<id>',
)

res = s.space.list_kms_spaces2(request: req)

unless res.kms_spaces.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListKmsSpaces2Request](../../models/operations/listkmsspaces2request.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListKmsSpaces2Response)](../../models/operations/listkmsspaces2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_kms_space2

Update a space

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchKmsSpace2" method="patch" path="/kms/{connection_id}/space/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchKmsSpace2Request.new(
  kms_space: Models::Shared::KmsSpace.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.space.patch_kms_space2(request: req)

unless res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchKmsSpace2Request](../../models/operations/patchkmsspace2request.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchKmsSpace2Response)](../../models/operations/patchkmsspace2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_kms_space2

Remove a space

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeKmsSpace2" method="delete" path="/kms/{connection_id}/space/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.space.remove_kms_space2(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveKmsSpace2Response)](../../models/operations/removekmsspace2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_kms_space2

Update a space

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateKmsSpace2" method="put" path="/kms/{connection_id}/space/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateKmsSpace2Request.new(
  kms_space: Models::Shared::KmsSpace.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.space.update_kms_space2(request: req)

unless res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateKmsSpace2Request](../../models/operations/updatekmsspace2request.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateKmsSpace2Response)](../../models/operations/updatekmsspace2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |