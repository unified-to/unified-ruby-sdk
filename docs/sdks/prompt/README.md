# Prompt


### Available Operations

* [create_genai_prompt](#create_genai_prompt) - Create a prompt

## create_genai_prompt

Create a prompt

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.prompt.create_genai_prompt(connection_id="<value>", genai_prompt=::UnifiedRubySDK::Shared::GenaiPrompt.new())

if ! res.genai_prompt.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `genai_prompt`                                                              | [::UnifiedRubySDK::Shared::GenaiPrompt](../../models/shared/genaiprompt.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateGenaiPromptResponse)](../../models/operations/creategenaipromptresponse.md)**

