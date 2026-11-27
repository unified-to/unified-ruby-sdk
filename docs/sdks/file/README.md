# File

## Overview

### Available Operations

* [create_printing_file](#create_printing_file) - Create a file
* [create_storage_file](#create_storage_file) - Create a file
* [get_printing_file](#get_printing_file) - Retrieve a file
* [get_storage_file](#get_storage_file) - Retrieve a file
* [list_printing_files](#list_printing_files) - List all files
* [list_storage_files](#list_storage_files) - List all files
* [patch_storage_file](#patch_storage_file) - Update a file
* [remove_storage_file](#remove_storage_file) - Remove a file
* [update_storage_file](#update_storage_file) - Update a file

## create_printing_file

Creates a PrintingFile. Provide the unified PrintingFile fields in the request body; they are mapped to the provider's API. Returns the created PrintingFile.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPrintingFile" method="post" path="/printing/{connection_id}/file" example="printing_file" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.file.create_printing_file(printing_file: Models::Shared::PrintingFile.new(
  created_at: DateTime.iso8601('2020-10-22T04:25:39.825Z'),
  dpi: 300.0,
  height: 5400.0,
  id: '4513d0e8-9c8f-498b-bbb3-061d8e0561f8',
  metadata: [],
  mime_type: 'image/jpeg',
  name: 'blond-ecliptic.jpg',
  preview_url: 'https://picsum.photos/seed/aATvhmNA/400/400',
  size: 1_956_654.0,
  status: Models::Shared::PrintingFileStatus::READY,
  updated_at: DateTime.iso8601('2020-10-22T04:25:39.825Z'),
  url: 'https://picsum.photos/seed/XBj97B/2783/172',
  width: 4500.0
), connection_id: '<id>')

unless res.printing_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `printing_file`                                                                                                                                  | [Models::Shared::PrintingFile](../../models/shared/printingfile.md)                                                                              | :heavy_check_mark:                                                                                                                               | An artwork or print file in the print vendor file library                                                                                        |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePrintingFileQueryParamFields](../../models/operations/createprintingfilequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePrintingFileResponse)](../../models/operations/createprintingfileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_storage_file

Creates a StorageFile. Provide the unified StorageFile fields in the request body; they are mapped to the provider's API. Returns the created StorageFile.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createStorageFile" method="post" path="/storage/{connection_id}/file" example="storage_file" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.file.create_storage_file(storage_file: Models::Shared::StorageFile.new(
  created_at: DateTime.iso8601('2021-09-12T16:48:23.774Z'),
  description: 'Debilito cimentarius virgo acidus thymbra.',
  download_url: 'https://messy-clamp.net/',
  hash: '9d88dda7bc0acaa8472fdef2307f94a1fc355cef',
  id: '3ee25bdc-2450-45f6-8a6a-09424cd8ed52',
  metadata: [],
  mime_type: 'application/pdf',
  name: 'joshingly.pdf',
  size: 1_134_456.0,
  tags: [
    'derelinquo',
  ],
  type: Models::Shared::StorageFileType::FOLDER,
  updated_at: DateTime.iso8601('2023-02-15T16:27:08.824Z'),
  version: '1',
  web_url: 'https://likable-widow.org/'
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

## get_printing_file

Retrieves a single PrintingFile by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPrintingFile" method="get" path="/printing/{connection_id}/file/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.file.get_printing_file(connection_id: '<id>', id: '<id>')

unless res.printing_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the File                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPrintingFileQueryParamFields](../../models/operations/getprintingfilequeryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPrintingFileResponse)](../../models/operations/getprintingfileresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

## list_printing_files

Returns a list of PrintingFiles. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPrintingFiles" method="get" path="/printing/{connection_id}/file" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListPrintingFilesRequest.new(
  connection_id: '<id>'
)
res = s.file.list_printing_files(request: req)

unless res.printing_files.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListPrintingFilesRequest](../../models/operations/listprintingfilesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListPrintingFilesResponse)](../../models/operations/listprintingfilesresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListStorageFilesRequest.new(
  connection_id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="patchStorageFile" method="patch" path="/storage/{connection_id}/file/{id}" example="storage_file" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchStorageFileRequest.new(
  storage_file: Models::Shared::StorageFile.new(
    created_at: DateTime.iso8601('2021-09-12T16:48:23.774Z'),
    description: 'Debilito cimentarius virgo acidus thymbra.',
    download_url: 'https://messy-clamp.net/',
    hash: '9d88dda7bc0acaa8472fdef2307f94a1fc355cef',
    id: '953912c3-8ca0-4b6f-846e-3b519e79e933',
    metadata: [],
    mime_type: 'application/pdf',
    name: 'joshingly.pdf',
    size: 1_134_456.0,
    tags: [
      'derelinquo',
    ],
    type: Models::Shared::StorageFileType::FOLDER,
    updated_at: DateTime.iso8601('2023-02-15T16:27:08.828Z'),
    version: '1',
    web_url: 'https://likable-widow.org/'
  ),
  connection_id: '<id>',
  id: '<id>'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

<!-- UsageSnippet language="ruby" operationID="updateStorageFile" method="put" path="/storage/{connection_id}/file/{id}" example="storage_file" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateStorageFileRequest.new(
  storage_file: Models::Shared::StorageFile.new(
    created_at: DateTime.iso8601('2021-09-12T16:48:23.774Z'),
    description: 'Debilito cimentarius virgo acidus thymbra.',
    download_url: 'https://messy-clamp.net/',
    hash: '9d88dda7bc0acaa8472fdef2307f94a1fc355cef',
    id: '953912c3-8ca0-4b6f-846e-3b519e79e933',
    metadata: [],
    mime_type: 'application/pdf',
    name: 'joshingly.pdf',
    size: 1_134_456.0,
    tags: [
      'derelinquo',
    ],
    type: Models::Shared::StorageFileType::FOLDER,
    updated_at: DateTime.iso8601('2023-02-15T16:27:08.828Z'),
    version: '1',
    web_url: 'https://likable-widow.org/'
  ),
  connection_id: '<id>',
  id: '<id>'
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