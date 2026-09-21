# Taxonomy
(*taxonomy*)

## Overview

### Available Operations

* [create_hris_taxonomy](#create_hris_taxonomy) - Create a taxonomy
* [get_hris_taxonomy](#get_hris_taxonomy) - Retrieve a taxonomy
* [list_crm_taxonomies](#list_crm_taxonomies) - List all taxonomies
* [list_hris_taxonomies](#list_hris_taxonomies) - List all taxonomies

## create_hris_taxonomy

Create a taxonomy

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisTaxonomy" method="post" path="/hris/{connection_id}/taxonomy" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.taxonomy.create_hris_taxonomy(hris_taxonomy: Models::Shared::HrisTaxonomy.new(
  created_at: DateTime.iso8601('2022-06-23T02:10:00.789Z'),
  description: 'Apto demonstro audacia adstringo cursim tristis solio careo.',
  domain: 'Electronics',
  id: 'ede085db-5709-4d53-a490-746f3de5be17',
  is_active: false,
  name: 'International Functionality Architect',
  parent_id: '6524b2a7-6520-4e15-8c4e-1aa6793db837',
  role_ids: [
    '2b1ef757-eb4c-4207-8af1-929afe49cd65',
  ],
  subcategory: 'Bamboo',
  type: Models::Shared::HrisTaxonomyType::KNOWLEDGE,
  updated_at: DateTime.iso8601('2023-05-22T20:37:18.964Z'),
  url: 'https://our-polarisation.name',
), connection_id: '<id>')

unless res.hris_taxonomy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_taxonomy`                                                                                                                                  | [Models::Shared::HrisTaxonomy](../../models/shared/hristaxonomy.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisTaxonomyQueryParamFields](../../models/operations/createhristaxonomyqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisTaxonomyResponse)](../../models/operations/createhristaxonomyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_taxonomy

Retrieve a taxonomy

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisTaxonomy" method="get" path="/hris/{connection_id}/taxonomy/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.taxonomy.get_hris_taxonomy(connection_id: '<id>', id: '<id>')

unless res.hris_taxonomy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Taxonomy                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisTaxonomyQueryParamFields](../../models/operations/gethristaxonomyqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisTaxonomyResponse)](../../models/operations/gethristaxonomyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_taxonomies

List all taxonomies

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmTaxonomies" method="get" path="/crm/{connection_id}/taxonomy" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmTaxonomiesRequest.new(
  connection_id: '<id>',
)

res = s.taxonomy.list_crm_taxonomies(request: req)

unless res.crm_taxonomies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListCrmTaxonomiesRequest](../../models/operations/listcrmtaxonomiesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListCrmTaxonomiesResponse)](../../models/operations/listcrmtaxonomiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_taxonomies

List all taxonomies

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisTaxonomies" method="get" path="/hris/{connection_id}/taxonomy" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisTaxonomiesRequest.new(
  connection_id: '<id>',
)

res = s.taxonomy.list_hris_taxonomies(request: req)

unless res.hris_taxonomies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListHrisTaxonomiesRequest](../../models/operations/listhristaxonomiesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListHrisTaxonomiesResponse)](../../models/operations/listhristaxonomiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |