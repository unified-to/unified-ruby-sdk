# Genai
(*genai*)

## Overview

### Available Operations

* [create_genai_embedding](#create_genai_embedding) - Create an embedding
* [create_genai_prompt](#create_genai_prompt) - Create a prompt
* [get_genai_model](#get_genai_model) - Retrieve a model
* [list_genai_models](#list_genai_models) - List all models

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

res = s.genai.create_genai_embedding(genai_embedding: Models::Shared::GenaiEmbedding.new(
  content: [
    Models::Shared::GenaiEmbeddingContent.new(
      text: 'Utrimque temptatio pecco demulceo.',
    ),
  ],
  dimension: 423.0,
  embeddings: 'Est.',
  enconding_format: Models::Shared::EncondingFormat::FLOAT,
  id: '739d0d3c-8595-43bd-860d-f293570b2047',
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

## create_genai_prompt

Create a prompt

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createGenaiPrompt" method="post" path="/genai/{connection_id}/prompt" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.create_genai_prompt(genai_prompt: Models::Shared::GenaiPrompt.new(
  max_tokens: 0.4_677_782_787_475_735,
  mcp_authorization_token: 'f45a6e93-7bed-49b4-a5c8-37a2ed2d58f4',
  mcp_deferred_tools: [],
  mcp_url: 'https://unsung-dusk.info/',
  messages: [
    Models::Shared::GenaiContent.new(
      content: 'Aegre repudiandae verecundia facere statua.',
      role: Models::Shared::Role::ASSISTANT,
    ),
    Models::Shared::GenaiContent.new(
      content: 'Speciosus xiphias soleo trepide crinis.',
      role: Models::Shared::Role::SYSTEM,
    ),
  ],
  responses: [
    'Balbus vobis circumvenio una.',
  ],
  temperature: 0.0,
  tokens_used: 975.0,
), connection_id: '<id>')

unless res.genai_prompt.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `genai_prompt`                                                                                                                                   | [Models::Shared::GenaiPrompt](../../models/shared/genaiprompt.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateGenaiPromptQueryParamFields](../../models/operations/creategenaipromptqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateGenaiPromptResponse)](../../models/operations/creategenaipromptresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_genai_model

Retrieve a model

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getGenaiModel" method="get" path="/genai/{connection_id}/model/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.get_genai_model(connection_id: '<id>', id: '<id>')

unless res.genai_model.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Model                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetGenaiModelQueryParamFields](../../models/operations/getgenaimodelqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetGenaiModelResponse)](../../models/operations/getgenaimodelresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_genai_models

List all models

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listGenaiModels" method="get" path="/genai/{connection_id}/model" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListGenaiModelsRequest.new(
  connection_id: '<id>',
)

res = s.genai.list_genai_models(request: req)

unless res.genai_models.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListGenaiModelsRequest](../../models/operations/listgenaimodelsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListGenaiModelsResponse)](../../models/operations/listgenaimodelsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |