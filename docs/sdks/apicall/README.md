# Apicall


### Available Operations

* [get_unified_apicall](#get_unified_apicall) - Retrieve specific API Call by its ID
* [list_unified_apicalls](#list_unified_apicalls) - Returns API Calls

## get_unified_apicall

Retrieve specific API Call by its ID

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetUnifiedApicallRequest.new(
  path_params=Operations::GetUnifiedApicallRequest.new(
    id="<ID>",
  ),
)
    
res = s.apicall.get_unified_apicall(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListUnifiedApicallsRequest.new(
  query_params=Operations::ListUnifiedApicallsRequest.new(
    connection_id="string",
    created_lte=DateTime.iso8601('2023-08-09T20:57:25.500Z'),
    env="string",
    error=false,
    external_xref="string",
    integration_type="string",
    limit=494.66,
    offset=5267.27,
    order="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-01-09T10:22:39.053Z'),
  ),
)
    
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

