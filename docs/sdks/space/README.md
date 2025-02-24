# Space
(*space*)

## Overview

### Available Operations

* [create_kms_space](#create_kms_space) - Create a space
* [get_kms_space](#get_kms_space) - Retrieve a space
* [list_kms_spaces](#list_kms_spaces) - List all spaces
* [patch_kms_space](#patch_kms_space) - Update a space
* [remove_kms_space](#remove_kms_space) - Remove a space
* [update_kms_space](#update_kms_space) - Update a space

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

    
res = s.space.create_kms_space(kms_space=::UnifiedRubySDK::Shared::KmsSpace.new(
  name: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `kms_space`                                                           | [::UnifiedRubySDK::Shared::KmsSpace](../../models/shared/kmsspace.md) | :heavy_check_mark:                                                    | N/A                                                                   |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `fields_`                                                             | T::Array<*::String*>                                                  | :heavy_minus_sign:                                                    | Comma-delimited fields to return                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateKmsSpaceResponse)](../../models/operations/createkmsspaceresponse.md)**



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

    
res = s.space.get_kms_space(connection_id="<id>", id="<id>", fields_=[
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
    
res = s.space.list_kms_spaces(req)

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

    
res = s.space.patch_kms_space(kms_space=::UnifiedRubySDK::Shared::KmsSpace.new(
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `kms_space`                                                           | [::UnifiedRubySDK::Shared::KmsSpace](../../models/shared/kmsspace.md) | :heavy_check_mark:                                                    | N/A                                                                   |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *::String*                                                            | :heavy_check_mark:                                                    | ID of the Space                                                       |
| `fields_`                                                             | T::Array<*::String*>                                                  | :heavy_minus_sign:                                                    | Comma-delimited fields to return                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchKmsSpaceResponse)](../../models/operations/patchkmsspaceresponse.md)**



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

    
res = s.space.remove_kms_space(connection_id="<id>", id="<id>")

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

    
res = s.space.update_kms_space(kms_space=::UnifiedRubySDK::Shared::KmsSpace.new(
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.kms_space.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `kms_space`                                                           | [::UnifiedRubySDK::Shared::KmsSpace](../../models/shared/kmsspace.md) | :heavy_check_mark:                                                    | N/A                                                                   |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *::String*                                                            | :heavy_check_mark:                                                    | ID of the Space                                                       |
| `fields_`                                                             | T::Array<*::String*>                                                  | :heavy_minus_sign:                                                    | Comma-delimited fields to return                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateKmsSpaceResponse)](../../models/operations/updatekmsspaceresponse.md)**

