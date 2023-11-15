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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::GetUnifiedIntegrationRequest.new(
  path_params=Operations::GetUnifiedIntegrationRequest.new(
    integration_type="string",
  ),
)
    
res = s.integration.get_unified_integration(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetUnifiedIntegrationAuthRequest.new(
  path_params=Operations::GetUnifiedIntegrationAuthRequest.new(
    env="string",
    external_xref="string",
    failure_redirect="string",
    integration_type="string",
    lang="string",
    redirect=false,
    scopes=.new[
      Operations::Scopes::HRIS_EMPLOYEE_WRITE,
    ],
    state="string",
    subdomain="string",
    success_redirect="string",
    workspace_id="string",
  ),
  query_params=Operations::GetUnifiedIntegrationAuthRequest.new(
    env="string",
    external_xref="string",
    failure_redirect="string",
    integration_type="string",
    lang="string",
    redirect=false,
    scopes=.new[
      Operations::Scopes::CRM_LEAD_WRITE,
    ],
    state="string",
    subdomain="string",
    success_redirect="string",
    workspace_id="string",
  ),
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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListUnifiedIntegrationWorkspacesRequest.new(
  path_params=Operations::ListUnifiedIntegrationWorkspacesRequest.new(
    active=false,
    categories=.new[
      Operations::QueryParamCategories::TICKETING,
    ],
    env="string",
    limit=9072.99,
    offset=5948.93,
    summary=false,
    updated_gte="string",
    workspace_id="string",
  ),
  query_params=Operations::ListUnifiedIntegrationWorkspacesRequest.new(
    active=false,
    categories=.new[
      Operations::QueryParamCategories::AUTH,
    ],
    env="string",
    limit=4075.93,
    offset=2858.96,
    summary=false,
    updated_gte="string",
    workspace_id="string",
  ),
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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::ListUnifiedIntegrationsRequest.new(
  query_params=Operations::ListUnifiedIntegrationsRequest.new(
    active=false,
    categories=.new[
      Operations::ListUnifiedIntegrationsQueryParamCategories::AUTH,
    ],
    env="string",
    limit=7382.58,
    offset=353.99,
    order="string",
    sort="string",
    summary=false,
    updated_gte="string",
  ),
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

