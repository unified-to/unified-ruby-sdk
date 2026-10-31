# Genai
(*genai*)

## Overview

### Available Operations

* [create_genai_agent](#create_genai_agent) - Create an agent
* [create_genai_embedding](#create_genai_embedding) - Create an embedding
* [create_genai_memory](#create_genai_memory) - Create a memory
* [create_genai_organization](#create_genai_organization) - Create an organization
* [create_genai_prompt](#create_genai_prompt) - Create a prompt
* [create_genai_task](#create_genai_task) - Create a task
* [get_genai_agent](#get_genai_agent) - Retrieve an agent
* [get_genai_memory](#get_genai_memory) - Retrieve a memory
* [get_genai_model](#get_genai_model) - Retrieve a model
* [get_genai_organization](#get_genai_organization) - Retrieve an organization
* [get_genai_skill](#get_genai_skill) - Retrieve a skill
* [get_genai_task](#get_genai_task) - Retrieve a task
* [list_genai_agents](#list_genai_agents) - List all agents
* [list_genai_memories](#list_genai_memories) - List all memories
* [list_genai_models](#list_genai_models) - List all models
* [list_genai_organizations](#list_genai_organizations) - List all organizations
* [list_genai_skills](#list_genai_skills) - List all skills
* [list_genai_tasks](#list_genai_tasks) - List all tasks
* [patch_genai_agent](#patch_genai_agent) - Update an agent
* [patch_genai_memory](#patch_genai_memory) - Update a memory
* [patch_genai_organization](#patch_genai_organization) - Update an organization
* [patch_genai_task](#patch_genai_task) - Update a task
* [remove_genai_agent](#remove_genai_agent) - Remove an agent
* [remove_genai_memory](#remove_genai_memory) - Remove a memory
* [remove_genai_organization](#remove_genai_organization) - Remove an organization
* [remove_genai_skill](#remove_genai_skill) - Remove a skill
* [remove_genai_task](#remove_genai_task) - Remove a task
* [update_genai_agent](#update_genai_agent) - Update an agent
* [update_genai_memory](#update_genai_memory) - Update a memory
* [update_genai_organization](#update_genai_organization) - Update an organization
* [update_genai_task](#update_genai_task) - Update a task

## create_genai_agent

Creates a GenaiAgent. Provide the unified GenaiAgent fields in the request body; they are mapped to the provider's API. Returns the created GenaiAgent.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createGenaiAgent" method="post" path="/genai/{connection_id}/agent" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.create_genai_agent(genai_agent: Models::Shared::GenaiAgent.new(
  created_at: DateTime.iso8601('2020-12-18T02:23:33.723Z'),
  description: 'Assentator tero sequi.',
  id: '0013a51c-5f54-48b9-b56b-764fd04cbaed',
  instructions: 'Delicate tabella addo vita ver auctus corrumpo. Conscendo auctus maiores astrum sulum aufero bis stella. Non varius sto solus admitto vado suggero theatrum.',
  is_active: false,
  name: 'daughter with',
  updated_at: DateTime.iso8601('2025-10-23T15:01:20.892Z'),
), connection_id: '<id>')

unless res.genai_agent.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `genai_agent`                                                                                                                                    | [Models::Shared::GenaiAgent](../../models/shared/genaiagent.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateGenaiAgentQueryParamFields](../../models/operations/creategenaiagentqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateGenaiAgentResponse)](../../models/operations/creategenaiagentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_genai_embedding

Creates a GenaiEmbedding. Provide the unified GenaiEmbedding fields in the request body; they are mapped to the provider's API. Returns the created GenaiEmbedding.

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
  id: 'c8401ed3-dc3c-4dcb-badc-81fde6d28e4b',
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

res = s.genai.create_genai_memory(genai_memory: Models::Shared::GenaiMemory.new(
  content: 'Tabella rem approbo spiculum deserunt comitatus despecto. Aveho utroque accedo vinitor repellendus tam curis corona eos vobis. Ullus ager degero deporto cicuta vulgivagus.',
  created_at: DateTime.iso8601('2021-10-22T04:14:41.668Z'),
  id: '336f9f49-cb4d-4abd-ad8f-51cd49bf8f3a',
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
  updated_at: DateTime.iso8601('2023-04-28T21:09:12.712Z'),
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

## create_genai_organization

Creates a GenaiOrganization. Provide the unified GenaiOrganization fields in the request body; they are mapped to the provider's API. Returns the created GenaiOrganization.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createGenaiOrganization" method="post" path="/genai/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.create_genai_organization(genai_organization: Models::Shared::GenaiOrganization.new(
  created_at: DateTime.iso8601('2020-10-27T16:03:47.122Z'),
  description: 'Voluptates abeo subseco.',
  id: '8a7d9a66-f0a8-4de4-80fd-b0fdb2ba8166',
  is_active: false,
  name: 'officially about',
  updated_at: DateTime.iso8601('2023-01-30T03:52:43.731Z'),
), connection_id: '<id>')

unless res.genai_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `genai_organization`                                                                                                                             | [Models::Shared::GenaiOrganization](../../models/shared/genaiorganization.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateGenaiOrganizationQueryParamFields](../../models/operations/creategenaiorganizationqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateGenaiOrganizationResponse)](../../models/operations/creategenaiorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_genai_prompt

Creates a GenaiPrompt. Provide the unified GenaiPrompt fields in the request body; they are mapped to the provider's API. Returns the created GenaiPrompt.

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
  answers: [
    Models::Shared::GenaiAnswer.new(
      confidence: 0.5_384_309_098_590_165,
      id: 'TeZpueFB',
      probabilities: [
        Models::Shared::GenaiAnswerProbability.new(
          option: 'veniam',
          probability: 0.05_683_182_482_607_663,
        ),
        Models::Shared::GenaiAnswerProbability.new(
          option: 'comes',
          probability: 0.1_404_057_613_108_307,
        ),
      ],
      score: 0.05_974_147_981_032_729,
      type: Models::Shared::GenaiAnswerType::CHOICE,
      value: 'summisse',
    ),
  ],
  max_tokens: 0.4_677_782_787_475_735,
  mcp_authorization_token: 'f45a6e93-7bed-49b4-a5c8-37a2ed2d58f4',
  mcp_deferred_tools: [],
  mcp_url: 'https://unsung-dusk.info/',
  messages: [
    Models::Shared::GenaiContent.new(
      content: 'Aegre repudiandae verecundia facere statua.',
      images: [],
      role: Models::Shared::Role::ASSISTANT,
    ),
    Models::Shared::GenaiContent.new(
      content: 'Speciosus xiphias soleo trepide crinis.',
      images: [],
      role: Models::Shared::Role::SYSTEM,
    ),
  ],
  questions: [
    Models::Shared::GenaiQuestion.new(
      id: 'KtvbYiEq',
      instructions: 'Admiratio cura contabesco subvenio venustas architecto vacuus summopere.',
      options: [
        'vulnero',
        'quasi',
        'tolero',
      ],
      type: Models::Shared::GenaiQuestionType::BOOLEAN,
    ),
    Models::Shared::GenaiQuestion.new(
      id: 'oV6IURtv',
      instructions: 'Celer deleniti ventus ipsam tendo odit.',
      options: [
        'nulla',
        'aspicio',
        'tero',
      ],
      type: Models::Shared::GenaiQuestionType::CHOICE,
    ),
    Models::Shared::GenaiQuestion.new(
      id: '60dBZk2K',
      instructions: 'Decretum vesica amet repudiandae.',
      options: [
        'ducimus',
        'civis',
        'alter',
      ],
      type: Models::Shared::GenaiQuestionType::BOOLEAN,
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

## create_genai_task

Creates a GenaiTask. Provide the unified GenaiTask fields in the request body; they are mapped to the provider's API. Returns the created GenaiTask.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createGenaiTask" method="post" path="/genai/{connection_id}/task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.create_genai_task(genai_task: Models::Shared::GenaiTask.new(
  completed_at: DateTime.iso8601('2025-10-09T10:21:49.215Z'),
  created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
  files_changed: 19.0,
  id: '96b518e2-356c-4ee6-bf39-a239d45df226',
  instructions: 'Benigne canonicus officiis solvo adsidue deleo angustus.',
  lines_added: 244.0,
  lines_deleted: 118.0,
  messages: [
    Models::Shared::GenaiContent.new(
      content: 'Stultus esse cursim stabilis tenetur amet contigo tristis.',
      images: [],
      role: Models::Shared::Role::ASSISTANT,
    ),
  ],
  name: 'connect multi-byte port',
  pullrequest_url: 'https://github.com/berenice.satterfield/joshingly-ignorance/pull/383',
  repo_url: 'https://github.com/berenice.satterfield/joshingly-ignorance',
  source_branch_identifier: 'main',
  started_at: DateTime.iso8601('2024-05-27T08:06:31.873Z'),
  status: Models::Shared::GenaiTaskStatus::BLOCKED,
  summary: 'Cur aeternus cogito vesper.',
  target_branch_identifier: 'agent/joshingly-ignorance',
  tokens_used: 2165.0,
  updated_at: DateTime.iso8601('2023-03-02T03:57:53.310Z'),
  web_url: 'https://inexperienced-adrenalin.biz/',
), connection_id: '<id>')

unless res.genai_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `genai_task`                                                                                                                                     | [Models::Shared::GenaiTask](../../models/shared/genaitask.md)                                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateGenaiTaskQueryParamFields](../../models/operations/creategenaitaskqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateGenaiTaskResponse)](../../models/operations/creategenaitaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_genai_agent

Retrieves a single GenaiAgent by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getGenaiAgent" method="get" path="/genai/{connection_id}/agent/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.get_genai_agent(connection_id: '<id>', id: '<id>')

unless res.genai_agent.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Agent                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetGenaiAgentQueryParamFields](../../models/operations/getgenaiagentqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetGenaiAgentResponse)](../../models/operations/getgenaiagentresponse.md)**

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

res = s.genai.get_genai_memory(connection_id: '<id>', id: '<id>')

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

## get_genai_model

Retrieves a single GenaiModel by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

## get_genai_organization

Retrieves a single GenaiOrganization by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getGenaiOrganization" method="get" path="/genai/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.get_genai_organization(connection_id: '<id>', id: '<id>')

unless res.genai_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Organization                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetGenaiOrganizationQueryParamFields](../../models/operations/getgenaiorganizationqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetGenaiOrganizationResponse)](../../models/operations/getgenaiorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_genai_skill

Retrieves a single GenaiSkill by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getGenaiSkill" method="get" path="/genai/{connection_id}/skill/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.get_genai_skill(connection_id: '<id>', id: '<id>')

unless res.genai_skill.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Skill                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetGenaiSkillQueryParamFields](../../models/operations/getgenaiskillqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetGenaiSkillResponse)](../../models/operations/getgenaiskillresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_genai_task

Retrieves a single GenaiTask by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getGenaiTask" method="get" path="/genai/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.get_genai_task(connection_id: '<id>', id: '<id>')

unless res.genai_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Task                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetGenaiTaskQueryParamFields](../../models/operations/getgenaitaskqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetGenaiTaskResponse)](../../models/operations/getgenaitaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_genai_agents

Returns a list of GenaiAgents. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listGenaiAgents" method="get" path="/genai/{connection_id}/agent" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListGenaiAgentsRequest.new(
  connection_id: '<id>',
)

res = s.genai.list_genai_agents(request: req)

unless res.genai_agents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListGenaiAgentsRequest](../../models/operations/listgenaiagentsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListGenaiAgentsResponse)](../../models/operations/listgenaiagentsresponse.md)**

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

res = s.genai.list_genai_memories(request: req)

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

## list_genai_models

Returns a list of GenaiModels. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

## list_genai_organizations

Returns a list of GenaiOrganizations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listGenaiOrganizations" method="get" path="/genai/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListGenaiOrganizationsRequest.new(
  connection_id: '<id>',
)

res = s.genai.list_genai_organizations(request: req)

unless res.genai_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListGenaiOrganizationsRequest](../../models/operations/listgenaiorganizationsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListGenaiOrganizationsResponse)](../../models/operations/listgenaiorganizationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_genai_skills

Returns a list of GenaiSkills. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listGenaiSkills" method="get" path="/genai/{connection_id}/skill" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListGenaiSkillsRequest.new(
  connection_id: '<id>',
)

res = s.genai.list_genai_skills(request: req)

unless res.genai_skills.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListGenaiSkillsRequest](../../models/operations/listgenaiskillsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListGenaiSkillsResponse)](../../models/operations/listgenaiskillsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_genai_tasks

Returns a list of GenaiTasks. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listGenaiTasks" method="get" path="/genai/{connection_id}/task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListGenaiTasksRequest.new(
  connection_id: '<id>',
)

res = s.genai.list_genai_tasks(request: req)

unless res.genai_tasks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListGenaiTasksRequest](../../models/operations/listgenaitasksrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListGenaiTasksResponse)](../../models/operations/listgenaitasksresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_genai_agent

Updates the GenaiAgent identified by `id`. Provide the unified GenaiAgent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchGenaiAgent" method="patch" path="/genai/{connection_id}/agent/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchGenaiAgentRequest.new(
  genai_agent: Models::Shared::GenaiAgent.new(
    created_at: DateTime.iso8601('2020-12-18T02:23:33.723Z'),
    description: 'Assentator tero sequi.',
    id: 'b5ed6513-0c32-4ab7-abbb-6387d18aaaa7',
    instructions: 'Delicate tabella addo vita ver auctus corrumpo. Conscendo auctus maiores astrum sulum aufero bis stella. Non varius sto solus admitto vado suggero theatrum.',
    is_active: false,
    name: 'daughter with',
    updated_at: DateTime.iso8601('2025-10-23T15:01:20.896Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.genai.patch_genai_agent(request: req)

unless res.genai_agent.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchGenaiAgentRequest](../../models/operations/patchgenaiagentrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchGenaiAgentResponse)](../../models/operations/patchgenaiagentresponse.md)**

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
    id: '23a5c04a-ce25-46a6-bf04-bc6fccc7a8c8',
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
    updated_at: DateTime.iso8601('2023-04-28T21:09:12.715Z'),
    user_identifier: '9d170613-4338-447d-bdb6-8ea96a2d7513',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.genai.patch_genai_memory(request: req)

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

## patch_genai_organization

Updates the GenaiOrganization identified by `id`. Provide the unified GenaiOrganization fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchGenaiOrganization" method="patch" path="/genai/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchGenaiOrganizationRequest.new(
  genai_organization: Models::Shared::GenaiOrganization.new(
    created_at: DateTime.iso8601('2020-10-27T16:03:47.122Z'),
    description: 'Voluptates abeo subseco.',
    id: '79bb78ea-c18c-40df-9d65-e2f283b3e2c4',
    is_active: false,
    name: 'officially about',
    updated_at: DateTime.iso8601('2023-01-30T03:52:43.734Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.genai.patch_genai_organization(request: req)

unless res.genai_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchGenaiOrganizationRequest](../../models/operations/patchgenaiorganizationrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchGenaiOrganizationResponse)](../../models/operations/patchgenaiorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_genai_task

Updates the GenaiTask identified by `id`. Provide the unified GenaiTask fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchGenaiTask" method="patch" path="/genai/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchGenaiTaskRequest.new(
  genai_task: Models::Shared::GenaiTask.new(
    completed_at: DateTime.iso8601('2025-10-09T10:21:49.226Z'),
    created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
    files_changed: 19.0,
    id: '7edc9a37-1c4b-4c06-8313-ee63fce4ae8c',
    instructions: 'Benigne canonicus officiis solvo adsidue deleo angustus.',
    lines_added: 244.0,
    lines_deleted: 118.0,
    messages: [
      Models::Shared::GenaiContent.new(
        content: 'Stultus esse cursim stabilis tenetur amet contigo tristis.',
        images: [],
        role: Models::Shared::Role::ASSISTANT,
      ),
    ],
    name: 'connect multi-byte port',
    pullrequest_url: 'https://github.com/berenice.satterfield/joshingly-ignorance/pull/383',
    repo_url: 'https://github.com/berenice.satterfield/joshingly-ignorance',
    source_branch_identifier: 'main',
    started_at: DateTime.iso8601('2024-05-27T08:06:31.881Z'),
    status: Models::Shared::GenaiTaskStatus::BLOCKED,
    summary: 'Cur aeternus cogito vesper.',
    target_branch_identifier: 'agent/joshingly-ignorance',
    tokens_used: 2165.0,
    updated_at: DateTime.iso8601('2023-03-02T03:57:53.316Z'),
    web_url: 'https://inexperienced-adrenalin.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.genai.patch_genai_task(request: req)

unless res.genai_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchGenaiTaskRequest](../../models/operations/patchgenaitaskrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchGenaiTaskResponse)](../../models/operations/patchgenaitaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_genai_agent

Deletes the GenaiAgent identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeGenaiAgent" method="delete" path="/genai/{connection_id}/agent/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.remove_genai_agent(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Agent      |

### Response

**[T.nilable(Models::Operations::RemoveGenaiAgentResponse)](../../models/operations/removegenaiagentresponse.md)**

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

res = s.genai.remove_genai_memory(connection_id: '<id>', id: '<id>')

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

## remove_genai_organization

Deletes the GenaiOrganization identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeGenaiOrganization" method="delete" path="/genai/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.remove_genai_organization(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Organization |

### Response

**[T.nilable(Models::Operations::RemoveGenaiOrganizationResponse)](../../models/operations/removegenaiorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_genai_skill

Deletes the GenaiSkill identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeGenaiSkill" method="delete" path="/genai/{connection_id}/skill/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.remove_genai_skill(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Skill      |

### Response

**[T.nilable(Models::Operations::RemoveGenaiSkillResponse)](../../models/operations/removegenaiskillresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_genai_task

Deletes the GenaiTask identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeGenaiTask" method="delete" path="/genai/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.genai.remove_genai_task(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Task       |

### Response

**[T.nilable(Models::Operations::RemoveGenaiTaskResponse)](../../models/operations/removegenaitaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_genai_agent

Updates the GenaiAgent identified by `id`. Provide the unified GenaiAgent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateGenaiAgent" method="put" path="/genai/{connection_id}/agent/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateGenaiAgentRequest.new(
  genai_agent: Models::Shared::GenaiAgent.new(
    created_at: DateTime.iso8601('2020-12-18T02:23:33.723Z'),
    description: 'Assentator tero sequi.',
    id: 'b5ed6513-0c32-4ab7-abbb-6387d18aaaa7',
    instructions: 'Delicate tabella addo vita ver auctus corrumpo. Conscendo auctus maiores astrum sulum aufero bis stella. Non varius sto solus admitto vado suggero theatrum.',
    is_active: false,
    name: 'daughter with',
    updated_at: DateTime.iso8601('2025-10-23T15:01:20.896Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.genai.update_genai_agent(request: req)

unless res.genai_agent.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateGenaiAgentRequest](../../models/operations/updategenaiagentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateGenaiAgentResponse)](../../models/operations/updategenaiagentresponse.md)**

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
    id: '23a5c04a-ce25-46a6-bf04-bc6fccc7a8c8',
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
    updated_at: DateTime.iso8601('2023-04-28T21:09:12.715Z'),
    user_identifier: '9d170613-4338-447d-bdb6-8ea96a2d7513',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.genai.update_genai_memory(request: req)

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

## update_genai_organization

Updates the GenaiOrganization identified by `id`. Provide the unified GenaiOrganization fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateGenaiOrganization" method="put" path="/genai/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateGenaiOrganizationRequest.new(
  genai_organization: Models::Shared::GenaiOrganization.new(
    created_at: DateTime.iso8601('2020-10-27T16:03:47.122Z'),
    description: 'Voluptates abeo subseco.',
    id: '79bb78ea-c18c-40df-9d65-e2f283b3e2c4',
    is_active: false,
    name: 'officially about',
    updated_at: DateTime.iso8601('2023-01-30T03:52:43.734Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.genai.update_genai_organization(request: req)

unless res.genai_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateGenaiOrganizationRequest](../../models/operations/updategenaiorganizationrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateGenaiOrganizationResponse)](../../models/operations/updategenaiorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_genai_task

Updates the GenaiTask identified by `id`. Provide the unified GenaiTask fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateGenaiTask" method="put" path="/genai/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateGenaiTaskRequest.new(
  genai_task: Models::Shared::GenaiTask.new(
    completed_at: DateTime.iso8601('2025-10-09T10:21:49.226Z'),
    created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
    files_changed: 19.0,
    id: '7edc9a37-1c4b-4c06-8313-ee63fce4ae8c',
    instructions: 'Benigne canonicus officiis solvo adsidue deleo angustus.',
    lines_added: 244.0,
    lines_deleted: 118.0,
    messages: [
      Models::Shared::GenaiContent.new(
        content: 'Stultus esse cursim stabilis tenetur amet contigo tristis.',
        images: [],
        role: Models::Shared::Role::ASSISTANT,
      ),
    ],
    name: 'connect multi-byte port',
    pullrequest_url: 'https://github.com/berenice.satterfield/joshingly-ignorance/pull/383',
    repo_url: 'https://github.com/berenice.satterfield/joshingly-ignorance',
    source_branch_identifier: 'main',
    started_at: DateTime.iso8601('2024-05-27T08:06:31.881Z'),
    status: Models::Shared::GenaiTaskStatus::BLOCKED,
    summary: 'Cur aeternus cogito vesper.',
    target_branch_identifier: 'agent/joshingly-ignorance',
    tokens_used: 2165.0,
    updated_at: DateTime.iso8601('2023-03-02T03:57:53.316Z'),
    web_url: 'https://inexperienced-adrenalin.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.genai.update_genai_task(request: req)

unless res.genai_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateGenaiTaskRequest](../../models/operations/updategenaitaskrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateGenaiTaskResponse)](../../models/operations/updategenaitaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |