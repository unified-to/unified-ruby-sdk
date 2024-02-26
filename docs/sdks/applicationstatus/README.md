# Applicationstatus


### Available Operations

* [list_ats_applicationstatuses](#list_ats_applicationstatuses) - List all application statuses

## list_ats_applicationstatuses

List all application statuses

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAtsApplicationstatusesRequest.new(
  connection_id: "<value>",
)
    
res = s.applicationstatus.list_ats_applicationstatuses(req, ::UnifiedRubySDK::Operations::ListAtsApplicationstatusesSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.ats_statuses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [::UnifiedRubySDK::Operations::ListAtsApplicationstatusesRequest](../../models/operations/listatsapplicationstatusesrequest.md)   | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |
| `security`                                                                                                                        | [::UnifiedRubySDK::Operations::ListAtsApplicationstatusesSecurity](../../models/operations/listatsapplicationstatusessecurity.md) | :heavy_check_mark:                                                                                                                | The security requirements to use for the request.                                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsApplicationstatusesResponse)](../../models/operations/listatsapplicationstatusesresponse.md)**

