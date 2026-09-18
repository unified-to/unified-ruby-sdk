# Prompt
(*prompt*)

## Overview

### Available Operations

* [create_genai_prompt](#create_genai_prompt) - Create a prompt

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

res = s.prompt.create_genai_prompt(genai_prompt: Models::Shared::GenaiPrompt.new(
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