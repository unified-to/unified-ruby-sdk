# Person


### Available Operations

* [list_enrich_people](#list_enrich_people) - Retrieve enrichment information for a person

## list_enrich_people

Retrieve enrichment information for a person

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListEnrichPeopleRequest.new(
  connection_id="string",
)
    
res = s.person.list_enrich_people(req)

if ! res.enrich_person.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::ListEnrichPeopleRequest](../../models/operations/listenrichpeoplerequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::ListEnrichPeopleResponse)](../../models/operations/listenrichpeopleresponse.md)**

