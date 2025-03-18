# Genai
(*genai*)

## Overview

### Available Operations

* [create_genai_prompt](#create_genai_prompt) - Create a prompt
* [list_genai_models](#list_genai_models) - List all models

## create_genai_prompt

Create a prompt

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.genai.create_genai_prompt(genai_prompt=::UnifiedRubySDK::Shared::GenaiPrompt.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.genai_prompt.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `genai_prompt`                                                              | [::UnifiedRubySDK::Shared::GenaiPrompt](../../models/shared/genaiprompt.md) | :heavy_check_mark:                                                          | N/A                                                                         |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `fields_`                                                                   | T::Array<*::String*>                                                        | :heavy_minus_sign:                                                          | Comma-delimited fields to return                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateGenaiPromptResponse)](../../models/operations/creategenaipromptresponse.md)**



## list_genai_models

List all models

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListGenaiModelsRequest.new(
  connection_id: "<id>",
)

res = s.genai.list_genai_models(req)

if ! res.genai_models.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::UnifiedRubySDK::Operations::ListGenaiModelsRequest](../../models/operations/listgenaimodelsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListGenaiModelsResponse)](../../models/operations/listgenaimodelsresponse.md)**

