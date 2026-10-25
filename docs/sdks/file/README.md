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

Creates a StorageFile. Provide the unified StorageFile fields in the request body; they are mapped to the provider's API. Returns the created StorageFile.

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
  description: 'Deprimo crastinus cupiditate debilito cimentarius virgo acidus.',
  download_url: 'https://clueless-laughter.biz',
  hash: 'd9d88dda7bc0acaa8472fdef2307f94a1fc355ce',
  id: '83f5450e-0b4e-4bca-b730-908b8a6041e8',
  metadata: [],
  mime_type: 'application/pdf',
  name: 'softly.pdf',
  size: 1_134_456.0,
  tags: [
    'suasoria',
  ],
  type: Models::Shared::StorageFileType::FOLDER,
  updated_at: DateTime.iso8601('2023-02-06T15:10:23.962Z'),
  version: '1',
  web_url: 'https://faraway-inspection.org',
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

Retrieves a single StorageFile by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Returns a list of StorageFiles. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Updates the StorageFile identified by `id`. Provide the unified StorageFile fields to change in the request body.

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
    description: 'Deprimo crastinus cupiditate debilito cimentarius virgo acidus.',
    download_url: 'https://clueless-laughter.biz',
    hash: 'd9d88dda7bc0acaa8472fdef2307f94a1fc355ce',
    id: 'd230752b-88e4-48bf-bffa-2fdee0dc4668',
    metadata: [],
    mime_type: 'application/pdf',
    name: 'softly.pdf',
    size: 1_134_456.0,
    tags: [
      'suasoria',
    ],
    type: Models::Shared::StorageFileType::FOLDER,
    updated_at: DateTime.iso8601('2023-02-06T15:10:23.967Z'),
    version: '1',
    web_url: 'https://faraway-inspection.org',
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

Deletes the StorageFile identified by `id`.

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

Updates the StorageFile identified by `id`. Provide the unified StorageFile fields to change in the request body.

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
    description: 'Deprimo crastinus cupiditate debilito cimentarius virgo acidus.',
    download_url: 'https://clueless-laughter.biz',
    hash: 'd9d88dda7bc0acaa8472fdef2307f94a1fc355ce',
    id: 'd230752b-88e4-48bf-bffa-2fdee0dc4668',
    metadata: [],
    mime_type: 'application/pdf',
    name: 'softly.pdf',
    size: 1_134_456.0,
    tags: [
      'suasoria',
    ],
    type: Models::Shared::StorageFileType::FOLDER,
    updated_at: DateTime.iso8601('2023-02-06T15:10:23.967Z'),
    version: '1',
    web_url: 'https://faraway-inspection.org',
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