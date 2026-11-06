# Part
(*part*)

## Overview

### Available Operations

* [create_plm_part](#create_plm_part) - Create a part
* [get_plm_part](#get_plm_part) - Retrieve a part
* [list_plm_parts](#list_plm_parts) - List all parts
* [patch_plm_part](#patch_plm_part) - Update a part
* [update_plm_part](#update_plm_part) - Update a part

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

res = s.part.create_plm_part(plm_part: Models::Shared::PlmPart.new(
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

res = s.part.get_plm_part(connection_id: '<id>', id: '<id>')

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

res = s.part.list_plm_parts(request: req)

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

res = s.part.patch_plm_part(request: req)

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

res = s.part.update_plm_part(request: req)

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