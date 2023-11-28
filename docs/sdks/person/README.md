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
    jwt=.foo"",
  )
)

   
req = Operations::ListEnrichPeopleRequest.new(
  path_params=Operations::ListEnrichPeopleRequest.new(
    connection_id="string",
    email="Rosendo53@gmail.com",
    linkedin_url="string",
    name="string",
    twitter="string",
  ),
  query_params=Operations::ListEnrichPeopleRequest.new(
    connection_id="string",
    email="Edwina32@yahoo.com",
    linkedin_url="string",
    name="string",
    twitter="string",
  ),
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

