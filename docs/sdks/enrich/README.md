# Enrich


### Available Operations

* [list_enrich_companies](#list_enrich_companies) - Retrieve enrichment information for a company
* [list_enrich_people](#list_enrich_people) - Retrieve enrichment information for a person

## list_enrich_companies

Retrieve enrichment information for a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.enrich.list_enrich_companies(::UnifiedRubySDK::Operations::ListEnrichCompaniesSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", domain="<value>", name="<value>")

if ! res.enrich_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::ListEnrichCompaniesSecurity](../../models/operations/listenrichcompaniessecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `domain`                                                                                                            | *::String*                                                                                                          | :heavy_minus_sign:                                                                                                  | The domain of the company to search                                                                                 |
| `name`                                                                                                              | *::String*                                                                                                          | :heavy_minus_sign:                                                                                                  | The name of the company to search                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListEnrichCompaniesResponse)](../../models/operations/listenrichcompaniesresponse.md)**


## list_enrich_people

Retrieve enrichment information for a person

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListEnrichPeopleRequest.new(
  connection_id: "<value>",
)
    
res = s.enrich.list_enrich_people(req, ::UnifiedRubySDK::Operations::ListEnrichPeopleSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.enrich_person.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListEnrichPeopleRequest](../../models/operations/listenrichpeoplerequest.md)   | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |
| `security`                                                                                                    | [::UnifiedRubySDK::Operations::ListEnrichPeopleSecurity](../../models/operations/listenrichpeoplesecurity.md) | :heavy_check_mark:                                                                                            | The security requirements to use for the request.                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListEnrichPeopleResponse)](../../models/operations/listenrichpeopleresponse.md)**

