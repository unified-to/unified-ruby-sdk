# Enrich
(*enrich*)

## Overview

### Available Operations

* [list_enrich_companies2](#list_enrich_companies2) - Retrieve enrichment information for a company
* [list_enrich_people2](#list_enrich_people2) - Retrieve enrichment information for a person

## list_enrich_companies2

Retrieve enrichment information for a company

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listEnrichCompanies2" method="get" path="/enrich/{connection_id}/company" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.enrich.list_enrich_companies2(connection_id: '<id>')

unless res.enrich_company.nil?
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

**[T.nilable(Models::Operations::ListEnrichCompanies2Response)](../../models/operations/listenrichcompanies2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_enrich_people2

Retrieve enrichment information for a person

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listEnrichPeople2" method="get" path="/enrich/{connection_id}/person" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListEnrichPeople2Request.new(
  connection_id: '<id>',
)

res = s.enrich.list_enrich_people2(request: req)

unless res.enrich_person.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListEnrichPeople2Request](../../models/operations/listenrichpeople2request.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListEnrichPeople2Response)](../../models/operations/listenrichpeople2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |