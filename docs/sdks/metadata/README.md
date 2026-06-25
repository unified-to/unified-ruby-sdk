# Metadata
(*metadata*)

## Overview

### Available Operations

* [create_metadata_metadata2](#create_metadata_metadata2) - Create a metadata
* [get_metadata_metadata2](#get_metadata_metadata2) - Retrieve a metadata
* [list_metadata_metadatas2](#list_metadata_metadatas2) - List all metadatas
* [patch_metadata_metadata2](#patch_metadata_metadata2) - Update a metadata
* [remove_metadata_metadata2](#remove_metadata_metadata2) - Remove a metadata
* [update_metadata_metadata2](#update_metadata_metadata2) - Update a metadata

## create_metadata_metadata2

Create a metadata

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createMetadataMetadata2" method="post" path="/metadata/{connection_id}/metadata" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.metadata.create_metadata_metadata2(metadata_metadata: Models::Shared::MetadataMetadata.new(
  name: '<value>',
  object_type: '<value>',
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
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateMetadataMetadata2QueryParamFields](../../models/operations/createmetadatametadata2queryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateMetadataMetadata2Response)](../../models/operations/createmetadatametadata2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_metadata_metadata2

Retrieve a metadata

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getMetadataMetadata2" method="get" path="/metadata/{connection_id}/metadata/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.metadata.get_metadata_metadata2(connection_id: '<id>', id: '<id>')

unless res.metadata_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Metadata                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetMetadataMetadata2QueryParamFields](../../models/operations/getmetadatametadata2queryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetMetadataMetadata2Response)](../../models/operations/getmetadatametadata2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_metadata_metadatas2

List all metadatas

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listMetadataMetadatas2" method="get" path="/metadata/{connection_id}/metadata" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListMetadataMetadatas2Request.new(
  connection_id: '<id>',
)

res = s.metadata.list_metadata_metadatas2(request: req)

unless res.metadata_metadatas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListMetadataMetadatas2Request](../../models/operations/listmetadatametadatas2request.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListMetadataMetadatas2Response)](../../models/operations/listmetadatametadatas2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_metadata_metadata2

Update a metadata

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchMetadataMetadata2" method="patch" path="/metadata/{connection_id}/metadata/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchMetadataMetadata2Request.new(
  metadata_metadata: Models::Shared::MetadataMetadata.new(
    name: '<value>',
    object_type: '<value>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.metadata.patch_metadata_metadata2(request: req)

unless res.metadata_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchMetadataMetadata2Request](../../models/operations/patchmetadatametadata2request.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchMetadataMetadata2Response)](../../models/operations/patchmetadatametadata2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_metadata_metadata2

Remove a metadata

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeMetadataMetadata2" method="delete" path="/metadata/{connection_id}/metadata/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.metadata.remove_metadata_metadata2(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveMetadataMetadata2Response)](../../models/operations/removemetadatametadata2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_metadata_metadata2

Update a metadata

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateMetadataMetadata2" method="put" path="/metadata/{connection_id}/metadata/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateMetadataMetadata2Request.new(
  metadata_metadata: Models::Shared::MetadataMetadata.new(
    name: '<value>',
    object_type: '<value>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.metadata.update_metadata_metadata2(request: req)

unless res.metadata_metadata.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateMetadataMetadata2Request](../../models/operations/updatemetadatametadata2request.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateMetadataMetadata2Response)](../../models/operations/updatemetadatametadata2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |