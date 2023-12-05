# Call


### Available Operations

* [list_uc_calls](#list_uc_calls) - List all calls

## list_uc_calls

List all calls

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListUcCallsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.call.list_uc_calls(req)

if ! res.uc_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Operations::ListUcCallsRequest](../../models/operations/listuccallsrequest.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |


### Response

**[T.nilable(Operations::ListUcCallsResponse)](../../models/operations/listuccallsresponse.md)**

