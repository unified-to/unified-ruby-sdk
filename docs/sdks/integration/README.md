# Integration


### Available Operations

* [get_unified_integration](#get_unified_integration) - Retrieve an integration
* [get_unified_integration_auth](#get_unified_integration_auth) - Create connection indirectly
* [list_unified_integration_workspaces](#list_unified_integration_workspaces) - Returns all activated integrations in a workspace
* [list_unified_integrations](#list_unified_integrations) - Returns all integrations

## get_unified_integration

Retrieve an integration

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetUnifiedIntegrationRequest.new(
  integration_type="string",
)
    
res = s.integration.get_unified_integration(integration_type="string")

if ! res.integration.nil?
  # handle response
end

```

### Parameters

| Parameter                         | Type                              | Required                          | Description                       |
| --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- |
| `integration_type`                | *String*                          | :heavy_check_mark:                | Type of the supported integration |


### Response

**[T.nilable(Operations::GetUnifiedIntegrationResponse)](../../models/operations/getunifiedintegrationresponse.md)**


## get_unified_integration_auth

Returns an authorization URL for the specified integration.  Once a successful authorization occurs, a new connection is created.

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetUnifiedIntegrationAuthRequest.new(
  integration_type="string",
  scopes=[
    Operations::Scopes::HRIS_EMPLOYEE_READ,
  ],
  workspace_id="string",
)
    
res = s.integration.get_unified_integration_auth(req)

if ! res.res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Operations::GetUnifiedIntegrationAuthRequest](../../models/operations/getunifiedintegrationauthrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(Operations::GetUnifiedIntegrationAuthResponse)](../../models/operations/getunifiedintegrationauthresponse.md)**


## list_unified_integration_workspaces

No authentication required as this is to be used by front-end interface

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListUnifiedIntegrationWorkspacesRequest.new(
  categories=[
    Operations::QueryParamCategories::TICKETING,
  ],
  workspace_id="string",
)
    
res = s.integration.list_unified_integration_workspaces(req)

if ! res.integrations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Operations::ListUnifiedIntegrationWorkspacesRequest](../../models/operations/listunifiedintegrationworkspacesrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |


### Response

**[T.nilable(Operations::ListUnifiedIntegrationWorkspacesResponse)](../../models/operations/listunifiedintegrationworkspacesresponse.md)**


## list_unified_integrations

Returns all integrations

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListUnifiedIntegrationsRequest.new(
  categories=[
    Operations::ListUnifiedIntegrationsQueryParamCategories::AUTH,
  ],
)
    
res = s.integration.list_unified_integrations(req)

if ! res.integrations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Operations::ListUnifiedIntegrationsRequest](../../models/operations/listunifiedintegrationsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(Operations::ListUnifiedIntegrationsResponse)](../../models/operations/listunifiedintegrationsresponse.md)**

