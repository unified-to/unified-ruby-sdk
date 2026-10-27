# Agent
(*agent*)

## Overview

### Available Operations

* [create_genai_agent](#create_genai_agent) - Create an agent
* [get_genai_agent](#get_genai_agent) - Retrieve an agent
* [list_genai_agents](#list_genai_agents) - List all agents
* [patch_genai_agent](#patch_genai_agent) - Update an agent
* [remove_genai_agent](#remove_genai_agent) - Remove an agent
* [update_genai_agent](#update_genai_agent) - Update an agent

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

res = s.agent.create_genai_agent(genai_agent: Models::Shared::GenaiAgent.new(
  created_at: DateTime.iso8601('2020-12-18T02:23:33.723Z'),
  description: 'Assentator tero sequi.',
  id: '1cb79e5d-129f-48d2-8ff4-e03665db800f',
  instructions: 'Delicate tabella addo vita ver auctus corrumpo. Conscendo auctus maiores astrum sulum aufero bis stella. Non varius sto solus admitto vado suggero theatrum.',
  is_active: false,
  name: 'daughter with',
  updated_at: DateTime.iso8601('2025-10-20T08:12:43.652Z'),
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

res = s.agent.get_genai_agent(connection_id: '<id>', id: '<id>')

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

res = s.agent.list_genai_agents(request: req)

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
    id: '791fe9d2-cccd-4838-aa71-3cde8a85da23',
    instructions: 'Delicate tabella addo vita ver auctus corrumpo. Conscendo auctus maiores astrum sulum aufero bis stella. Non varius sto solus admitto vado suggero theatrum.',
    is_active: false,
    name: 'daughter with',
    updated_at: DateTime.iso8601('2025-10-20T08:12:43.657Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.agent.patch_genai_agent(request: req)

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

res = s.agent.remove_genai_agent(connection_id: '<id>', id: '<id>')

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
    id: '791fe9d2-cccd-4838-aa71-3cde8a85da23',
    instructions: 'Delicate tabella addo vita ver auctus corrumpo. Conscendo auctus maiores astrum sulum aufero bis stella. Non varius sto solus admitto vado suggero theatrum.',
    is_active: false,
    name: 'daughter with',
    updated_at: DateTime.iso8601('2025-10-20T08:12:43.657Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.agent.update_genai_agent(request: req)

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