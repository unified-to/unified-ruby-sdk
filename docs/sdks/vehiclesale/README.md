# Vehiclesale

## Overview

### Available Operations

* [create_dms_vehiclesale](#create_dms_vehiclesale) - Create a vehiclesale
* [get_dms_vehiclesale](#get_dms_vehiclesale) - Retrieve a vehiclesale
* [list_dms_vehiclesales](#list_dms_vehiclesales) - List all vehiclesales
* [patch_dms_vehiclesale](#patch_dms_vehiclesale) - Update a vehiclesale
* [update_dms_vehiclesale](#update_dms_vehiclesale) - Update a vehiclesale

## create_dms_vehiclesale

Creates a DmsVehiclesale. Provide the unified DmsVehiclesale fields in the request body; they are mapped to the provider's API. Returns the created DmsVehiclesale.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDmsVehiclesale" method="post" path="/dms/{connection_id}/vehiclesale" example="dms_vehiclesale" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.vehiclesale.create_dms_vehiclesale(dms_vehiclesale: Models::Shared::DmsVehiclesale.new(
  back_gross_amount: 4565.0,
  created_at: DateTime.iso8601('2020-04-02T08:14:56.150Z'),
  currency: 'USD',
  down_payment_amount: 6700.0,
  fees: [
    Models::Shared::DmsVehiclesaleFee.new(
      cost_amount: 0.0,
      is_capitalized: true,
      name: 'Documentation fee',
      price_amount: 499.0
    ),
    Models::Shared::DmsVehiclesaleFee.new(
      is_capitalized: false,
      name: 'Title and registration',
      price_amount: 392.0
    ),
  ],
  finance: Models::Shared::PropertyDmsVehiclesaleFinance.new(
    financed_amount: 0.0,
    first_payment_at: DateTime.iso8601('2022-08-16T11:37:29.878Z'),
    interest_rate: 6.68,
    lender_name: 'Mueller, Yundt and Murray Financial',
    payment_amount: 339.0,
    payment_frequency: Models::Shared::PaymentFrequency::MONTHLY,
    term_months: 72.0
  ),
  finance_type: Models::Shared::FinanceType::FINANCE,
  id: 'b91e3f9c-0180-42c5-9d38-83e2362d9c50',
  metadata: [],
  number: 'D84591',
  products: [
    Models::Shared::DmsVehiclesaleProduct.new(
      contract_number: 'B7JN10GVB7',
      cost_amount: 1320.0,
      name: 'Tire & Wheel',
      price_amount: 3300.0,
      provider: 'Renner and Sons',
      term_months: 60.0,
      type: Models::Shared::DmsVehiclesaleProductType::PROTECTION
    ),
    Models::Shared::DmsVehiclesaleProduct.new(
      contract_number: 'VIZU7K3VRU',
      cost_amount: 1115.0,
      deductible_amount: 100.0,
      name: 'Platinum Vehicle Service Contract',
      price_amount: 3700.0,
      provider: 'Frami, Wisozk and Gleichner',
      term_months: 72.0,
      type: Models::Shared::DmsVehiclesaleProductType::SERVICE_CONTRACT
    ),
  ],
  rebate_amount: 500.0,
  sold_at: DateTime.iso8601('2022-08-14T20:21:55.591Z'),
  source: 'Website',
  status: Models::Shared::DmsVehiclesaleStatus::SOLD,
  tax_amount: 0.0,
  taxes: [
    Models::Shared::DmsVehiclesaleTax.new(
      name: 'State sales tax',
      rate: 8.25,
      total_amount: 0.0
    ),
  ],
  total_amount: 7891.0,
  trade_ins: [],
  type: Models::Shared::DmsVehiclesaleType::RETAIL,
  updated_at: DateTime.iso8601('2025-04-16T21:53:33.456Z'),
  vehicles: []
), connection_id: '<id>')

unless res.dms_vehiclesale.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `dms_vehiclesale`                                                                                                                                | [Models::Shared::DmsVehiclesale](../../models/shared/dmsvehiclesale.md)                                                                          | :heavy_check_mark:                                                                                                                               | A vehicle sale or deal (retail, wholesale, fleet or dealer trade)                                                                                |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDmsVehiclesaleQueryParamFields](../../models/operations/createdmsvehiclesalequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDmsVehiclesaleResponse)](../../models/operations/createdmsvehiclesaleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_dms_vehiclesale

Retrieves a single DmsVehiclesale by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDmsVehiclesale" method="get" path="/dms/{connection_id}/vehiclesale/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.vehiclesale.get_dms_vehiclesale(connection_id: '<id>', id: '<id>')

unless res.dms_vehiclesale.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Vehiclesale                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDmsVehiclesaleQueryParamFields](../../models/operations/getdmsvehiclesalequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDmsVehiclesaleResponse)](../../models/operations/getdmsvehiclesaleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_dms_vehiclesales

Returns a list of DmsVehiclesales. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDmsVehiclesales" method="get" path="/dms/{connection_id}/vehiclesale" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListDmsVehiclesalesRequest.new(
  connection_id: '<id>'
)
res = s.vehiclesale.list_dms_vehiclesales(request: req)

unless res.dms_vehiclesales.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListDmsVehiclesalesRequest](../../models/operations/listdmsvehiclesalesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListDmsVehiclesalesResponse)](../../models/operations/listdmsvehiclesalesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_dms_vehiclesale

Updates the DmsVehiclesale identified by `id`. Provide the unified DmsVehiclesale fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDmsVehiclesale" method="patch" path="/dms/{connection_id}/vehiclesale/{id}" example="dms_vehiclesale" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchDmsVehiclesaleRequest.new(
  dms_vehiclesale: Models::Shared::DmsVehiclesale.new(
    back_gross_amount: 4565.0,
    created_at: DateTime.iso8601('2020-04-02T08:14:56.150Z'),
    currency: 'USD',
    down_payment_amount: 6700.0,
    fees: [
      Models::Shared::DmsVehiclesaleFee.new(
        cost_amount: 0.0,
        is_capitalized: true,
        name: 'Documentation fee',
        price_amount: 499.0
      ),
      Models::Shared::DmsVehiclesaleFee.new(
        is_capitalized: false,
        name: 'Title and registration',
        price_amount: 392.0
      ),
    ],
    finance: Models::Shared::PropertyDmsVehiclesaleFinance.new(
      financed_amount: 0.0,
      first_payment_at: DateTime.iso8601('2022-08-16T11:37:29.897Z'),
      interest_rate: 6.68,
      lender_name: 'Mueller, Yundt and Murray Financial',
      payment_amount: 339.0,
      payment_frequency: Models::Shared::PaymentFrequency::MONTHLY,
      term_months: 72.0
    ),
    finance_type: Models::Shared::FinanceType::FINANCE,
    id: '3f89399e-041f-4ed9-a414-18674421f1b5',
    metadata: [],
    number: 'D84591',
    products: [
      Models::Shared::DmsVehiclesaleProduct.new(
        contract_number: 'B7JN10GVB7',
        cost_amount: 1320.0,
        name: 'Tire & Wheel',
        price_amount: 3300.0,
        provider: 'Renner and Sons',
        term_months: 60.0,
        type: Models::Shared::DmsVehiclesaleProductType::PROTECTION
      ),
      Models::Shared::DmsVehiclesaleProduct.new(
        contract_number: 'VIZU7K3VRU',
        cost_amount: 1115.0,
        deductible_amount: 100.0,
        name: 'Platinum Vehicle Service Contract',
        price_amount: 3700.0,
        provider: 'Frami, Wisozk and Gleichner',
        term_months: 72.0,
        type: Models::Shared::DmsVehiclesaleProductType::SERVICE_CONTRACT
      ),
    ],
    rebate_amount: 500.0,
    sold_at: DateTime.iso8601('2022-08-14T20:21:55.610Z'),
    source: 'Website',
    status: Models::Shared::DmsVehiclesaleStatus::SOLD,
    tax_amount: 0.0,
    taxes: [
      Models::Shared::DmsVehiclesaleTax.new(
        name: 'State sales tax',
        rate: 8.25,
        total_amount: 0.0
      ),
    ],
    total_amount: 7891.0,
    trade_ins: [],
    type: Models::Shared::DmsVehiclesaleType::RETAIL,
    updated_at: DateTime.iso8601('2025-04-16T21:53:33.496Z'),
    vehicles: []
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.vehiclesale.patch_dms_vehiclesale(request: req)

unless res.dms_vehiclesale.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchDmsVehiclesaleRequest](../../models/operations/patchdmsvehiclesalerequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchDmsVehiclesaleResponse)](../../models/operations/patchdmsvehiclesaleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_dms_vehiclesale

Updates the DmsVehiclesale identified by `id`. Provide the unified DmsVehiclesale fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDmsVehiclesale" method="put" path="/dms/{connection_id}/vehiclesale/{id}" example="dms_vehiclesale" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateDmsVehiclesaleRequest.new(
  dms_vehiclesale: Models::Shared::DmsVehiclesale.new(
    back_gross_amount: 4565.0,
    created_at: DateTime.iso8601('2020-04-02T08:14:56.150Z'),
    currency: 'USD',
    down_payment_amount: 6700.0,
    fees: [
      Models::Shared::DmsVehiclesaleFee.new(
        cost_amount: 0.0,
        is_capitalized: true,
        name: 'Documentation fee',
        price_amount: 499.0
      ),
      Models::Shared::DmsVehiclesaleFee.new(
        is_capitalized: false,
        name: 'Title and registration',
        price_amount: 392.0
      ),
    ],
    finance: Models::Shared::PropertyDmsVehiclesaleFinance.new(
      financed_amount: 0.0,
      first_payment_at: DateTime.iso8601('2022-08-16T11:37:29.897Z'),
      interest_rate: 6.68,
      lender_name: 'Mueller, Yundt and Murray Financial',
      payment_amount: 339.0,
      payment_frequency: Models::Shared::PaymentFrequency::MONTHLY,
      term_months: 72.0
    ),
    finance_type: Models::Shared::FinanceType::FINANCE,
    id: '3f89399e-041f-4ed9-a414-18674421f1b5',
    metadata: [],
    number: 'D84591',
    products: [
      Models::Shared::DmsVehiclesaleProduct.new(
        contract_number: 'B7JN10GVB7',
        cost_amount: 1320.0,
        name: 'Tire & Wheel',
        price_amount: 3300.0,
        provider: 'Renner and Sons',
        term_months: 60.0,
        type: Models::Shared::DmsVehiclesaleProductType::PROTECTION
      ),
      Models::Shared::DmsVehiclesaleProduct.new(
        contract_number: 'VIZU7K3VRU',
        cost_amount: 1115.0,
        deductible_amount: 100.0,
        name: 'Platinum Vehicle Service Contract',
        price_amount: 3700.0,
        provider: 'Frami, Wisozk and Gleichner',
        term_months: 72.0,
        type: Models::Shared::DmsVehiclesaleProductType::SERVICE_CONTRACT
      ),
    ],
    rebate_amount: 500.0,
    sold_at: DateTime.iso8601('2022-08-14T20:21:55.610Z'),
    source: 'Website',
    status: Models::Shared::DmsVehiclesaleStatus::SOLD,
    tax_amount: 0.0,
    taxes: [
      Models::Shared::DmsVehiclesaleTax.new(
        name: 'State sales tax',
        rate: 8.25,
        total_amount: 0.0
      ),
    ],
    total_amount: 7891.0,
    trade_ins: [],
    type: Models::Shared::DmsVehiclesaleType::RETAIL,
    updated_at: DateTime.iso8601('2025-04-16T21:53:33.496Z'),
    vehicles: []
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.vehiclesale.update_dms_vehiclesale(request: req)

unless res.dms_vehiclesale.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateDmsVehiclesaleRequest](../../models/operations/updatedmsvehiclesalerequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateDmsVehiclesaleResponse)](../../models/operations/updatedmsvehiclesaleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |