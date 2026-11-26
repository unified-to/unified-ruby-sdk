# Prompt

## Overview

### Available Operations

* [create_genai_prompt](#create_genai_prompt) - Create a prompt

## create_genai_prompt

Creates a GenaiPrompt. Provide the unified GenaiPrompt fields in the request body; they are mapped to the provider's API. Returns the created GenaiPrompt.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createGenaiPrompt" method="post" path="/genai/{connection_id}/prompt" example="genai_prompt" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.prompt.create_genai_prompt(genai_prompt: Models::Shared::GenaiPrompt.new(
  answers: [
    Models::Shared::GenaiAnswer.new(
      confidence: 0.5_384_309_098_590_165,
      id: 'DiYHdUlr',
      probabilities: [
        Models::Shared::GenaiAnswerProbability.new(
          option: 'ulterius',
          probability: 0.05_683_182_482_607_663
        ),
        Models::Shared::GenaiAnswerProbability.new(
          option: 'spiculum',
          probability: 0.1_404_057_613_108_307
        ),
      ],
      score: 0.05_974_147_981_032_729,
      type: Models::Shared::GenaiAnswerType::CHOICE,
      value: 'vilicus'
    ),
  ],
  max_tokens: 0.4_677_782_787_475_735,
  mcp_authorization_token: '45c837a2-ed2d-458f-b4bc-782f4a6b065b',
  mcp_deferred_tools: [],
  mcp_url: 'https://svelte-offset.net',
  messages: [
    Models::Shared::GenaiContent.new(
      content: 'Facere statua depulso speciosus xiphias soleo trepide crinis crapula balbus.',
      images: [],
      role: Models::Shared::Role::ASSISTANT
    ),
    Models::Shared::GenaiContent.new(
      content: 'Circumvenio una demitto ventito chirographum culpo vos cohibeo complectus speciosus.',
      images: [],
      role: Models::Shared::Role::SYSTEM
    ),
  ],
  questions: [
    Models::Shared::GenaiQuestion.new(
      id: '9SIZCOoV',
      instructions: 'Supellex verbera universe.',
      options: [
        'dens',
        'doloribus',
        'degusto',
      ],
      type: Models::Shared::GenaiQuestionType::BOOLEAN
    ),
    Models::Shared::GenaiQuestion.new(
      id: 'gsUyLAAa',
      instructions: 'Amplexus abundans caelestis patrocinor vulgivagus condico adduco tego apostolus.',
      options: [
        'decretum',
        'vesica',
        'amet',
      ],
      type: Models::Shared::GenaiQuestionType::CHOICE
    ),
    Models::Shared::GenaiQuestion.new(
      id: 'Dwh6TeZp',
      instructions: 'Capio somnus pauper summisse veniam comes.',
      options: [
        'depulso',
        'deficio',
        'sustineo',
      ],
      type: Models::Shared::GenaiQuestionType::BOOLEAN
    ),
  ],
  responses: [
    'Vereor pecco avarus derideo sumptus.',
  ],
  temperature: 0.0,
  tokens_used: 975.0
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