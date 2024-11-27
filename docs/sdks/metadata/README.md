# Metadata
(*metadata*)

## Overview

### Available Operations

* [create_commerce_metadata](#create_commerce_metadata) - Create a metadata
* [get_commerce_metadata](#get_commerce_metadata) - Retrieve a metadata
* [list_commerce_metadatas](#list_commerce_metadatas) - List all metadatas
* [patch_commerce_metadata](#patch_commerce_metadata) - Update a metadata
* [remove_commerce_metadata](#remove_commerce_metadata) - Remove a metadata
* [update_commerce_metadata](#update_commerce_metadata) - Update a metadata

## create_commerce_metadata

Create a metadata

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.metadata.create_commerce_metadata(connection_id="<id>", commerce_metadata=::UnifiedRubySDK::Shared::CommerceMetadata.new(), fields_=[
  "<value>",
])

if ! res.commerce_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                        | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                  | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the connection                                                                             |
| `commerce_metadata`                                                                              | [T.nilable(::UnifiedRubySDK::Shared::CommerceMetadata)](../../models/shared/commercemetadata.md) | :heavy_minus_sign:                                                                               | N/A                                                                                              |
| `fields_`                                                                                        | T::Array<*::String*>                                                                             | :heavy_minus_sign:                                                                               | Comma-delimited fields to return                                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceMetadataResponse)](../../models/operations/createcommercemetadataresponse.md)**



## get_commerce_metadata

Retrieve a metadata

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.metadata.get_commerce_metadata(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.commerce_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Metadata               |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCommerceMetadataResponse)](../../models/operations/getcommercemetadataresponse.md)**



## list_commerce_metadatas

List all metadatas

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCommerceMetadatasRequest.new(
  connection_id: "<id>",
)
    
res = s.metadata.list_commerce_metadatas(req)

if ! res.commerce_metadatas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListCommerceMetadatasRequest](../../models/operations/listcommercemetadatasrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCommerceMetadatasResponse)](../../models/operations/listcommercemetadatasresponse.md)**



## patch_commerce_metadata

Update a metadata

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.metadata.patch_commerce_metadata(connection_id="<id>", id="<id>", commerce_metadata=::UnifiedRubySDK::Shared::CommerceMetadata.new(), fields_=[
  "<value>",
])

if ! res.commerce_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                        | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                  | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the connection                                                                             |
| `id`                                                                                             | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the Metadata                                                                               |
| `commerce_metadata`                                                                              | [T.nilable(::UnifiedRubySDK::Shared::CommerceMetadata)](../../models/shared/commercemetadata.md) | :heavy_minus_sign:                                                                               | N/A                                                                                              |
| `fields_`                                                                                        | T::Array<*::String*>                                                                             | :heavy_minus_sign:                                                                               | Comma-delimited fields to return                                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceMetadataResponse)](../../models/operations/patchcommercemetadataresponse.md)**



## remove_commerce_metadata

Remove a metadata

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.metadata.remove_commerce_metadata(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Metadata   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCommerceMetadataResponse)](../../models/operations/removecommercemetadataresponse.md)**



## update_commerce_metadata

Update a metadata

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.metadata.update_commerce_metadata(connection_id="<id>", id="<id>", commerce_metadata=::UnifiedRubySDK::Shared::CommerceMetadata.new(), fields_=[
  "<value>",
])

if ! res.commerce_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                        | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                  | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the connection                                                                             |
| `id`                                                                                             | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the Metadata                                                                               |
| `commerce_metadata`                                                                              | [T.nilable(::UnifiedRubySDK::Shared::CommerceMetadata)](../../models/shared/commercemetadata.md) | :heavy_minus_sign:                                                                               | N/A                                                                                              |
| `fields_`                                                                                        | T::Array<*::String*>                                                                             | :heavy_minus_sign:                                                                               | Comma-delimited fields to return                                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceMetadataResponse)](../../models/operations/updatecommercemetadataresponse.md)**

