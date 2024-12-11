# Metadata
(*metadata*)

## Overview

### Available Operations

* [create_metadata_metadata](#create_metadata_metadata) - Create a metadata
* [get_metadata_metadata](#get_metadata_metadata) - Retrieve a metadata
* [list_metadata_metadatas](#list_metadata_metadatas) - List all metadatas
* [patch_metadata_metadata](#patch_metadata_metadata) - Update a metadata
* [remove_metadata_metadata](#remove_metadata_metadata) - Remove a metadata
* [update_metadata_metadata](#update_metadata_metadata) - Update a metadata

## create_metadata_metadata

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

    
res = s.metadata.create_metadata_metadata(connection_id="<id>", metadata_metadata=::UnifiedRubySDK::Shared::MetadataMetadata.new(
  name: "<value>",
  object_type: "<value>",
), fields_=[
  "<value>",
])

if ! res.metadata_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                        | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                  | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the connection                                                                             |
| `metadata_metadata`                                                                              | [T.nilable(::UnifiedRubySDK::Shared::MetadataMetadata)](../../models/shared/metadatametadata.md) | :heavy_minus_sign:                                                                               | N/A                                                                                              |
| `fields_`                                                                                        | T::Array<*::String*>                                                                             | :heavy_minus_sign:                                                                               | Comma-delimited fields to return                                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateMetadataMetadataResponse)](../../models/operations/createmetadatametadataresponse.md)**



## get_metadata_metadata

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

    
res = s.metadata.get_metadata_metadata(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.metadata_metadata.nil?
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

**[T.nilable(::UnifiedRubySDK::Operations::GetMetadataMetadataResponse)](../../models/operations/getmetadatametadataresponse.md)**



## list_metadata_metadatas

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


req = ::UnifiedRubySDK::Operations::ListMetadataMetadatasRequest.new(
  connection_id: "<id>",
)
    
res = s.metadata.list_metadata_metadatas(req)

if ! res.metadata_metadatas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListMetadataMetadatasRequest](../../models/operations/listmetadatametadatasrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListMetadataMetadatasResponse)](../../models/operations/listmetadatametadatasresponse.md)**



## patch_metadata_metadata

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

    
res = s.metadata.patch_metadata_metadata(connection_id="<id>", id="<id>", metadata_metadata=::UnifiedRubySDK::Shared::MetadataMetadata.new(
  name: "<value>",
  object_type: "<value>",
), fields_=[
  "<value>",
])

if ! res.metadata_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                        | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                  | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the connection                                                                             |
| `id`                                                                                             | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the Metadata                                                                               |
| `metadata_metadata`                                                                              | [T.nilable(::UnifiedRubySDK::Shared::MetadataMetadata)](../../models/shared/metadatametadata.md) | :heavy_minus_sign:                                                                               | N/A                                                                                              |
| `fields_`                                                                                        | T::Array<*::String*>                                                                             | :heavy_minus_sign:                                                                               | Comma-delimited fields to return                                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchMetadataMetadataResponse)](../../models/operations/patchmetadatametadataresponse.md)**



## remove_metadata_metadata

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

    
res = s.metadata.remove_metadata_metadata(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveMetadataMetadataResponse)](../../models/operations/removemetadatametadataresponse.md)**



## update_metadata_metadata

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

    
res = s.metadata.update_metadata_metadata(connection_id="<id>", id="<id>", metadata_metadata=::UnifiedRubySDK::Shared::MetadataMetadata.new(
  name: "<value>",
  object_type: "<value>",
), fields_=[
  "<value>",
])

if ! res.metadata_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                        | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                  | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the connection                                                                             |
| `id`                                                                                             | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the Metadata                                                                               |
| `metadata_metadata`                                                                              | [T.nilable(::UnifiedRubySDK::Shared::MetadataMetadata)](../../models/shared/metadatametadata.md) | :heavy_minus_sign:                                                                               | N/A                                                                                              |
| `fields_`                                                                                        | T::Array<*::String*>                                                                             | :heavy_minus_sign:                                                                               | Comma-delimited fields to return                                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateMetadataMetadataResponse)](../../models/operations/updatemetadatametadataresponse.md)**

