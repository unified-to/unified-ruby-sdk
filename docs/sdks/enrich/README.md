# Enrich


### Available Operations

* [list_enrich_companies](#list_enrich_companies) - Retrieve enrichment information for a company
* [list_enrich_people](#list_enrich_people) - Retrieve enrichment information for a person

## list_enrich_companies

Retrieve enrichment information for a company

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::ListEnrichCompaniesRequest.new(
  path_params=Operations::ListEnrichCompaniesRequest.new(
    connection_id="string",
    domain="dismal-cornmeal.org",
    name="string",
  ),
  query_params=Operations::ListEnrichCompaniesRequest.new(
    connection_id="string",
    domain="impure-guava.org",
    name="string",
  ),
)
    
res = s.enrich.list_enrich_companies(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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

