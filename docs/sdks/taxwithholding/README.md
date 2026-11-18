# Taxwithholding

## Overview

### Available Operations

* [create_hris_taxwithholding](#create_hris_taxwithholding) - Create a taxwithholding
* [get_hris_taxwithholding](#get_hris_taxwithholding) - Retrieve a taxwithholding
* [list_hris_taxwithholdings](#list_hris_taxwithholdings) - List all taxwithholdings
* [patch_hris_taxwithholding](#patch_hris_taxwithholding) - Update a taxwithholding
* [remove_hris_taxwithholding](#remove_hris_taxwithholding) - Remove a taxwithholding
* [update_hris_taxwithholding](#update_hris_taxwithholding) - Update a taxwithholding

## create_hris_taxwithholding

Creates a HrisTaxwithholding. Provide the unified HrisTaxwithholding fields in the request body; they are mapped to the provider's API. Returns the created HrisTaxwithholding.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisTaxwithholding" method="post" path="/hris/{connection_id}/taxwithholding" example="hris_taxwithholding" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.taxwithholding.create_hris_taxwithholding(hris_taxwithholding: Models::Shared::HrisTaxwithholding.new(
  allowances: 1.0,
  country: 'US',
  created_at: DateTime.iso8601('2022-08-14T05:49:35.141Z'),
  effective_at: DateTime.iso8601('2022-08-14T05:49:35.141Z'),
  extra_withholding_amount: 10.0,
  filing_status: Models::Shared::FilingStatus::QUALIFYING_SURVIVOR,
  form: Models::Shared::Form::STATE_FORM,
  id: 'cad5227c-86e7-46fb-a81d-a695e8a538b4',
  is_exempt: false,
  is_resident: true,
  jurisdiction: 'OH',
  jurisdiction_type: Models::Shared::JurisdictionType::STATE,
  metadata: [],
  override_amount: 19.0,
  override_type: Models::Shared::OverrideType::FIXED_AMOUNT,
  updated_at: DateTime.iso8601('2026-09-29T03:05:11.351Z')
), connection_id: '<id>')

unless res.hris_taxwithholding.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_taxwithholding`                                                                                                                            | [Models::Shared::HrisTaxwithholding](../../models/shared/hristaxwithholding.md)                                                                  | :heavy_check_mark:                                                                                                                               | Employee tax withholding settings for one jurisdiction (eg. W-4)                                                                                 |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisTaxwithholdingQueryParamFields](../../models/operations/createhristaxwithholdingqueryparamfields.md)>    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisTaxwithholdingResponse)](../../models/operations/createhristaxwithholdingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_taxwithholding

Retrieves a single HrisTaxwithholding by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisTaxwithholding" method="get" path="/hris/{connection_id}/taxwithholding/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.taxwithholding.get_hris_taxwithholding(connection_id: '<id>', id: '<id>')

unless res.hris_taxwithholding.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Taxwithholding                                                                                                                         |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisTaxwithholdingQueryParamFields](../../models/operations/gethristaxwithholdingqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisTaxwithholdingResponse)](../../models/operations/gethristaxwithholdingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_taxwithholdings

Returns a list of HrisTaxwithholdings. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisTaxwithholdings" method="get" path="/hris/{connection_id}/taxwithholding" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListHrisTaxwithholdingsRequest.new(
  connection_id: '<id>'
)
res = s.taxwithholding.list_hris_taxwithholdings(request: req)

unless res.hris_taxwithholdings.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListHrisTaxwithholdingsRequest](../../models/operations/listhristaxwithholdingsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListHrisTaxwithholdingsResponse)](../../models/operations/listhristaxwithholdingsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_taxwithholding

Updates the HrisTaxwithholding identified by `id`. Provide the unified HrisTaxwithholding fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisTaxwithholding" method="patch" path="/hris/{connection_id}/taxwithholding/{id}" example="hris_taxwithholding" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchHrisTaxwithholdingRequest.new(
  hris_taxwithholding: Models::Shared::HrisTaxwithholding.new(
    allowances: 1.0,
    country: 'US',
    created_at: DateTime.iso8601('2022-08-14T05:49:35.141Z'),
    effective_at: DateTime.iso8601('2022-08-14T05:49:35.141Z'),
    extra_withholding_amount: 10.0,
    filing_status: Models::Shared::FilingStatus::QUALIFYING_SURVIVOR,
    form: Models::Shared::Form::STATE_FORM,
    id: 'dc2b9f6e-3102-491e-84ed-2e2d17a365f5',
    is_exempt: false,
    is_resident: true,
    jurisdiction: 'OH',
    jurisdiction_type: Models::Shared::JurisdictionType::STATE,
    metadata: [],
    override_amount: 19.0,
    override_type: Models::Shared::OverrideType::FIXED_AMOUNT,
    updated_at: DateTime.iso8601('2026-09-29T03:05:11.369Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.taxwithholding.patch_hris_taxwithholding(request: req)

unless res.hris_taxwithholding.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::PatchHrisTaxwithholdingRequest](../../models/operations/patchhristaxwithholdingrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::PatchHrisTaxwithholdingResponse)](../../models/operations/patchhristaxwithholdingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_taxwithholding

Deletes the HrisTaxwithholding identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisTaxwithholding" method="delete" path="/hris/{connection_id}/taxwithholding/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.taxwithholding.remove_hris_taxwithholding(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                | Type                     | Required                 | Description              |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `connection_id`          | *::String*               | :heavy_check_mark:       | ID of the connection     |
| `id`                     | *::String*               | :heavy_check_mark:       | ID of the Taxwithholding |

### Response

**[T.nilable(Models::Operations::RemoveHrisTaxwithholdingResponse)](../../models/operations/removehristaxwithholdingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_taxwithholding

Updates the HrisTaxwithholding identified by `id`. Provide the unified HrisTaxwithholding fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisTaxwithholding" method="put" path="/hris/{connection_id}/taxwithholding/{id}" example="hris_taxwithholding" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateHrisTaxwithholdingRequest.new(
  hris_taxwithholding: Models::Shared::HrisTaxwithholding.new(
    allowances: 1.0,
    country: 'US',
    created_at: DateTime.iso8601('2022-08-14T05:49:35.141Z'),
    effective_at: DateTime.iso8601('2022-08-14T05:49:35.141Z'),
    extra_withholding_amount: 10.0,
    filing_status: Models::Shared::FilingStatus::QUALIFYING_SURVIVOR,
    form: Models::Shared::Form::STATE_FORM,
    id: 'dc2b9f6e-3102-491e-84ed-2e2d17a365f5',
    is_exempt: false,
    is_resident: true,
    jurisdiction: 'OH',
    jurisdiction_type: Models::Shared::JurisdictionType::STATE,
    metadata: [],
    override_amount: 19.0,
    override_type: Models::Shared::OverrideType::FIXED_AMOUNT,
    updated_at: DateTime.iso8601('2026-09-29T03:05:11.369Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.taxwithholding.update_hris_taxwithholding(request: req)

unless res.hris_taxwithholding.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::UpdateHrisTaxwithholdingRequest](../../models/operations/updatehristaxwithholdingrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::UpdateHrisTaxwithholdingResponse)](../../models/operations/updatehristaxwithholdingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |