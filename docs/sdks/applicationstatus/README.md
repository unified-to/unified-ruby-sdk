# Applicationstatus


### Available Operations

* [list_ats_applicationstatuses](#list_ats_applicationstatuses) - List all applicationstatuses

## list_ats_applicationstatuses

List all applicationstatuses

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsApplicationstatusesRequest.new(
  connection_id: "<value>",
)
    
res = s.applicationstatus.list_ats_applicationstatuses(req)

if ! res.ats_statuses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [::UnifiedRubySDK::Operations::ListAtsApplicationstatusesRequest](../../models/operations/listatsapplicationstatusesrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsApplicationstatusesResponse)](../../models/operations/listatsapplicationstatusesresponse.md)**

