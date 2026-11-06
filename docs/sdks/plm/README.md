# Plm
(*plm*)

## Overview

### Available Operations

* [create_plm_bomline](#create_plm_bomline) - Create a bomline
* [create_plm_change](#create_plm_change) - Create a change
* [create_plm_document](#create_plm_document) - Create a document
* [create_plm_part](#create_plm_part) - Create a part
* [get_plm_bomline](#get_plm_bomline) - Retrieve a bomline
* [get_plm_category](#get_plm_category) - Retrieve a category
* [get_plm_change](#get_plm_change) - Retrieve a change
* [get_plm_document](#get_plm_document) - Retrieve a document
* [get_plm_part](#get_plm_part) - Retrieve a part
* [list_plm_bomlines](#list_plm_bomlines) - List all bomlines
* [list_plm_categories](#list_plm_categories) - List all categories
* [list_plm_changes](#list_plm_changes) - List all changes
* [list_plm_documents](#list_plm_documents) - List all documents
* [list_plm_parts](#list_plm_parts) - List all parts
* [patch_plm_bomline](#patch_plm_bomline) - Update a bomline
* [patch_plm_change](#patch_plm_change) - Update a change
* [patch_plm_document](#patch_plm_document) - Update a document
* [patch_plm_part](#patch_plm_part) - Update a part
* [remove_plm_bomline](#remove_plm_bomline) - Remove a bomline
* [update_plm_bomline](#update_plm_bomline) - Update a bomline
* [update_plm_change](#update_plm_change) - Update a change
* [update_plm_document](#update_plm_document) - Update a document
* [update_plm_part](#update_plm_part) - Update a part

## create_plm_bomline

Creates a PlmBomline. Provide the unified PlmBomline fields in the request body; they are mapped to the provider's API. Returns the created PlmBomline.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPlmBomline" method="post" path="/plm/{connection_id}/bomline" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.plm.create_plm_bomline(plm_bomline: Models::Shared::PlmBomline.new(
  created_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
  effective_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
  id: '52d9c232-8ed7-4056-a2c8-d0449cd47d34',
  quantity: 7.0,
  reference_designators: [],
  unit_of_measure: 'EA',
  updated_at: DateTime.iso8601('2023-04-18T02:35:46.442Z'),
), connection_id: '<id>')

unless res.plm_bomline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `plm_bomline`                                                                                                                                    | [Models::Shared::PlmBomline](../../models/shared/plmbomline.md)                                                                                  | :heavy_check_mark:                                                                                                                               | One parent to child usage in a bill of materials                                                                                                 |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePlmBomlineQueryParamFields](../../models/operations/createplmbomlinequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePlmBomlineResponse)](../../models/operations/createplmbomlineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_plm_change

Creates a PlmChange. Provide the unified PlmChange fields in the request body; they are mapped to the provider's API. Returns the created PlmChange.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPlmChange" method="post" path="/plm/{connection_id}/change" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.plm.create_plm_change(plm_change: Models::Shared::PlmChange.new(
  affected_items: [],
  created_at: DateTime.iso8601('2021-08-02T05:58:32.287Z'),
  description: 'Vorago spiculum avaritia adipiscor callide.',
  id: 'd872bdf0-ad2e-4fc2-9b98-109b46b478f2',
  metadata: [],
  name: 'Update goodwill',
  number: 'ECO-6591',
  priority: 'Medium',
  status: Models::Shared::PlmChangeStatus::IN_REVIEW,
  type: Models::Shared::PlmChangeType::ORDER,
  updated_at: DateTime.iso8601('2026-09-19T09:43:37.113Z'),
  url: 'https://warmhearted-fraudster.biz/',
), connection_id: '<id>')

unless res.plm_change.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `plm_change`                                                                                                                                     | [Models::Shared::PlmChange](../../models/shared/plmchange.md)                                                                                    | :heavy_check_mark:                                                                                                                               | A change request, order or notice                                                                                                                |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePlmChangeQueryParamFields](../../models/operations/createplmchangequeryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePlmChangeResponse)](../../models/operations/createplmchangeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_plm_document

Creates a PlmDocument. Provide the unified PlmDocument fields in the request body; they are mapped to the provider's API. Returns the created PlmDocument.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPlmDocument" method="post" path="/plm/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.plm.create_plm_document(plm_document: Models::Shared::PlmDocument.new(
  created_at: DateTime.iso8601('2020-10-16T01:44:30.293Z'),
  file_ids: [],
  id: 'cc5df50b-bdf3-4097-8984-5ddde6c69e8b',
  lifecycle_state: 'Under Review',
  master_identifier: '293011f7-b3de-4c60-845e-9648bddd8f15',
  metadata: [],
  name: 'Procedure taxicab',
  number: 'DOC-086886',
  original_type: 'Procedure',
  revision: 'C',
  status: Models::Shared::PlmDocumentStatus::IN_REVIEW,
  type: Models::Shared::PlmDocumentType::PROCEDURE,
  updated_at: DateTime.iso8601('2026-08-31T04:14:21.866Z'),
  url: 'https://uncommon-guide.info/',
), connection_id: '<id>')

unless res.plm_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `plm_document`                                                                                                                                   | [Models::Shared::PlmDocument](../../models/shared/plmdocument.md)                                                                                | :heavy_check_mark:                                                                                                                               | One revision of an engineering document                                                                                                          |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePlmDocumentQueryParamFields](../../models/operations/createplmdocumentqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePlmDocumentResponse)](../../models/operations/createplmdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_plm_part

Creates a PlmPart. Provide the unified PlmPart fields in the request body; they are mapped to the provider's API. Returns the created PlmPart.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPlmPart" method="post" path="/plm/{connection_id}/part" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.plm.create_plm_part(plm_part: Models::Shared::PlmPart.new(
  created_at: DateTime.iso8601('2019-04-13T06:25:34.770Z'),
  description: 'Pectus tero ulterius aestivus talis tero ullam cruciamentum.',
  document_ids: [],
  file_ids: [],
  id: 'b0d5dcea-c5eb-41ec-aae4-6632bb727cab',
  is_assembly: false,
  lifecycle_state: 'Design',
  master_identifier: '96cddd2b-0355-472e-abe1-079aafe3308d',
  metadata: [],
  name: 'grumpy PCB',
  number: 'PRT-009154',
  original_type: 'Software',
  revision: 'B',
  source: Models::Shared::Source::MAKE,
  status: Models::Shared::PlmPartStatus::IN_WORK,
  type: Models::Shared::PlmPartType::SOFTWARE,
  unit_of_measure: 'EA',
  updated_at: DateTime.iso8601('2021-04-10T06:19:07.407Z'),
  url: 'https://inborn-independence.info',
), connection_id: '<id>')

unless res.plm_part.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `plm_part`                                                                                                                                       | [Models::Shared::PlmPart](../../models/shared/plmpart.md)                                                                                        | :heavy_check_mark:                                                                                                                               | One revision of a part or item                                                                                                                   |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePlmPartQueryParamFields](../../models/operations/createplmpartqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePlmPartResponse)](../../models/operations/createplmpartresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_plm_bomline

Retrieves a single PlmBomline by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPlmBomline" method="get" path="/plm/{connection_id}/bomline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.plm.get_plm_bomline(connection_id: '<id>', id: '<id>')

unless res.plm_bomline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Bomline                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPlmBomlineQueryParamFields](../../models/operations/getplmbomlinequeryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPlmBomlineResponse)](../../models/operations/getplmbomlineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_plm_category

Retrieves a single PlmCategory by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPlmCategory" method="get" path="/plm/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.plm.get_plm_category(connection_id: '<id>', id: '<id>')

unless res.plm_category.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Category                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPlmCategoryQueryParamFields](../../models/operations/getplmcategoryqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPlmCategoryResponse)](../../models/operations/getplmcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_plm_change

Retrieves a single PlmChange by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPlmChange" method="get" path="/plm/{connection_id}/change/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.plm.get_plm_change(connection_id: '<id>', id: '<id>')

unless res.plm_change.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Change                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPlmChangeQueryParamFields](../../models/operations/getplmchangequeryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPlmChangeResponse)](../../models/operations/getplmchangeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_plm_document

Retrieves a single PlmDocument by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPlmDocument" method="get" path="/plm/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.plm.get_plm_document(connection_id: '<id>', id: '<id>')

unless res.plm_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Document                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPlmDocumentQueryParamFields](../../models/operations/getplmdocumentqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPlmDocumentResponse)](../../models/operations/getplmdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_plm_part

Retrieves a single PlmPart by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPlmPart" method="get" path="/plm/{connection_id}/part/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.plm.get_plm_part(connection_id: '<id>', id: '<id>')

unless res.plm_part.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Part                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPlmPartQueryParamFields](../../models/operations/getplmpartqueryparamfields.md)>                                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPlmPartResponse)](../../models/operations/getplmpartresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_plm_bomlines

Returns a list of PlmBomlines. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPlmBomlines" method="get" path="/plm/{connection_id}/bomline" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPlmBomlinesRequest.new(
  connection_id: '<id>',
)

res = s.plm.list_plm_bomlines(request: req)

unless res.plm_bomlines.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListPlmBomlinesRequest](../../models/operations/listplmbomlinesrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListPlmBomlinesResponse)](../../models/operations/listplmbomlinesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_plm_categories

Returns a list of PlmCategories. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPlmCategories" method="get" path="/plm/{connection_id}/category" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPlmCategoriesRequest.new(
  connection_id: '<id>',
)

res = s.plm.list_plm_categories(request: req)

unless res.plm_categories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListPlmCategoriesRequest](../../models/operations/listplmcategoriesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListPlmCategoriesResponse)](../../models/operations/listplmcategoriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_plm_changes

Returns a list of PlmChanges. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPlmChanges" method="get" path="/plm/{connection_id}/change" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPlmChangesRequest.new(
  connection_id: '<id>',
)

res = s.plm.list_plm_changes(request: req)

unless res.plm_changes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListPlmChangesRequest](../../models/operations/listplmchangesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListPlmChangesResponse)](../../models/operations/listplmchangesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_plm_documents

Returns a list of PlmDocuments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPlmDocuments" method="get" path="/plm/{connection_id}/document" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPlmDocumentsRequest.new(
  connection_id: '<id>',
)

res = s.plm.list_plm_documents(request: req)

unless res.plm_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListPlmDocumentsRequest](../../models/operations/listplmdocumentsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListPlmDocumentsResponse)](../../models/operations/listplmdocumentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_plm_parts

Returns a list of PlmParts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPlmParts" method="get" path="/plm/{connection_id}/part" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPlmPartsRequest.new(
  connection_id: '<id>',
)

res = s.plm.list_plm_parts(request: req)

unless res.plm_parts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListPlmPartsRequest](../../models/operations/listplmpartsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListPlmPartsResponse)](../../models/operations/listplmpartsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_plm_bomline

Updates the PlmBomline identified by `id`. Provide the unified PlmBomline fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPlmBomline" method="patch" path="/plm/{connection_id}/bomline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPlmBomlineRequest.new(
  plm_bomline: Models::Shared::PlmBomline.new(
    created_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
    effective_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
    id: 'c6e3875a-8bf8-4656-a941-defbc67126c2',
    quantity: 7.0,
    reference_designators: [],
    unit_of_measure: 'EA',
    updated_at: DateTime.iso8601('2023-04-18T02:35:46.443Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.plm.patch_plm_bomline(request: req)

unless res.plm_bomline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchPlmBomlineRequest](../../models/operations/patchplmbomlinerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchPlmBomlineResponse)](../../models/operations/patchplmbomlineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_plm_change

Updates the PlmChange identified by `id`. Provide the unified PlmChange fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPlmChange" method="patch" path="/plm/{connection_id}/change/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPlmChangeRequest.new(
  plm_change: Models::Shared::PlmChange.new(
    affected_items: [],
    created_at: DateTime.iso8601('2021-08-02T05:58:32.287Z'),
    description: 'Vorago spiculum avaritia adipiscor callide.',
    id: '14568867-8f5d-41b9-b3bd-75cb20eeec85',
    metadata: [],
    name: 'Update goodwill',
    number: 'ECO-6591',
    priority: 'Medium',
    status: Models::Shared::PlmChangeStatus::IN_REVIEW,
    type: Models::Shared::PlmChangeType::ORDER,
    updated_at: DateTime.iso8601('2026-09-19T09:43:37.125Z'),
    url: 'https://warmhearted-fraudster.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.plm.patch_plm_change(request: req)

unless res.plm_change.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchPlmChangeRequest](../../models/operations/patchplmchangerequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchPlmChangeResponse)](../../models/operations/patchplmchangeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_plm_document

Updates the PlmDocument identified by `id`. Provide the unified PlmDocument fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPlmDocument" method="patch" path="/plm/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPlmDocumentRequest.new(
  plm_document: Models::Shared::PlmDocument.new(
    created_at: DateTime.iso8601('2020-10-16T01:44:30.293Z'),
    file_ids: [],
    id: '24940edd-0641-41a6-b1c9-48ff46e93eb6',
    lifecycle_state: 'Under Review',
    master_identifier: '500c5b27-445f-45ba-9d78-353482094041',
    metadata: [],
    name: 'Procedure taxicab',
    number: 'DOC-086886',
    original_type: 'Procedure',
    revision: 'C',
    status: Models::Shared::PlmDocumentStatus::IN_REVIEW,
    type: Models::Shared::PlmDocumentType::PROCEDURE,
    updated_at: DateTime.iso8601('2026-08-31T04:14:21.879Z'),
    url: 'https://uncommon-guide.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.plm.patch_plm_document(request: req)

unless res.plm_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchPlmDocumentRequest](../../models/operations/patchplmdocumentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchPlmDocumentResponse)](../../models/operations/patchplmdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_plm_part

Updates the PlmPart identified by `id`. Provide the unified PlmPart fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPlmPart" method="patch" path="/plm/{connection_id}/part/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPlmPartRequest.new(
  plm_part: Models::Shared::PlmPart.new(
    created_at: DateTime.iso8601('2019-04-13T06:25:34.770Z'),
    description: 'Pectus tero ulterius aestivus talis tero ullam cruciamentum.',
    document_ids: [],
    file_ids: [],
    id: '14621e44-ccef-422b-9788-ce51bd0a01e4',
    is_assembly: false,
    lifecycle_state: 'Design',
    master_identifier: '07060a11-6be1-4210-b94d-18132b08929c',
    metadata: [],
    name: 'grumpy PCB',
    number: 'PRT-009154',
    original_type: 'Software',
    revision: 'B',
    source: Models::Shared::Source::MAKE,
    status: Models::Shared::PlmPartStatus::IN_WORK,
    type: Models::Shared::PlmPartType::SOFTWARE,
    unit_of_measure: 'EA',
    updated_at: DateTime.iso8601('2021-04-10T06:19:07.411Z'),
    url: 'https://inborn-independence.info',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.plm.patch_plm_part(request: req)

unless res.plm_part.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::PatchPlmPartRequest](../../models/operations/patchplmpartrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::PatchPlmPartResponse)](../../models/operations/patchplmpartresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_plm_bomline

Deletes the PlmBomline identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePlmBomline" method="delete" path="/plm/{connection_id}/bomline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.plm.remove_plm_bomline(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Bomline    |

### Response

**[T.nilable(Models::Operations::RemovePlmBomlineResponse)](../../models/operations/removeplmbomlineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_plm_bomline

Updates the PlmBomline identified by `id`. Provide the unified PlmBomline fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePlmBomline" method="put" path="/plm/{connection_id}/bomline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePlmBomlineRequest.new(
  plm_bomline: Models::Shared::PlmBomline.new(
    created_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
    effective_at: DateTime.iso8601('2022-04-02T07:09:29.598Z'),
    id: 'c6e3875a-8bf8-4656-a941-defbc67126c2',
    quantity: 7.0,
    reference_designators: [],
    unit_of_measure: 'EA',
    updated_at: DateTime.iso8601('2023-04-18T02:35:46.443Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.plm.update_plm_bomline(request: req)

unless res.plm_bomline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdatePlmBomlineRequest](../../models/operations/updateplmbomlinerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdatePlmBomlineResponse)](../../models/operations/updateplmbomlineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_plm_change

Updates the PlmChange identified by `id`. Provide the unified PlmChange fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePlmChange" method="put" path="/plm/{connection_id}/change/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePlmChangeRequest.new(
  plm_change: Models::Shared::PlmChange.new(
    affected_items: [],
    created_at: DateTime.iso8601('2021-08-02T05:58:32.287Z'),
    description: 'Vorago spiculum avaritia adipiscor callide.',
    id: '14568867-8f5d-41b9-b3bd-75cb20eeec85',
    metadata: [],
    name: 'Update goodwill',
    number: 'ECO-6591',
    priority: 'Medium',
    status: Models::Shared::PlmChangeStatus::IN_REVIEW,
    type: Models::Shared::PlmChangeType::ORDER,
    updated_at: DateTime.iso8601('2026-09-19T09:43:37.125Z'),
    url: 'https://warmhearted-fraudster.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.plm.update_plm_change(request: req)

unless res.plm_change.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdatePlmChangeRequest](../../models/operations/updateplmchangerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdatePlmChangeResponse)](../../models/operations/updateplmchangeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_plm_document

Updates the PlmDocument identified by `id`. Provide the unified PlmDocument fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePlmDocument" method="put" path="/plm/{connection_id}/document/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePlmDocumentRequest.new(
  plm_document: Models::Shared::PlmDocument.new(
    created_at: DateTime.iso8601('2020-10-16T01:44:30.293Z'),
    file_ids: [],
    id: '24940edd-0641-41a6-b1c9-48ff46e93eb6',
    lifecycle_state: 'Under Review',
    master_identifier: '500c5b27-445f-45ba-9d78-353482094041',
    metadata: [],
    name: 'Procedure taxicab',
    number: 'DOC-086886',
    original_type: 'Procedure',
    revision: 'C',
    status: Models::Shared::PlmDocumentStatus::IN_REVIEW,
    type: Models::Shared::PlmDocumentType::PROCEDURE,
    updated_at: DateTime.iso8601('2026-08-31T04:14:21.879Z'),
    url: 'https://uncommon-guide.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.plm.update_plm_document(request: req)

unless res.plm_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdatePlmDocumentRequest](../../models/operations/updateplmdocumentrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdatePlmDocumentResponse)](../../models/operations/updateplmdocumentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_plm_part

Updates the PlmPart identified by `id`. Provide the unified PlmPart fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePlmPart" method="put" path="/plm/{connection_id}/part/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePlmPartRequest.new(
  plm_part: Models::Shared::PlmPart.new(
    created_at: DateTime.iso8601('2019-04-13T06:25:34.770Z'),
    description: 'Pectus tero ulterius aestivus talis tero ullam cruciamentum.',
    document_ids: [],
    file_ids: [],
    id: '14621e44-ccef-422b-9788-ce51bd0a01e4',
    is_assembly: false,
    lifecycle_state: 'Design',
    master_identifier: '07060a11-6be1-4210-b94d-18132b08929c',
    metadata: [],
    name: 'grumpy PCB',
    number: 'PRT-009154',
    original_type: 'Software',
    revision: 'B',
    source: Models::Shared::Source::MAKE,
    status: Models::Shared::PlmPartStatus::IN_WORK,
    type: Models::Shared::PlmPartType::SOFTWARE,
    unit_of_measure: 'EA',
    updated_at: DateTime.iso8601('2021-04-10T06:19:07.411Z'),
    url: 'https://inborn-independence.info',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.plm.update_plm_part(request: req)

unless res.plm_part.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::UpdatePlmPartRequest](../../models/operations/updateplmpartrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::UpdatePlmPartResponse)](../../models/operations/updateplmpartresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |