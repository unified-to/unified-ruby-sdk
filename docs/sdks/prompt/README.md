# Prompt
(*prompt*)

## Overview

### Available Operations

* [create_genai_prompt](#create_genai_prompt) - Create a prompt

## create_genai_prompt

Create a prompt

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.prompt.create_genai_prompt(genai_prompt=Models::Shared::GenaiPrompt.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.genai_prompt.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `genai_prompt`                                                    | [Models::Shared::GenaiPrompt](../../models/shared/genaiprompt.md) | :heavy_check_mark:                                                | N/A                                                               |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `fields_`                                                         | T::Array<*::String*>                                              | :heavy_minus_sign:                                                | Comma-delimited fields to return                                  |

### Response

**[T.nilable(Models::Operations::CreateGenaiPromptResponse)](../../models/operations/creategenaipromptresponse.md)**

