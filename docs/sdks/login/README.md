# Login


### Available Operations

* [get_unified_integration_login](#get_unified_integration_login) - Sign in a user

## get_unified_integration_login

Returns an authentication URL for the specified integration.  Once a successful authentication occurs, the name and emails are returned.

### Example Usage

```ruby
require_relative unified_ruby_sdk


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
    
res = s.login.get_unified_integration_login(req)

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

