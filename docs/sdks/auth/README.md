# Auth


### Available Operations

* [get_unified_integration_auth](#get_unified_integration_auth) - Create connection indirectly
* [get_unified_integration_login](#get_unified_integration_login) - Sign in a user

## get_unified_integration_auth

Returns an authorization URL for the specified integration.  Once a successful authorization occurs, a new connection is created.

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthRequest.new(
  integration_type: "<value>",
  workspace_id: "<value>",
)
    
res = s.auth.get_unified_integration_auth(req)

if ! res.res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthRequest](../../models/operations/getunifiedintegrationauthrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthResponse)](../../models/operations/getunifiedintegrationauthresponse.md)**


## get_unified_integration_login

Returns an authentication URL for the specified integration.  Once a successful authentication occurs, the name and email are returned inside a jwt parameter, which is a JSON web token that is base-64 encoded.

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::GetUnifiedIntegrationLoginRequest.new(
  integration_type: "<value>",
  workspace_id: "<value>",
)
    
res = s.auth.get_unified_integration_login(req)

if ! res.res.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [::UnifiedRubySDK::Operations::GetUnifiedIntegrationLoginRequest](../../models/operations/getunifiedintegrationloginrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUnifiedIntegrationLoginResponse)](../../models/operations/getunifiedintegrationloginresponse.md)**

