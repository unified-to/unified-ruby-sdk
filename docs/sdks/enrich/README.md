# Enrich


### Available Operations

* [list_enrich_companies](#list_enrich_companies) - Retrieve enrichment information for a company
* [list_enrich_people](#list_enrich_people) - Retrieve enrichment information for a person

## list_enrich_companies

Retrieve enrichment information for a company

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListEnrichCompaniesRequest.new(
  connection_id="string",
)
    
res = s.enrich.list_enrich_companies(connection_id="string", domain="string", name="string")

if ! res.enrich_company.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `connection_id`                     | *String*                            | :heavy_check_mark:                  | ID of the connection                |
| `domain`                            | *String*                            | :heavy_minus_sign:                  | The domain of the company to search |
| `name`                              | *String*                            | :heavy_minus_sign:                  | The name of the company to search   |


### Response

**[T.nilable(Operations::ListEnrichCompaniesResponse)](../../models/operations/listenrichcompaniesresponse.md)**


## list_enrich_people

Retrieve enrichment information for a person

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListEnrichPeopleRequest.new(
  connection_id="string",
)
    
res = s.enrich.list_enrich_people(req)

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

