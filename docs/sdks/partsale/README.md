# Partsale

## Overview

### Available Operations

* [create_dms_partsale](#create_dms_partsale) - Create a partsale
* [get_dms_partsale](#get_dms_partsale) - Retrieve a partsale
* [list_dms_partsales](#list_dms_partsales) - List all partsales
* [patch_dms_partsale](#patch_dms_partsale) - Update a partsale
* [update_dms_partsale](#update_dms_partsale) - Update a partsale

## create_dms_partsale

Creates a DmsPartsale. Provide the unified DmsPartsale fields in the request body; they are mapped to the provider's API. Returns the created DmsPartsale.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDmsPartsale" method="post" path="/dms/{connection_id}/partsale" example="dms_partsale" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.partsale.create_dms_partsale(dms_partsale: Models::Shared::DmsPartsale.new(
  cost_amount: 0.0,
  created_at: DateTime.iso8601('2023-05-22T03:39:30.335Z'),
  currency: 'USD',
  discount_amount: 0.0,
  freight_amount: 0.0,
  id: '834b62b6-5736-47a2-836f-7da1eb8a1d63',
  lines: [
    Models::Shared::DmsPartline.new(
      id: 'c5820579-bc3b-4c71-8f7a-774de46ee7d2',
      pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
      quantity: 5.0,
      quantity_ordered: 5.0,
      total_amount: 491.45,
      unit_price_amount: 98.29
    ),
    Models::Shared::DmsPartline.new(
      id: '05239adc-66e9-493d-b9ae-58b432492e41',
      pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
      quantity: 2.0,
      quantity_ordered: 2.0,
      total_amount: 240.9,
      unit_price_amount: 120.45
    ),
    Models::Shared::DmsPartline.new(
      id: 'ad6e4077-e25b-477a-8a0c-b7be3c6f6c3c',
      pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
      quantity: 3.0,
      quantity_ordered: 3.0,
      total_amount: 249.54,
      unit_price_amount: 83.18
    ),
  ],
  metadata: [],
  number: 'P292867',
  pay_type: Models::Shared::DmsPartsalePayType::CUSTOMER,
  status: Models::Shared::DmsPartsaleStatus::VOIDED,
  subtotal_amount: 981.89,
  tax_amount: 68.73,
  total_amount: 1050.62,
  type: Models::Shared::DmsPartsaleType::SALE,
  updated_at: DateTime.iso8601('2026-04-18T13:18:43.891Z')
), connection_id: '<id>')

unless res.dms_partsale.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `dms_partsale`                                                                                                                                   | [Models::Shared::DmsPartsale](../../models/shared/dmspartsale.md)                                                                                | :heavy_check_mark:                                                                                                                               | A parts counter sale, quote or return                                                                                                            |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDmsPartsaleQueryParamFields](../../models/operations/createdmspartsalequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDmsPartsaleResponse)](../../models/operations/createdmspartsaleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_dms_partsale

Retrieves a single DmsPartsale by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDmsPartsale" method="get" path="/dms/{connection_id}/partsale/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.partsale.get_dms_partsale(connection_id: '<id>', id: '<id>')

unless res.dms_partsale.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Partsale                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDmsPartsaleQueryParamFields](../../models/operations/getdmspartsalequeryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDmsPartsaleResponse)](../../models/operations/getdmspartsaleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_dms_partsales

Returns a list of DmsPartsales. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDmsPartsales" method="get" path="/dms/{connection_id}/partsale" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListDmsPartsalesRequest.new(
  connection_id: '<id>'
)
res = s.partsale.list_dms_partsales(request: req)

unless res.dms_partsales.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListDmsPartsalesRequest](../../models/operations/listdmspartsalesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListDmsPartsalesResponse)](../../models/operations/listdmspartsalesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_dms_partsale

Updates the DmsPartsale identified by `id`. Provide the unified DmsPartsale fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDmsPartsale" method="patch" path="/dms/{connection_id}/partsale/{id}" example="dms_partsale" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchDmsPartsaleRequest.new(
  dms_partsale: Models::Shared::DmsPartsale.new(
    cost_amount: 0.0,
    created_at: DateTime.iso8601('2023-05-22T03:39:30.335Z'),
    currency: 'USD',
    discount_amount: 0.0,
    freight_amount: 0.0,
    id: '73461ce7-3e75-4a6c-b8a9-ca20a45e2f8f',
    lines: [
      Models::Shared::DmsPartline.new(
        id: '64206528-da75-40d9-b936-5acc30f317b0',
        pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
        quantity: 5.0,
        quantity_ordered: 5.0,
        total_amount: 491.45,
        unit_price_amount: 98.29
      ),
      Models::Shared::DmsPartline.new(
        id: '2128fe82-f689-4acf-a553-23b2ff8b4bf3',
        pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
        quantity: 2.0,
        quantity_ordered: 2.0,
        total_amount: 240.9,
        unit_price_amount: 120.45
      ),
      Models::Shared::DmsPartline.new(
        id: '42a50637-ffaa-44f5-973e-4066f6505ff7',
        pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
        quantity: 3.0,
        quantity_ordered: 3.0,
        total_amount: 249.54,
        unit_price_amount: 83.18
      ),
    ],
    metadata: [],
    number: 'P292867',
    pay_type: Models::Shared::DmsPartsalePayType::CUSTOMER,
    status: Models::Shared::DmsPartsaleStatus::VOIDED,
    subtotal_amount: 981.89,
    tax_amount: 68.73,
    total_amount: 1050.62,
    type: Models::Shared::DmsPartsaleType::SALE,
    updated_at: DateTime.iso8601('2026-04-18T13:18:43.913Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.partsale.patch_dms_partsale(request: req)

unless res.dms_partsale.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchDmsPartsaleRequest](../../models/operations/patchdmspartsalerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchDmsPartsaleResponse)](../../models/operations/patchdmspartsaleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_dms_partsale

Updates the DmsPartsale identified by `id`. Provide the unified DmsPartsale fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDmsPartsale" method="put" path="/dms/{connection_id}/partsale/{id}" example="dms_partsale" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateDmsPartsaleRequest.new(
  dms_partsale: Models::Shared::DmsPartsale.new(
    cost_amount: 0.0,
    created_at: DateTime.iso8601('2023-05-22T03:39:30.335Z'),
    currency: 'USD',
    discount_amount: 0.0,
    freight_amount: 0.0,
    id: '73461ce7-3e75-4a6c-b8a9-ca20a45e2f8f',
    lines: [
      Models::Shared::DmsPartline.new(
        id: '64206528-da75-40d9-b936-5acc30f317b0',
        pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
        quantity: 5.0,
        quantity_ordered: 5.0,
        total_amount: 491.45,
        unit_price_amount: 98.29
      ),
      Models::Shared::DmsPartline.new(
        id: '2128fe82-f689-4acf-a553-23b2ff8b4bf3',
        pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
        quantity: 2.0,
        quantity_ordered: 2.0,
        total_amount: 240.9,
        unit_price_amount: 120.45
      ),
      Models::Shared::DmsPartline.new(
        id: '42a50637-ffaa-44f5-973e-4066f6505ff7',
        pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
        quantity: 3.0,
        quantity_ordered: 3.0,
        total_amount: 249.54,
        unit_price_amount: 83.18
      ),
    ],
    metadata: [],
    number: 'P292867',
    pay_type: Models::Shared::DmsPartsalePayType::CUSTOMER,
    status: Models::Shared::DmsPartsaleStatus::VOIDED,
    subtotal_amount: 981.89,
    tax_amount: 68.73,
    total_amount: 1050.62,
    type: Models::Shared::DmsPartsaleType::SALE,
    updated_at: DateTime.iso8601('2026-04-18T13:18:43.913Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.partsale.update_dms_partsale(request: req)

unless res.dms_partsale.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateDmsPartsaleRequest](../../models/operations/updatedmspartsalerequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateDmsPartsaleResponse)](../../models/operations/updatedmspartsaleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |