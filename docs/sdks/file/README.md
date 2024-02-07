# File


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

    
res = s.file.create_storage_file(connection_id="string", storage_file=::UnifiedRubySDK::Shared::StorageFile.new(
    permissions: [
      ::UnifiedRubySDK::Shared::StoragePermission.new(
        roles: [
          ::UnifiedRubySDK::Shared::PropertyStoragePermissionRoles::WRITE,
        ],
      ),
    ],
    raw: {
      "Sports": "string",
    },
  ))

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `storage_file`                                                              | [::UnifiedRubySDK::Shared::StorageFile](../../models/shared/storagefile.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


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

    
res = s.file.get_storage_file(connection_id="string", id="string", fields_=[
    "string",
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
  connection_id: "string",
  fields_: [
    "string",
  ],
)
    
res = s.file.list_storage_files(req)

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

    
res = s.file.patch_storage_file(connection_id="string", id="string", storage_file=::UnifiedRubySDK::Shared::StorageFile.new(
    permissions: [
      ::UnifiedRubySDK::Shared::StoragePermission.new(
        roles: [
          ::UnifiedRubySDK::Shared::PropertyStoragePermissionRoles::OWNER,
        ],
      ),
    ],
    raw: {
      "Mexico": "string",
    },
  ))

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the File                                                              |
| `storage_file`                                                              | [::UnifiedRubySDK::Shared::StorageFile](../../models/shared/storagefile.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


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

    
res = s.file.remove_storage_file(connection_id="string", id="string")

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

    
res = s.file.update_storage_file(connection_id="string", id="string", storage_file=::UnifiedRubySDK::Shared::StorageFile.new(
    permissions: [
      ::UnifiedRubySDK::Shared::StoragePermission.new(
        roles: [
          ::UnifiedRubySDK::Shared::PropertyStoragePermissionRoles::WRITE,
        ],
      ),
    ],
    raw: {
      "Male": "string",
    },
  ))

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the File                                                              |
| `storage_file`                                                              | [::UnifiedRubySDK::Shared::StorageFile](../../models/shared/storagefile.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateStorageFileResponse)](../../models/operations/updatestoragefileresponse.md)**

