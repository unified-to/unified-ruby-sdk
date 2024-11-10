# Storage
(*storage*)

## Overview

### Available Operations

* [create_storage_file](#create_storage_file) - Create a file
* [get_storage_file](#get_storage_file) - Retrieve a file
* [list_storage_files](#list_storage_files) - List all files
* [patch_storage_file](#patch_storage_file) - Update a file
* [remove_storage_file](#remove_storage_file) - Remove a file
* [update_storage_file](#update_storage_file) - Update a file

## create_storage_file

Create a file

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.storage.create_storage_file(connection_id="<id>", storage_file=::UnifiedRubySDK::Shared::StorageFile.new(), fields_=[
  "<value>",
])

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                              | Type                                                                                   | Required                                                                               | Description                                                                            |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `connection_id`                                                                        | *::String*                                                                             | :heavy_check_mark:                                                                     | ID of the connection                                                                   |
| `storage_file`                                                                         | [T.nilable(::UnifiedRubySDK::Shared::StorageFile)](../../models/shared/storagefile.md) | :heavy_minus_sign:                                                                     | N/A                                                                                    |
| `fields_`                                                                              | T::Array<*::String*>                                                                   | :heavy_minus_sign:                                                                     | Comma-delimited fields to return                                                       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateStorageFileResponse)](../../models/operations/createstoragefileresponse.md)**



## get_storage_file

Retrieve a file

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.storage.get_storage_file(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the File                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetStorageFileResponse)](../../models/operations/getstoragefileresponse.md)**



## list_storage_files

List all files

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListStorageFilesRequest.new(
  connection_id: "<id>",
)
    
res = s.storage.list_storage_files(req)

if ! res.storage_files.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListStorageFilesRequest](../../models/operations/liststoragefilesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListStorageFilesResponse)](../../models/operations/liststoragefilesresponse.md)**



## patch_storage_file

Update a file

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.storage.patch_storage_file(connection_id="<id>", id="<id>", storage_file=::UnifiedRubySDK::Shared::StorageFile.new(), fields_=[
  "<value>",
])

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                              | Type                                                                                   | Required                                                                               | Description                                                                            |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `connection_id`                                                                        | *::String*                                                                             | :heavy_check_mark:                                                                     | ID of the connection                                                                   |
| `id`                                                                                   | *::String*                                                                             | :heavy_check_mark:                                                                     | ID of the File                                                                         |
| `storage_file`                                                                         | [T.nilable(::UnifiedRubySDK::Shared::StorageFile)](../../models/shared/storagefile.md) | :heavy_minus_sign:                                                                     | N/A                                                                                    |
| `fields_`                                                                              | T::Array<*::String*>                                                                   | :heavy_minus_sign:                                                                     | Comma-delimited fields to return                                                       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchStorageFileResponse)](../../models/operations/patchstoragefileresponse.md)**



## remove_storage_file

Remove a file

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.storage.remove_storage_file(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the File       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveStorageFileResponse)](../../models/operations/removestoragefileresponse.md)**



## update_storage_file

Update a file

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.storage.update_storage_file(connection_id="<id>", id="<id>", storage_file=::UnifiedRubySDK::Shared::StorageFile.new(), fields_=[
  "<value>",
])

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                              | Type                                                                                   | Required                                                                               | Description                                                                            |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `connection_id`                                                                        | *::String*                                                                             | :heavy_check_mark:                                                                     | ID of the connection                                                                   |
| `id`                                                                                   | *::String*                                                                             | :heavy_check_mark:                                                                     | ID of the File                                                                         |
| `storage_file`                                                                         | [T.nilable(::UnifiedRubySDK::Shared::StorageFile)](../../models/shared/storagefile.md) | :heavy_minus_sign:                                                                     | N/A                                                                                    |
| `fields_`                                                                              | T::Array<*::String*>                                                                   | :heavy_minus_sign:                                                                     | Comma-delimited fields to return                                                       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateStorageFileResponse)](../../models/operations/updatestoragefileresponse.md)**

