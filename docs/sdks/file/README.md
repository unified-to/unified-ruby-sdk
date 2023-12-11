# File


### Available Operations

* [create_crm_file](#create_crm_file) - Create a file
* [get_crm_file](#get_crm_file) - Retrieve a file
* [list_crm_files](#list_crm_files) - List all files
* [patch_crm_file](#patch_crm_file) - Update a file
* [remove_crm_file](#remove_crm_file) - Remove a file
* [update_crm_file](#update_crm_file) - Update a file

## create_crm_file

Create a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateCrmFileRequest.new(
  connection_id="string",
  crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ),
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


## get_crm_file

Retrieve a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetCrmFileRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
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


## list_crm_files

List all files

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
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


## patch_crm_file

Update a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchCrmFileRequest.new(
  connection_id="string",
  id="<ID>",
  crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ),
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


## remove_crm_file

Remove a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveCrmFileRequest.new(
  connection_id="string",
  id="<ID>",
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


## update_crm_file

Update a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateCrmFileRequest.new(
  connection_id="string",
  id="<ID>",
  crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ),
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

