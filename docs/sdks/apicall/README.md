# Apicall


### Available Operations

* [get_unified_apicall](#get_unified_apicall) - Retrieve specific API Call by its ID
* [list_unified_apicalls](#list_unified_apicalls) - Returns API Calls

## get_unified_apicall

Retrieve specific API Call by its ID

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetUnifiedApicallRequest.new(
  id="<ID>",
)
    
res = s.apicall.get_unified_apicall(id="string")

if ! res.api_call.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | ID of the Apicall  |


### Response

**[T.nilable(Operations::GetUnifiedApicallResponse)](../../models/operations/getunifiedapicallresponse.md)**


## list_unified_apicalls

Returns API Calls

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListUnifiedApicallsRequest.new()
    
res = s.apicall.list_unified_apicalls(req)

if ! res.api_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::ListUnifiedApicallsRequest](../../models/operations/listunifiedapicallsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::ListUnifiedApicallsResponse)](../../models/operations/listunifiedapicallsresponse.md)**

