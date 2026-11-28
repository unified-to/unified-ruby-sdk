# Vehicle

## Overview

### Available Operations

* [create_dms_vehicle](#create_dms_vehicle) - Create a vehicle
* [get_dms_vehicle](#get_dms_vehicle) - Retrieve a vehicle
* [list_dms_vehicles](#list_dms_vehicles) - List all vehicles
* [patch_dms_vehicle](#patch_dms_vehicle) - Update a vehicle
* [update_dms_vehicle](#update_dms_vehicle) - Update a vehicle

## create_dms_vehicle

Creates a DmsVehicle. Provide the unified DmsVehicle fields in the request body; they are mapped to the provider's API. Returns the created DmsVehicle.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDmsVehicle" method="post" path="/dms/{connection_id}/vehicle" example="dms_vehicle" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.vehicle.create_dms_vehicle(dms_vehicle: Models::Shared::DmsVehicle.new(
  body_style: 'Pickup',
  condition: Models::Shared::Condition::NEW,
  cost_amount: 26_498.0,
  created_at: DateTime.iso8601('2021-02-03T08:01:58.559Z'),
  currency: 'USD',
  description: '2023 Citroën Silverado',
  exterior_color: 'lavender',
  fuel_type: Models::Shared::FuelType::ELECTRIC,
  id: 'a4fc8aff-a106-476c-8601-fa1c48d6e04e',
  image_urls: [
    'https://picsum.photos/seed/tOUr5K/1358/1877',
  ],
  interior_color: 'Black',
  internet_price_amount: 29_526.0,
  is_active: true,
  is_certified: false,
  is_inventory: true,
  is_published: false,
  make: 'Citroën',
  metadata: [],
  model: 'Silverado',
  model_code: 'PMU8KI',
  msrp_amount: 33_100.0,
  odometer: 1.0,
  odometer_unit: Models::Shared::DmsVehicleOdometerUnit::MILES,
  options: [
    Models::Shared::DmsVehicleOption.new(
      code: 'SXE',
      cost_amount: 250.0,
      description: 'Tow package',
      price_amount: 1400.0,
      type: Models::Shared::DmsVehicleOptionType::DEALER
    ),
    Models::Shared::DmsVehicleOption.new(
      code: '458',
      cost_amount: 700.0,
      description: 'Tow package',
      price_amount: 600.0,
      type: Models::Shared::DmsVehicleOptionType::DEALER
    ),
  ],
  price_amount: 29_926.0,
  received_at: DateTime.iso8601('2021-02-03T08:01:58.559Z'),
  status: Models::Shared::DmsVehicleStatus::OTHER,
  stock_number: 'N24959',
  transmission: 'Manual',
  trim: 'Base',
  type: Models::Shared::DmsVehicleType::SUV,
  updated_at: DateTime.iso8601('2023-11-04T01:11:04.963Z'),
  vin: 'C29ZDU474DDR70955',
  warranty_expires_at: DateTime.iso8601('2022-03-28T09:10:09.889Z'),
  year: 2023.0
), connection_id: '<id>')

unless res.dms_vehicle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `dms_vehicle`                                                                                                                                    | [Models::Shared::DmsVehicle](../../models/shared/dmsvehicle.md)                                                                                  | :heavy_check_mark:                                                                                                                               | A vehicle or other dealer unit: dealer stock or a customer-owned vehicle seen by service                                                         |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDmsVehicleQueryParamFields](../../models/operations/createdmsvehiclequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDmsVehicleResponse)](../../models/operations/createdmsvehicleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_dms_vehicle

Retrieves a single DmsVehicle by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDmsVehicle" method="get" path="/dms/{connection_id}/vehicle/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.vehicle.get_dms_vehicle(connection_id: '<id>', id: '<id>')

unless res.dms_vehicle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Vehicle                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDmsVehicleQueryParamFields](../../models/operations/getdmsvehiclequeryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDmsVehicleResponse)](../../models/operations/getdmsvehicleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_dms_vehicles

Returns a list of DmsVehicles. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDmsVehicles" method="get" path="/dms/{connection_id}/vehicle" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListDmsVehiclesRequest.new(
  connection_id: '<id>'
)
res = s.vehicle.list_dms_vehicles(request: req)

unless res.dms_vehicles.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListDmsVehiclesRequest](../../models/operations/listdmsvehiclesrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListDmsVehiclesResponse)](../../models/operations/listdmsvehiclesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_dms_vehicle

Updates the DmsVehicle identified by `id`. Provide the unified DmsVehicle fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDmsVehicle" method="patch" path="/dms/{connection_id}/vehicle/{id}" example="dms_vehicle" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchDmsVehicleRequest.new(
  dms_vehicle: Models::Shared::DmsVehicle.new(
    body_style: 'Pickup',
    condition: Models::Shared::Condition::NEW,
    cost_amount: 26_498.0,
    created_at: DateTime.iso8601('2021-02-03T08:01:58.559Z'),
    currency: 'USD',
    description: '2023 Citroën Silverado',
    exterior_color: 'lavender',
    fuel_type: Models::Shared::FuelType::ELECTRIC,
    id: '57c592a9-91f2-4278-ac47-b269696bf346',
    image_urls: [
      'https://picsum.photos/seed/tOUr5K/1358/1877',
    ],
    interior_color: 'Black',
    internet_price_amount: 29_526.0,
    is_active: true,
    is_certified: false,
    is_inventory: true,
    is_published: false,
    make: 'Citroën',
    metadata: [],
    model: 'Silverado',
    model_code: 'PMU8KI',
    msrp_amount: 33_100.0,
    odometer: 1.0,
    odometer_unit: Models::Shared::DmsVehicleOdometerUnit::MILES,
    options: [
      Models::Shared::DmsVehicleOption.new(
        code: 'SXE',
        cost_amount: 250.0,
        description: 'Tow package',
        price_amount: 1400.0,
        type: Models::Shared::DmsVehicleOptionType::DEALER
      ),
      Models::Shared::DmsVehicleOption.new(
        code: '458',
        cost_amount: 700.0,
        description: 'Tow package',
        price_amount: 600.0,
        type: Models::Shared::DmsVehicleOptionType::DEALER
      ),
    ],
    price_amount: 29_926.0,
    received_at: DateTime.iso8601('2021-02-03T08:01:58.559Z'),
    status: Models::Shared::DmsVehicleStatus::OTHER,
    stock_number: 'N24959',
    transmission: 'Manual',
    trim: 'Base',
    type: Models::Shared::DmsVehicleType::SUV,
    updated_at: DateTime.iso8601('2023-11-04T01:11:04.980Z'),
    vin: 'C29ZDU474DDR70955',
    warranty_expires_at: DateTime.iso8601('2022-03-28T09:10:09.889Z'),
    year: 2023.0
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.vehicle.patch_dms_vehicle(request: req)

unless res.dms_vehicle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchDmsVehicleRequest](../../models/operations/patchdmsvehiclerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchDmsVehicleResponse)](../../models/operations/patchdmsvehicleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_dms_vehicle

Updates the DmsVehicle identified by `id`. Provide the unified DmsVehicle fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDmsVehicle" method="put" path="/dms/{connection_id}/vehicle/{id}" example="dms_vehicle" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateDmsVehicleRequest.new(
  dms_vehicle: Models::Shared::DmsVehicle.new(
    body_style: 'Pickup',
    condition: Models::Shared::Condition::NEW,
    cost_amount: 26_498.0,
    created_at: DateTime.iso8601('2021-02-03T08:01:58.559Z'),
    currency: 'USD',
    description: '2023 Citroën Silverado',
    exterior_color: 'lavender',
    fuel_type: Models::Shared::FuelType::ELECTRIC,
    id: '57c592a9-91f2-4278-ac47-b269696bf346',
    image_urls: [
      'https://picsum.photos/seed/tOUr5K/1358/1877',
    ],
    interior_color: 'Black',
    internet_price_amount: 29_526.0,
    is_active: true,
    is_certified: false,
    is_inventory: true,
    is_published: false,
    make: 'Citroën',
    metadata: [],
    model: 'Silverado',
    model_code: 'PMU8KI',
    msrp_amount: 33_100.0,
    odometer: 1.0,
    odometer_unit: Models::Shared::DmsVehicleOdometerUnit::MILES,
    options: [
      Models::Shared::DmsVehicleOption.new(
        code: 'SXE',
        cost_amount: 250.0,
        description: 'Tow package',
        price_amount: 1400.0,
        type: Models::Shared::DmsVehicleOptionType::DEALER
      ),
      Models::Shared::DmsVehicleOption.new(
        code: '458',
        cost_amount: 700.0,
        description: 'Tow package',
        price_amount: 600.0,
        type: Models::Shared::DmsVehicleOptionType::DEALER
      ),
    ],
    price_amount: 29_926.0,
    received_at: DateTime.iso8601('2021-02-03T08:01:58.559Z'),
    status: Models::Shared::DmsVehicleStatus::OTHER,
    stock_number: 'N24959',
    transmission: 'Manual',
    trim: 'Base',
    type: Models::Shared::DmsVehicleType::SUV,
    updated_at: DateTime.iso8601('2023-11-04T01:11:04.980Z'),
    vin: 'C29ZDU474DDR70955',
    warranty_expires_at: DateTime.iso8601('2022-03-28T09:10:09.889Z'),
    year: 2023.0
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.vehicle.update_dms_vehicle(request: req)

unless res.dms_vehicle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateDmsVehicleRequest](../../models/operations/updatedmsvehiclerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateDmsVehicleResponse)](../../models/operations/updatedmsvehicleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |