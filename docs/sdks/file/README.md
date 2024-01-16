# File


### Available Operations

* [create_crm_file](#create_crm_file) - Create a file
* [create_storage_file](#create_storage_file) - Create a file
* [get_crm_file](#get_crm_file) - Retrieve a file
* [get_storage_file](#get_storage_file) - Retrieve a file
* [list_crm_files](#list_crm_files) - List all files
* [list_storage_files](#list_storage_files) - List all files
* [patch_crm_file](#patch_crm_file) - Update a file
* [patch_storage_file](#patch_storage_file) - Update a file
* [remove_crm_file](#remove_crm_file) - Remove a file
* [remove_storage_file](#remove_storage_file) - Remove a file
* [update_crm_file](#update_crm_file) - Update a file
* [update_storage_file](#update_storage_file) - Update a file

## create_crm_file

Create a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.file.create_crm_file(connection_id="string", crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ))

if ! res.crm_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `connection_id`                                   | *String*                                          | :heavy_check_mark:                                | ID of the connection                              |
| `crm_file`                                        | [Shared::CrmFile](../../models/shared/crmfile.md) | :heavy_minus_sign:                                | N/A                                               |


### Response

**[T.nilable(Operations::CreateCrmFileResponse)](../../models/operations/createcrmfileresponse.md)**


## create_storage_file

Create a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.file.create_storage_file(connection_id="string", storage_file=Shared::StorageFile.new(
    permissions=[
      Shared::StoragePermission.new(
        roles=[
          Shared::PropertyStoragePermissionRoles::WRITE,
        ],
      ),
    ],
    raw=Shared::PropertyStorageFileRaw.new(),
  ))

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `storage_file`                                            | [Shared::StorageFile](../../models/shared/storagefile.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::CreateStorageFileResponse)](../../models/operations/createstoragefileresponse.md)**


## get_crm_file

Retrieve a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.file.get_crm_file(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.crm_file.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the File                   |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmFileResponse)](../../models/operations/getcrmfileresponse.md)**


## get_storage_file

Retrieve a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.file.get_storage_file(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the File                   |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetStorageFileResponse)](../../models/operations/getstoragefileresponse.md)**


## list_crm_files

List all files

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListCrmFilesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.file.list_crm_files(req)

if ! res.crm_files.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [Operations::ListCrmFilesRequest](../../models/operations/listcrmfilesrequest.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |


### Response

**[T.nilable(Operations::ListCrmFilesResponse)](../../models/operations/listcrmfilesresponse.md)**


## list_storage_files

List all files

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListStorageFilesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.file.list_storage_files(req)

if ! res.storage_files.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::ListStorageFilesRequest](../../models/operations/liststoragefilesrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::ListStorageFilesResponse)](../../models/operations/liststoragefilesresponse.md)**


## patch_crm_file

Update a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.file.patch_crm_file(connection_id="string", id="string", crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ))

if ! res.crm_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `connection_id`                                   | *String*                                          | :heavy_check_mark:                                | ID of the connection                              |
| `id`                                              | *String*                                          | :heavy_check_mark:                                | ID of the File                                    |
| `crm_file`                                        | [Shared::CrmFile](../../models/shared/crmfile.md) | :heavy_minus_sign:                                | N/A                                               |


### Response

**[T.nilable(Operations::PatchCrmFileResponse)](../../models/operations/patchcrmfileresponse.md)**


## patch_storage_file

Update a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.file.patch_storage_file(connection_id="string", id="string", storage_file=Shared::StorageFile.new(
    permissions=[
      Shared::StoragePermission.new(
        roles=[
          Shared::PropertyStoragePermissionRoles::OWNER,
        ],
      ),
    ],
    raw=Shared::PropertyStorageFileRaw.new(),
  ))

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the File                                            |
| `storage_file`                                            | [Shared::StorageFile](../../models/shared/storagefile.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::PatchStorageFileResponse)](../../models/operations/patchstoragefileresponse.md)**


## remove_crm_file

Remove a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.file.remove_crm_file(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the File       |


### Response

**[T.nilable(Operations::RemoveCrmFileResponse)](../../models/operations/removecrmfileresponse.md)**


## remove_storage_file

Remove a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.file.remove_storage_file(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the File       |


### Response

**[T.nilable(Operations::RemoveStorageFileResponse)](../../models/operations/removestoragefileresponse.md)**


## update_crm_file

Update a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.file.update_crm_file(connection_id="string", id="string", crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ))

if ! res.crm_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `connection_id`                                   | *String*                                          | :heavy_check_mark:                                | ID of the connection                              |
| `id`                                              | *String*                                          | :heavy_check_mark:                                | ID of the File                                    |
| `crm_file`                                        | [Shared::CrmFile](../../models/shared/crmfile.md) | :heavy_minus_sign:                                | N/A                                               |


### Response

**[T.nilable(Operations::UpdateCrmFileResponse)](../../models/operations/updatecrmfileresponse.md)**


## update_storage_file

Update a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.file.update_storage_file(connection_id="string", id="string", storage_file=Shared::StorageFile.new(
    permissions=[
      Shared::StoragePermission.new(
        roles=[
          Shared::PropertyStoragePermissionRoles::WRITE,
        ],
      ),
    ],
    raw=Shared::PropertyStorageFileRaw.new(),
  ))

if ! res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the File                                            |
| `storage_file`                                            | [Shared::StorageFile](../../models/shared/storagefile.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::UpdateStorageFileResponse)](../../models/operations/updatestoragefileresponse.md)**

