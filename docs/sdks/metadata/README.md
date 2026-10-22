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

Creates a MetadataMetadata. Provide the unified MetadataMetadata fields in the request body; they are mapped to the provider's API. Returns the created MetadataMetadata.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createMetadataMetadata" method="post" path="/metadata/{connection_id}/metadata" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.metadata.create_metadata_metadata(metadata_metadata: Models::Shared::MetadataMetadata.new(
  created_at: DateTime.iso8601('2021-03-25T03:02:17.656Z'),
  format: Models::Shared::MetadataMetadataFormat::PRICE,
  id: '4eaedcd1-462a-4103-9427-61bfc67e9a06',
  is_required: false,
  name: 'autem',
  object_type: 'social_review',
  objects: {

  },
  options: [],
  original_format: 'advoco',
  slug: 'arbustum',
  updated_at: DateTime.iso8601('2025-03-22T16:12:57.104Z'),
), connection_id: '<id>')

unless res.metadata_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `metadata_metadata`                                                                                                                              | [Models::Shared::MetadataMetadata](../../models/shared/metadatametadata.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateMetadataMetadataQueryParamFields](../../models/operations/createmetadatametadataqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateMetadataMetadataResponse)](../../models/operations/createmetadatametadataresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_metadata_metadata

Retrieves a single MetadataMetadata by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getMetadataMetadata" method="get" path="/metadata/{connection_id}/metadata/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.metadata.get_metadata_metadata(connection_id: '<id>', id: '<id>')

unless res.metadata_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Metadata                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetMetadataMetadataQueryParamFields](../../models/operations/getmetadatametadataqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetMetadataMetadataResponse)](../../models/operations/getmetadatametadataresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_metadata_metadatas

Returns a list of MetadataMetadatas. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listMetadataMetadatas" method="get" path="/metadata/{connection_id}/metadata" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListMetadataMetadatasRequest.new(
  connection_id: '<id>',
)

res = s.metadata.list_metadata_metadatas(request: req)

unless res.metadata_metadatas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListMetadataMetadatasRequest](../../models/operations/listmetadatametadatasrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListMetadataMetadatasResponse)](../../models/operations/listmetadatametadatasresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_metadata_metadata

Updates the MetadataMetadata identified by `id`. Provide the unified MetadataMetadata fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchMetadataMetadata" method="patch" path="/metadata/{connection_id}/metadata/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchMetadataMetadataRequest.new(
  metadata_metadata: Models::Shared::MetadataMetadata.new(
    created_at: DateTime.iso8601('2021-03-25T03:02:17.656Z'),
    format: Models::Shared::MetadataMetadataFormat::PRICE,
    id: '2d55f06c-b5a3-4bcc-8c9f-8019ba671c05',
    is_required: false,
    name: 'autem',
    object_type: 'social_review',
    objects: {

    },
    options: [],
    original_format: 'advoco',
    slug: 'arbustum',
    updated_at: DateTime.iso8601('2025-03-22T16:12:57.114Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.metadata.patch_metadata_metadata(request: req)

unless res.metadata_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchMetadataMetadataRequest](../../models/operations/patchmetadatametadatarequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchMetadataMetadataResponse)](../../models/operations/patchmetadatametadataresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_metadata_metadata

Deletes the MetadataMetadata identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeMetadataMetadata" method="delete" path="/metadata/{connection_id}/metadata/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.metadata.remove_metadata_metadata(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveMetadataMetadataResponse)](../../models/operations/removemetadatametadataresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_metadata_metadata

Updates the MetadataMetadata identified by `id`. Provide the unified MetadataMetadata fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateMetadataMetadata" method="put" path="/metadata/{connection_id}/metadata/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateMetadataMetadataRequest.new(
  metadata_metadata: Models::Shared::MetadataMetadata.new(
    created_at: DateTime.iso8601('2021-03-25T03:02:17.656Z'),
    format: Models::Shared::MetadataMetadataFormat::PRICE,
    id: '2d55f06c-b5a3-4bcc-8c9f-8019ba671c05',
    is_required: false,
    name: 'autem',
    object_type: 'social_review',
    objects: {

    },
    options: [],
    original_format: 'advoco',
    slug: 'arbustum',
    updated_at: DateTime.iso8601('2025-03-22T16:12:57.114Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.metadata.update_metadata_metadata(request: req)

unless res.metadata_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateMetadataMetadataRequest](../../models/operations/updatemetadatametadatarequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateMetadataMetadataResponse)](../../models/operations/updatemetadatametadataresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |