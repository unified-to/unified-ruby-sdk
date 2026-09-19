# Embedding
(*embedding*)

## Overview

### Available Operations

* [create_genai_embedding](#create_genai_embedding) - Create an embedding

## create_genai_embedding

Create an embedding

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createGenaiEmbedding" method="post" path="/genai/{connection_id}/embedding" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.embedding.create_genai_embedding(genai_embedding: Models::Shared::GenaiEmbedding.new(
  content: [
    Models::Shared::GenaiEmbeddingContent.new(
      text: 'Utrimque temptatio pecco demulceo.',
    ),
  ],
  dimension: 423.0,
  embeddings: 'Est.',
  enconding_format: Models::Shared::EncondingFormat::FLOAT,
  id: '11ad29f9-cb1c-4552-a074-0c424cfe5b07',
  max_tokens: 223.0,
  tokens_used: 836.0,
  type: 'classification',
), connection_id: '<id>')

unless res.genai_embedding.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `genai_embedding`                                                                                                                                | [Models::Shared::GenaiEmbedding](../../models/shared/genaiembedding.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateGenaiEmbeddingQueryParamFields](../../models/operations/creategenaiembeddingqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateGenaiEmbeddingResponse)](../../models/operations/creategenaiembeddingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |