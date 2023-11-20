# Auth


### Available Operations

* [get_unified_integration_auth](#get_unified_integration_auth) - Create connection indirectly
* [get_unified_integration_login](#get_unified_integration_login) - Sign in a user

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
    
res = s.auth.get_unified_integration_auth(req)

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


## get_unified_integration_login

Returns an authentication URL for the specified integration.  Once a successful authentication occurs, the name and emails are returned.

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetUnifiedIntegrationLoginRequest.new(
  path_params=Operations::GetUnifiedIntegrationLoginRequest.new(
    env="string",
    failure_redirect="string",
    integration_type="string",
    redirect=false,
    state="string",
    success_redirect="string",
    workspace_id="string",
  ),
  query_params=Operations::GetUnifiedIntegrationLoginRequest.new(
    env="string",
    failure_redirect="string",
    integration_type="string",
    redirect=false,
    state="string",
    success_redirect="string",
    workspace_id="string",
  ),
)
    
res = s.auth.get_unified_integration_login(req)

if ! res.res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Operations::GetUnifiedIntegrationLoginRequest](../../models/operations/getunifiedintegrationloginrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(Operations::GetUnifiedIntegrationLoginResponse)](../../models/operations/getunifiedintegrationloginresponse.md)**

