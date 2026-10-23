# Memory
(*memory*)

## Overview

### Available Operations

* [create_genai_memory](#create_genai_memory) - Create a memory
* [get_genai_memory](#get_genai_memory) - Retrieve a memory
* [list_genai_memories](#list_genai_memories) - List all memories
* [patch_genai_memory](#patch_genai_memory) - Update a memory
* [remove_genai_memory](#remove_genai_memory) - Remove a memory
* [update_genai_memory](#update_genai_memory) - Update a memory

## create_genai_memory

Creates a GenaiMemory. Provide the unified GenaiMemory fields in the request body; they are mapped to the provider's API. Returns the created GenaiMemory.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createGenaiMemory" method="post" path="/genai/{connection_id}/memory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.memory.create_genai_memory(genai_memory: Models::Shared::GenaiMemory.new(
  content: 'Tabella rem approbo spiculum deserunt comitatus despecto. Aveho utroque accedo vinitor repellendus tam curis corona eos vobis. Ullus ager degero deporto cicuta vulgivagus.',
  created_at: DateTime.iso8601('2021-10-22T04:14:41.668Z'),
  id: '30c5b61b-64ce-451b-86ea-0d45e2587196',
  metadata: [
    Models::Shared::GenaiMetadata.new(
      extra_data: {

      },
      format: Models::Shared::GenaiMetadataFormat::TEXT,
      id: '7a8ad62d-ba0e-4ce3-8330-56a2647b5b3e',
      namespace: 'memory',
      slug: 'cribro',
      value: 'aiunt',
    ),
  ],
  name: 'sponte.md',
  type: Models::Shared::GenaiMemoryType::MEMORY,
  updated_at: DateTime.iso8601('2023-04-26T11:52:14.382Z'),
  user_identifier: '9d170613-4338-447d-bdb6-8ea96a2d7513',
), connection_id: '<id>')

unless res.genai_memory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `genai_memory`                                                                                                                                   | [Models::Shared::GenaiMemory](../../models/shared/genaimemory.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateGenaiMemoryQueryParamFields](../../models/operations/creategenaimemoryqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateGenaiMemoryResponse)](../../models/operations/creategenaimemoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_genai_memory

Retrieves a single GenaiMemory by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getGenaiMemory" method="get" path="/genai/{connection_id}/memory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.memory.get_genai_memory(connection_id: '<id>', id: '<id>')

unless res.genai_memory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Memory                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetGenaiMemoryQueryParamFields](../../models/operations/getgenaimemoryqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetGenaiMemoryResponse)](../../models/operations/getgenaimemoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_genai_memories

Returns a list of GenaiMemories. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listGenaiMemories" method="get" path="/genai/{connection_id}/memory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListGenaiMemoriesRequest.new(
  connection_id: '<id>',
)

res = s.memory.list_genai_memories(request: req)

unless res.genai_memories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListGenaiMemoriesRequest](../../models/operations/listgenaimemoriesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListGenaiMemoriesResponse)](../../models/operations/listgenaimemoriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_genai_memory

Updates the GenaiMemory identified by `id`. Provide the unified GenaiMemory fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchGenaiMemory" method="patch" path="/genai/{connection_id}/memory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchGenaiMemoryRequest.new(
  genai_memory: Models::Shared::GenaiMemory.new(
    content: 'Tabella rem approbo spiculum deserunt comitatus despecto. Aveho utroque accedo vinitor repellendus tam curis corona eos vobis. Ullus ager degero deporto cicuta vulgivagus.',
    created_at: DateTime.iso8601('2021-10-22T04:14:41.668Z'),
    id: 'a49fc703-76bd-475c-8c11-b39d565bef31',
    metadata: [
      Models::Shared::GenaiMetadata.new(
        extra_data: {

        },
        format: Models::Shared::GenaiMetadataFormat::TEXT,
        id: '7a8ad62d-ba0e-4ce3-8330-56a2647b5b3e',
        namespace: 'memory',
        slug: 'cribro',
        value: 'aiunt',
      ),
    ],
    name: 'sponte.md',
    type: Models::Shared::GenaiMemoryType::MEMORY,
    updated_at: DateTime.iso8601('2023-04-26T11:52:14.387Z'),
    user_identifier: '9d170613-4338-447d-bdb6-8ea96a2d7513',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.memory.patch_genai_memory(request: req)

unless res.genai_memory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchGenaiMemoryRequest](../../models/operations/patchgenaimemoryrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchGenaiMemoryResponse)](../../models/operations/patchgenaimemoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_genai_memory

Deletes the GenaiMemory identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeGenaiMemory" method="delete" path="/genai/{connection_id}/memory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.memory.remove_genai_memory(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Memory     |

### Response

**[T.nilable(Models::Operations::RemoveGenaiMemoryResponse)](../../models/operations/removegenaimemoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_genai_memory

Updates the GenaiMemory identified by `id`. Provide the unified GenaiMemory fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateGenaiMemory" method="put" path="/genai/{connection_id}/memory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateGenaiMemoryRequest.new(
  genai_memory: Models::Shared::GenaiMemory.new(
    content: 'Tabella rem approbo spiculum deserunt comitatus despecto. Aveho utroque accedo vinitor repellendus tam curis corona eos vobis. Ullus ager degero deporto cicuta vulgivagus.',
    created_at: DateTime.iso8601('2021-10-22T04:14:41.668Z'),
    id: 'a49fc703-76bd-475c-8c11-b39d565bef31',
    metadata: [
      Models::Shared::GenaiMetadata.new(
        extra_data: {

        },
        format: Models::Shared::GenaiMetadataFormat::TEXT,
        id: '7a8ad62d-ba0e-4ce3-8330-56a2647b5b3e',
        namespace: 'memory',
        slug: 'cribro',
        value: 'aiunt',
      ),
    ],
    name: 'sponte.md',
    type: Models::Shared::GenaiMemoryType::MEMORY,
    updated_at: DateTime.iso8601('2023-04-26T11:52:14.387Z'),
    user_identifier: '9d170613-4338-447d-bdb6-8ea96a2d7513',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.memory.update_genai_memory(request: req)

unless res.genai_memory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateGenaiMemoryRequest](../../models/operations/updategenaimemoryrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateGenaiMemoryResponse)](../../models/operations/updategenaimemoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |