# Call


### Available Operations

* [list_uc_calls](#list_uc_calls) - List all calls

## list_uc_calls

List all calls

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListUcCallsRequest.new(
  path_params=Operations::ListUcCallsRequest.new(
    agent_id="string",
    connection_id="string",
    contact_id="string",
    fields=.new[
      "string",
    ],
    limit=465.25,
    offset=4996.09,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-07-25T02:48:36.966Z'),
  ),
  query_params=Operations::ListUcCallsRequest.new(
    agent_id="string",
    connection_id="string",
    contact_id="string",
    fields=.new[
      "string",
    ],
    limit=836.48,
    offset=2983.08,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-01-21T09:12:35.604Z'),
  ),
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

