# Apicall


### Available Operations

* [get_unified_apicall](#get_unified_apicall) - Retrieve specific API Call by its ID
* [list_unified_apicalls](#list_unified_apicalls) - Returns API Calls

## get_unified_apicall

Retrieve specific API Call by its ID

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.apicall.get_unified_apicall(::UnifiedRubySDK::Operations::GetUnifiedApicallSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), id="<value>")

if ! res.api_call.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::GetUnifiedApicallSecurity](../../models/operations/getunifiedapicallsecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Apicall                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUnifiedApicallResponse)](../../models/operations/getunifiedapicallresponse.md)**


## list_unified_apicalls

Returns API Calls

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListUnifiedApicallsRequest.new()
    
res = s.apicall.list_unified_apicalls(req, ::UnifiedRubySDK::Operations::ListUnifiedApicallsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.api_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::UnifiedRubySDK::Operations::ListUnifiedApicallsRequest](../../models/operations/listunifiedapicallsrequest.md)   | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::ListUnifiedApicallsSecurity](../../models/operations/listunifiedapicallssecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedApicallsResponse)](../../models/operations/listunifiedapicallsresponse.md)**

