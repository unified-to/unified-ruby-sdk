# Call


### Available Operations

* [list_uc_calls](#list_uc_calls) - List all calls

## list_uc_calls

List all calls

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListUcCallsRequest.new(
  connection_id: "<value>",
)
    
res = s.call.list_uc_calls(req, ::UnifiedRubySDK::Operations::ListUcCallsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.uc_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::UnifiedRubySDK::Operations::ListUcCallsRequest](../../models/operations/listuccallsrequest.md)   | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |
| `security`                                                                                          | [::UnifiedRubySDK::Operations::ListUcCallsSecurity](../../models/operations/listuccallssecurity.md) | :heavy_check_mark:                                                                                  | The security requirements to use for the request.                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUcCallsResponse)](../../models/operations/listuccallsresponse.md)**

