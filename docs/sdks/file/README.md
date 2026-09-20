# File
(*file*)

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

<!-- UsageSnippet language="ruby" operationID="createStorageFile" method="post" path="/storage/{connection_id}/file" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.file.create_storage_file(storage_file: Models::Shared::StorageFile.new(
  created_at: DateTime.iso8601('2021-09-12T16:48:23.774Z'),
  data: 'data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSI4MzIiIGhlaWdodD0iMTg2MSI+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0iIzFmYzM1NSIvPjx0ZXh0IHg9IjQxNiIgeT0iOTMwLjUiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+ODMyeDE4NjE8L3RleHQ+PC9zdmc+',
  description: 'Crastinus cupiditate debilito cimentarius virgo.',
  download_url: 'https://stingy-casement.name/',
  hash: 'fe6a659e-75cd-4079-9b76-351f9af2205a',
  id: 'dc92727f-4ba6-4e4e-a253-7075be5b9185',
  mime_type: 'FOLDER',
  name: 'softly.tiff',
  references: [
    Models::Shared::StorageReference.new(
      id: 'ab705f3b-e368-4a94-8b22-d5f693c14a76',
      name: 'tamisium viduo odio cauda',
      type: 'accounting_bill',
    ),
    Models::Shared::StorageReference.new(
      id: '9f0f694e-b6f4-4c12-b5f6-ab08d4e81140',
      name: 'quia',
      type: 'accounting_expense',
    ),
  ],
  size: 10_276.0,
  tags: [
    'spoliatio',
  ],
  type: Models::Shared::StorageFileType::FILE,
  updated_at: DateTime.iso8601('2023-01-28T01:02:10.548Z'),
  version: '1',
  web_url: 'https://sandy-distinction.info/',
), connection_id: '<id>')

unless res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `storage_file`                                                                                                                                   | [Models::Shared::StorageFile](../../models/shared/storagefile.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateStorageFileQueryParamFields](../../models/operations/createstoragefilequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateStorageFileResponse)](../../models/operations/createstoragefileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_storage_file

Retrieve a file

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getStorageFile" method="get" path="/storage/{connection_id}/file/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.file.get_storage_file(connection_id: '<id>', id: '<id>')

unless res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the File                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetStorageFileQueryParamFields](../../models/operations/getstoragefilequeryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetStorageFileResponse)](../../models/operations/getstoragefileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_storage_files

List all files

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listStorageFiles" method="get" path="/storage/{connection_id}/file" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListStorageFilesRequest.new(
  connection_id: '<id>',
)

res = s.file.list_storage_files(request: req)

unless res.storage_files.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListStorageFilesRequest](../../models/operations/liststoragefilesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListStorageFilesResponse)](../../models/operations/liststoragefilesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_storage_file

Update a file

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchStorageFile" method="patch" path="/storage/{connection_id}/file/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchStorageFileRequest.new(
  storage_file: Models::Shared::StorageFile.new(
    created_at: DateTime.iso8601('2021-09-12T16:48:23.774Z'),
    data: 'data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSI4MzIiIGhlaWdodD0iMTg2MSI+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0iIzFmYzM1NSIvPjx0ZXh0IHg9IjQxNiIgeT0iOTMwLjUiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+ODMyeDE4NjE8L3RleHQ+PC9zdmc+',
    description: 'Crastinus cupiditate debilito cimentarius virgo.',
    download_url: 'https://stingy-casement.name/',
    hash: 'fe6a659e-75cd-4079-9b76-351f9af2205a',
    id: 'fdda2b99-da4e-4827-a3a4-9a546f1f2b98',
    mime_type: 'FOLDER',
    name: 'softly.tiff',
    references: [
      Models::Shared::StorageReference.new(
        id: 'ab705f3b-e368-4a94-8b22-d5f693c14a76',
        name: 'tamisium viduo odio cauda',
        type: 'accounting_bill',
      ),
      Models::Shared::StorageReference.new(
        id: '9f0f694e-b6f4-4c12-b5f6-ab08d4e81140',
        name: 'quia',
        type: 'accounting_expense',
      ),
    ],
    size: 10_276.0,
    tags: [
      'spoliatio',
    ],
    type: Models::Shared::StorageFileType::FILE,
    updated_at: DateTime.iso8601('2023-01-28T01:02:10.553Z'),
    version: '1',
    web_url: 'https://sandy-distinction.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.file.patch_storage_file(request: req)

unless res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchStorageFileRequest](../../models/operations/patchstoragefilerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchStorageFileResponse)](../../models/operations/patchstoragefileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_storage_file

Remove a file

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeStorageFile" method="delete" path="/storage/{connection_id}/file/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.file.remove_storage_file(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveStorageFileResponse)](../../models/operations/removestoragefileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_storage_file

Update a file

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateStorageFile" method="put" path="/storage/{connection_id}/file/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateStorageFileRequest.new(
  storage_file: Models::Shared::StorageFile.new(
    created_at: DateTime.iso8601('2021-09-12T16:48:23.774Z'),
    data: 'data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgYmFzZVByb2ZpbGU9ImZ1bGwiIHdpZHRoPSI4MzIiIGhlaWdodD0iMTg2MSI+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0iIzFmYzM1NSIvPjx0ZXh0IHg9IjQxNiIgeT0iOTMwLjUiIGZvbnQtc2l6ZT0iMjAiIGFsaWdubWVudC1iYXNlbGluZT0ibWlkZGxlIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmaWxsPSJ3aGl0ZSI+ODMyeDE4NjE8L3RleHQ+PC9zdmc+',
    description: 'Crastinus cupiditate debilito cimentarius virgo.',
    download_url: 'https://stingy-casement.name/',
    hash: 'fe6a659e-75cd-4079-9b76-351f9af2205a',
    id: 'fdda2b99-da4e-4827-a3a4-9a546f1f2b98',
    mime_type: 'FOLDER',
    name: 'softly.tiff',
    references: [
      Models::Shared::StorageReference.new(
        id: 'ab705f3b-e368-4a94-8b22-d5f693c14a76',
        name: 'tamisium viduo odio cauda',
        type: 'accounting_bill',
      ),
      Models::Shared::StorageReference.new(
        id: '9f0f694e-b6f4-4c12-b5f6-ab08d4e81140',
        name: 'quia',
        type: 'accounting_expense',
      ),
    ],
    size: 10_276.0,
    tags: [
      'spoliatio',
    ],
    type: Models::Shared::StorageFileType::FILE,
    updated_at: DateTime.iso8601('2023-01-28T01:02:10.553Z'),
    version: '1',
    web_url: 'https://sandy-distinction.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.file.update_storage_file(request: req)

unless res.storage_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateStorageFileRequest](../../models/operations/updatestoragefilerequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateStorageFileResponse)](../../models/operations/updatestoragefileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |