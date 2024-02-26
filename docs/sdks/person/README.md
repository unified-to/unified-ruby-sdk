# Person


### Available Operations

* [list_enrich_people](#list_enrich_people) - Retrieve enrichment information for a person

## list_enrich_people

Retrieve enrichment information for a person

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListEnrichPeopleRequest.new(
  connection_id: "<value>",
)
    
res = s.person.list_enrich_people(req, ::UnifiedRubySDK::Operations::ListEnrichPeopleSecurity.new(
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

