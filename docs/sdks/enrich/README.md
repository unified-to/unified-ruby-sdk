# Enrich
(*enrich*)

## Overview

### Available Operations

* [list_enrich_companies](#list_enrich_companies) - Retrieve enrichment information for a company
* [list_enrich_people](#list_enrich_people) - Retrieve enrichment information for a person

## list_enrich_companies

Retrieve enrichment information for a company

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.enrich.list_enrich_companies(connection_id="<id>", domain="distinct-wheel.info", name="<value>")

if ! res.enrich_company.nil?
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `connection_id`                     | *::String*                          | :heavy_check_mark:                  | ID of the connection                |
| `domain`                            | *T.nilable(::String)*               | :heavy_minus_sign:                  | The domain of the company to search |
| `name`                              | *T.nilable(::String)*               | :heavy_minus_sign:                  | The name of the company to search   |

### Response

**[T.nilable(Models::Operations::ListEnrichCompaniesResponse)](../../models/operations/listenrichcompaniesresponse.md)**



## list_enrich_people

Retrieve enrichment information for a person

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListEnrichPeopleRequest.new(
  connection_id: "<id>",
)

res = s.enrich.list_enrich_people(req)

if ! res.enrich_person.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListEnrichPeopleRequest](../../models/operations/listenrichpeoplerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListEnrichPeopleResponse)](../../models/operations/listenrichpeopleresponse.md)**

