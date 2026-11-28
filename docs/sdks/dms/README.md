# Dms

## Overview

### Available Operations

* [create_dms_appointment](#create_dms_appointment) - Create an appointment
* [create_dms_opcode](#create_dms_opcode) - Create an opcode
* [create_dms_part](#create_dms_part) - Create a part
* [create_dms_partsale](#create_dms_partsale) - Create a partsale
* [create_dms_repairorder](#create_dms_repairorder) - Create a repairorder
* [create_dms_vehicle](#create_dms_vehicle) - Create a vehicle
* [create_dms_vehiclesale](#create_dms_vehiclesale) - Create a vehiclesale
* [get_dms_appointment](#get_dms_appointment) - Retrieve an appointment
* [get_dms_opcode](#get_dms_opcode) - Retrieve an opcode
* [get_dms_part](#get_dms_part) - Retrieve a part
* [get_dms_partsale](#get_dms_partsale) - Retrieve a partsale
* [get_dms_repairorder](#get_dms_repairorder) - Retrieve a repairorder
* [get_dms_vehicle](#get_dms_vehicle) - Retrieve a vehicle
* [get_dms_vehiclesale](#get_dms_vehiclesale) - Retrieve a vehiclesale
* [list_dms_appointments](#list_dms_appointments) - List all appointments
* [list_dms_opcodes](#list_dms_opcodes) - List all opcodes
* [list_dms_parts](#list_dms_parts) - List all parts
* [list_dms_partsales](#list_dms_partsales) - List all partsales
* [list_dms_repairorders](#list_dms_repairorders) - List all repairorders
* [list_dms_vehicles](#list_dms_vehicles) - List all vehicles
* [list_dms_vehiclesales](#list_dms_vehiclesales) - List all vehiclesales
* [patch_dms_appointment](#patch_dms_appointment) - Update an appointment
* [patch_dms_opcode](#patch_dms_opcode) - Update an opcode
* [patch_dms_part](#patch_dms_part) - Update a part
* [patch_dms_partsale](#patch_dms_partsale) - Update a partsale
* [patch_dms_repairorder](#patch_dms_repairorder) - Update a repairorder
* [patch_dms_vehicle](#patch_dms_vehicle) - Update a vehicle
* [patch_dms_vehiclesale](#patch_dms_vehiclesale) - Update a vehiclesale
* [remove_dms_appointment](#remove_dms_appointment) - Remove an appointment
* [update_dms_appointment](#update_dms_appointment) - Update an appointment
* [update_dms_opcode](#update_dms_opcode) - Update an opcode
* [update_dms_part](#update_dms_part) - Update a part
* [update_dms_partsale](#update_dms_partsale) - Update a partsale
* [update_dms_repairorder](#update_dms_repairorder) - Update a repairorder
* [update_dms_vehicle](#update_dms_vehicle) - Update a vehicle
* [update_dms_vehiclesale](#update_dms_vehiclesale) - Update a vehiclesale

## create_dms_appointment

Creates a DmsAppointment. Provide the unified DmsAppointment fields in the request body; they are mapped to the provider's API. Returns the created DmsAppointment.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDmsAppointment" method="post" path="/dms/{connection_id}/appointment" example="dms_appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.dms.create_dms_appointment(dms_appointment: Models::Shared::DmsAppointment.new(
  created_at: DateTime.iso8601('2023-10-16T02:56:45.127Z'),
  end_at: DateTime.iso8601('2026-05-08T22:22:34.004Z'),
  id: '9b4e8134-b493-497b-8918-dd53d8edabcb',
  metadata: [],
  notes: 'Soluta conitor timidus confero.',
  number: 'A541909',
  services: [
    Models::Shared::DmsAppointmentService.new(
      id: 'bcb8405f-0ce5-46d3-97fe-1e3695df9412',
      name: 'Customer concern',
      pay_type: Models::Shared::PayType::WARRANTY,
      technician_user_ids: []
    ),
    Models::Shared::DmsAppointmentService.new(
      complaint: 'Check engine light on',
      id: 'e95d44f5-12e4-4716-b6d8-ed180ff0289e',
      name: 'Customer concern',
      pay_type: Models::Shared::PayType::CUSTOMER,
      technician_user_ids: []
    ),
    Models::Shared::DmsAppointmentService.new(
      complaint: 'Due for service',
      id: '017adc1b-0c70-476a-9d33-84a29233e1b9',
      name: 'Customer concern',
      pay_type: Models::Shared::PayType::CUSTOMER,
      technician_user_ids: []
    ),
  ],
  start_at: DateTime.iso8601('2026-05-08T15:22:34.004Z'),
  status: Models::Shared::DmsAppointmentStatus::CANCELLED,
  transport_type: Models::Shared::TransportType::LOANER,
  updated_at: DateTime.iso8601('2025-04-07T03:51:48.544Z')
), connection_id: '<id>')

unless res.dms_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `dms_appointment`                                                                                                                                | [Models::Shared::DmsAppointment](../../models/shared/dmsappointment.md)                                                                          | :heavy_check_mark:                                                                                                                               | A service appointment (booking)                                                                                                                  |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDmsAppointmentQueryParamFields](../../models/operations/createdmsappointmentqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDmsAppointmentResponse)](../../models/operations/createdmsappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_dms_opcode

Creates a DmsOpcode. Provide the unified DmsOpcode fields in the request body; they are mapped to the provider's API. Returns the created DmsOpcode.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDmsOpcode" method="post" path="/dms/{connection_id}/opcode" example="dms_opcode" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.dms.create_dms_opcode(dms_opcode: Models::Shared::DmsOpcode.new(
  category: 'Electrical',
  code: '02AUS',
  created_at: DateTime.iso8601('2021-01-12T19:03:17.545Z'),
  currency: 'USD',
  description: 'Oil and filter change',
  estimated_hours: 3.2,
  flat_rate_hours: 3.5,
  id: '66a89375-6c78-43ed-8ed1-47a9cba36b0e',
  is_active: true,
  labor_rate_amount: 216.0,
  metadata: [],
  oem_code: '05604A3',
  parts: [],
  pay_type: Models::Shared::DmsOpcodePayType::CUSTOMER,
  skill_code: 'A',
  type: Models::Shared::DmsOpcodeType::LABOR,
  updated_at: DateTime.iso8601('2021-11-03T19:06:59.496Z')
), connection_id: '<id>')

unless res.dms_opcode.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `dms_opcode`                                                                                                                                     | [Models::Shared::DmsOpcode](../../models/shared/dmsopcode.md)                                                                                    | :heavy_check_mark:                                                                                                                               | A service operation code (labor operation, menu or standard repair time)                                                                         |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDmsOpcodeQueryParamFields](../../models/operations/createdmsopcodequeryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDmsOpcodeResponse)](../../models/operations/createdmsopcoderesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_dms_part

Creates a DmsPart. Provide the unified DmsPart fields in the request body; they are mapped to the provider's API. Returns the created DmsPart.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDmsPart" method="post" path="/dms/{connection_id}/part" example="dms_part" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.dms.create_dms_part(dms_part: Models::Shared::DmsPart.new(
  bin_locations: [
    'S18-6',
  ],
  category: 'Ignition',
  cost_amount: 25.26,
  created_at: DateTime.iso8601('2020-07-02T08:18:03.858Z'),
  currency: 'USD',
  description: 'Cabin filter',
  id: '631df860-8f82-4a04-9f8b-0a46977d78a4',
  last_sold_at: DateTime.iso8601('2020-11-23T06:01:47.636Z'),
  list_price_amount: 39.61,
  manufacturer_code: 'TOY',
  max_stock_quantity: 21.0,
  metadata: [],
  min_stock_quantity: 3.0,
  pack_quantity: 1.0,
  part_number: '73992-IM3FI',
  quantity_available: 13.0,
  quantity_on_hand: 15.0,
  quantity_on_order: 14.0,
  source_code: '30',
  trade_price_amount: 29.05,
  updated_at: DateTime.iso8601('2023-11-23T19:48:48.216Z')
), connection_id: '<id>')

unless res.dms_part.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `dms_part`                                                                                                                                       | [Models::Shared::DmsPart](../../models/shared/dmspart.md)                                                                                        | :heavy_check_mark:                                                                                                                               | A part in the dealer parts inventory                                                                                                             |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDmsPartQueryParamFields](../../models/operations/createdmspartqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDmsPartResponse)](../../models/operations/createdmspartresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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
res = s.dms.create_dms_partsale(dms_partsale: Models::Shared::DmsPartsale.new(
  cost_amount: 0.0,
  created_at: DateTime.iso8601('2023-05-22T03:39:30.335Z'),
  currency: 'USD',
  discount_amount: 0.0,
  freight_amount: 0.0,
  id: 'bca252e9-9f6b-45b2-bce4-c350cbb06dd5',
  lines: [
    Models::Shared::DmsPartline.new(
      id: '1d5d8ae5-239e-43f1-8bea-b208d21944d5',
      pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
      quantity: 5.0,
      quantity_ordered: 5.0,
      total_amount: 491.45,
      unit_price_amount: 98.29
    ),
    Models::Shared::DmsPartline.new(
      id: 'a9b62a56-a99d-4b31-b47a-298136e7ffca',
      pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
      quantity: 2.0,
      quantity_ordered: 2.0,
      total_amount: 240.9,
      unit_price_amount: 120.45
    ),
    Models::Shared::DmsPartline.new(
      id: 'd6150f89-c6bb-4d41-8c84-c512b6ae1c20',
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
  updated_at: DateTime.iso8601('2026-04-19T09:07:12.570Z')
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

## create_dms_repairorder

Creates a DmsRepairorder. Provide the unified DmsRepairorder fields in the request body; they are mapped to the provider's API. Returns the created DmsRepairorder.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDmsRepairorder" method="post" path="/dms/{connection_id}/repairorder" example="dms_repairorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.dms.create_dms_repairorder(dms_repairorder: Models::Shared::DmsRepairorder.new(
  balance_amount: 3193.86,
  completed_at: DateTime.iso8601('2026-11-14T20:31:17.647Z'),
  created_at: DateTime.iso8601('2022-10-25T15:50:48.007Z'),
  currency: 'USD',
  discount_amount: 0.0,
  estimate_amount: 3264.0,
  id: 'ca22ea94-d52c-42b9-908b-bd1d49bb3384',
  jobs: [
    Models::Shared::DmsRepairorderJob.new(
      actual_hours: 3.6,
      cause: 'Scheduled maintenance',
      complaint: 'Due for service',
      correction: 'Aufero cumque vicinus aptus assumenda quis aptus.',
      id: 'e6e34191-b603-4579-8d0e-b0c703c50913',
      labor_amount: 681.6,
      labors: [
        Models::Shared::DmsRepairorderLabor.new(
          id: '12f8fff0-e687-41bc-8973-9cc56a8227e2',
          pay_type: Models::Shared::DmsRepairorderLaborPayType::WARRANTY,
          rate_amount: 213.0,
          sold_hours: 3.2,
          technician_user_ids: [],
          total_amount: 681.6
        ),
      ],
      name: 'Customer concern',
      number: 'A',
      parts: [],
      parts_amount: 0.0,
      pay_type: Models::Shared::DmsRepairorderJobPayType::WARRANTY,
      sold_hours: 3.2,
      status: Models::Shared::DmsRepairorderJobStatus::COMPLETED,
      technician_user_ids: [],
      total_amount: 681.6
    ),
    Models::Shared::DmsRepairorderJob.new(
      actual_hours: 3.0,
      cause: 'Worn brake pads',
      complaint: 'Vibration at highway speed',
      correction: 'Somnus avaritia utroque vulnero ullam ancilla.',
      id: '659a2ea4-e51d-45f4-9e07-6973a1986ed1',
      labor_amount: 446.4,
      labors: [
        Models::Shared::DmsRepairorderLabor.new(
          id: 'de0390c5-df31-4fa2-a2c7-d2231368f3af',
          pay_type: Models::Shared::DmsRepairorderLaborPayType::WARRANTY,
          rate_amount: 144.0,
          sold_hours: 3.1,
          technician_user_ids: [],
          total_amount: 446.4
        ),
      ],
      name: 'Customer concern',
      number: 'B',
      parts: [
        Models::Shared::DmsPartline.new(
          id: '83286632-8a86-4a27-91b4-46066e9ccb62',
          pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
          quantity: 4.0,
          quantity_ordered: 4.0,
          total_amount: 890.44,
          unit_price_amount: 222.61
        ),
        Models::Shared::DmsPartline.new(
          id: 'fd9b437e-7971-4ea4-8bdf-b6015e261b1a',
          pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
          quantity: 2.0,
          quantity_ordered: 2.0,
          total_amount: 216.18,
          unit_price_amount: 108.09
        ),
      ],
      parts_amount: 1106.6_200_000_000_001,
      pay_type: Models::Shared::DmsRepairorderJobPayType::WARRANTY,
      sold_hours: 3.1,
      status: Models::Shared::DmsRepairorderJobStatus::COMPLETED,
      technician_user_ids: [],
      total_amount: 1553.02
    ),
    Models::Shared::DmsRepairorderJob.new(
      actual_hours: 1.5,
      cause: 'Scheduled maintenance',
      complaint: 'Noise when braking',
      correction: 'Degero theca natus.',
      id: '499ac9ef-56b8-4ed7-9fb7-7fc1ac665bae',
      labor_amount: 232.4,
      labors: [
        Models::Shared::DmsRepairorderLabor.new(
          id: 'a4732ded-1dce-4df4-9f00-911437eac059',
          pay_type: Models::Shared::DmsRepairorderLaborPayType::CUSTOMER,
          rate_amount: 166.0,
          sold_hours: 1.4,
          technician_user_ids: [],
          total_amount: 232.4
        ),
      ],
      name: 'Customer concern',
      number: 'C',
      parts: [
        Models::Shared::DmsPartline.new(
          id: 'fc4e60cc-ed7b-41ef-bc90-1b9ebc550a71',
          pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
          quantity: 1.0,
          quantity_ordered: 1.0,
          total_amount: 216.02,
          unit_price_amount: 216.02
        ),
        Models::Shared::DmsPartline.new(
          id: '533a5c08-f8f9-49d0-95e9-c0b9a5acf8b3',
          pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
          quantity: 2.0,
          quantity_ordered: 2.0,
          total_amount: 358.16,
          unit_price_amount: 179.08
        ),
      ],
      parts_amount: 574.1_800_000_000_001,
      pay_type: Models::Shared::DmsRepairorderJobPayType::CUSTOMER,
      sold_hours: 1.4,
      status: Models::Shared::DmsRepairorderJobStatus::COMPLETED,
      technician_user_ids: [],
      total_amount: 806.58
    ),
  ],
  labor_amount: 1360.4,
  metadata: [],
  misc_amount: 35.0,
  number: '143398',
  odometer_in: 7776.0,
  odometer_out: 7776.0,
  odometer_unit: Models::Shared::DmsRepairorderOdometerUnit::MILES,
  opened_at: DateTime.iso8601('2025-02-08T23:02:53.871Z'),
  parts_amount: 1680.8_000_000_000_002,
  pay_type: Models::Shared::DmsRepairorderPayType::WARRANTY,
  promised_at: DateTime.iso8601('2025-02-10T07:02:53.871Z'),
  purchase_order_number: '182743',
  status: Models::Shared::DmsRepairorderStatus::COMPLETED,
  sublet_amount: 0.0,
  tag_number: '758',
  tax_amount: 117.66,
  technician_user_ids: [],
  total_amount: 3193.86,
  totals: [
    Models::Shared::DmsRepairorderTotal.new(
      discount_amount: 0.0,
      labor_amount: 232.4,
      parts_amount: 574.1_800_000_000_001,
      pay_type: Models::Shared::DmsRepairorderTotalPayType::CUSTOMER,
      sublet_amount: 0.0,
      total_amount: 806.58
    ),
    Models::Shared::DmsRepairorderTotal.new(
      discount_amount: 0.0,
      labor_amount: 1128.0,
      parts_amount: 1106.6_200_000_000_001,
      pay_type: Models::Shared::DmsRepairorderTotalPayType::WARRANTY,
      sublet_amount: 0.0,
      total_amount: 2234.62
    ),
  ],
  transport_type: Models::Shared::DmsRepairorderTransportType::LOANER,
  updated_at: DateTime.iso8601('2025-11-29T11:40:37.815Z')
), connection_id: '<id>')

unless res.dms_repairorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `dms_repairorder`                                                                                                                                | [Models::Shared::DmsRepairorder](../../models/shared/dmsrepairorder.md)                                                                          | :heavy_check_mark:                                                                                                                               | A service repair order (work order) for one vehicle visit                                                                                        |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateDmsRepairorderQueryParamFields](../../models/operations/createdmsrepairorderqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateDmsRepairorderResponse)](../../models/operations/createdmsrepairorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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
res = s.dms.create_dms_vehicle(dms_vehicle: Models::Shared::DmsVehicle.new(
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
res = s.dms.create_dms_vehiclesale(dms_vehiclesale: Models::Shared::DmsVehiclesale.new(
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
    first_payment_at: DateTime.iso8601('2022-08-16T20:08:55.009Z'),
    interest_rate: 6.68,
    lender_name: 'Mueller, Yundt and Murray Financial',
    payment_amount: 339.0,
    payment_frequency: Models::Shared::PaymentFrequency::MONTHLY,
    term_months: 72.0
  ),
  finance_type: Models::Shared::FinanceType::FINANCE,
  id: '463f3491-b40d-4e85-8594-285725553d79',
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
  sold_at: DateTime.iso8601('2022-08-15T04:53:20.722Z'),
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
  updated_at: DateTime.iso8601('2025-04-17T16:02:23.436Z'),
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

## get_dms_appointment

Retrieves a single DmsAppointment by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDmsAppointment" method="get" path="/dms/{connection_id}/appointment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.dms.get_dms_appointment(connection_id: '<id>', id: '<id>')

unless res.dms_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Appointment                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDmsAppointmentQueryParamFields](../../models/operations/getdmsappointmentqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDmsAppointmentResponse)](../../models/operations/getdmsappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_dms_opcode

Retrieves a single DmsOpcode by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDmsOpcode" method="get" path="/dms/{connection_id}/opcode/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.dms.get_dms_opcode(connection_id: '<id>', id: '<id>')

unless res.dms_opcode.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Opcode                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDmsOpcodeQueryParamFields](../../models/operations/getdmsopcodequeryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDmsOpcodeResponse)](../../models/operations/getdmsopcoderesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_dms_part

Retrieves a single DmsPart by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDmsPart" method="get" path="/dms/{connection_id}/part/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.dms.get_dms_part(connection_id: '<id>', id: '<id>')

unless res.dms_part.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Part                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDmsPartQueryParamFields](../../models/operations/getdmspartqueryparamfields.md)>                                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDmsPartResponse)](../../models/operations/getdmspartresponse.md)**

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
res = s.dms.get_dms_partsale(connection_id: '<id>', id: '<id>')

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

## get_dms_repairorder

Retrieves a single DmsRepairorder by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getDmsRepairorder" method="get" path="/dms/{connection_id}/repairorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.dms.get_dms_repairorder(connection_id: '<id>', id: '<id>')

unless res.dms_repairorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Repairorder                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetDmsRepairorderQueryParamFields](../../models/operations/getdmsrepairorderqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetDmsRepairorderResponse)](../../models/operations/getdmsrepairorderresponse.md)**

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
res = s.dms.get_dms_vehicle(connection_id: '<id>', id: '<id>')

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
res = s.dms.get_dms_vehiclesale(connection_id: '<id>', id: '<id>')

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

## list_dms_appointments

Returns a list of DmsAppointments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDmsAppointments" method="get" path="/dms/{connection_id}/appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListDmsAppointmentsRequest.new(
  connection_id: '<id>'
)
res = s.dms.list_dms_appointments(request: req)

unless res.dms_appointments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListDmsAppointmentsRequest](../../models/operations/listdmsappointmentsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListDmsAppointmentsResponse)](../../models/operations/listdmsappointmentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_dms_opcodes

Returns a list of DmsOpcodes. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDmsOpcodes" method="get" path="/dms/{connection_id}/opcode" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListDmsOpcodesRequest.new(
  connection_id: '<id>'
)
res = s.dms.list_dms_opcodes(request: req)

unless res.dms_opcodes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListDmsOpcodesRequest](../../models/operations/listdmsopcodesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListDmsOpcodesResponse)](../../models/operations/listdmsopcodesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_dms_parts

Returns a list of DmsParts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDmsParts" method="get" path="/dms/{connection_id}/part" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListDmsPartsRequest.new(
  connection_id: '<id>'
)
res = s.dms.list_dms_parts(request: req)

unless res.dms_parts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListDmsPartsRequest](../../models/operations/listdmspartsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListDmsPartsResponse)](../../models/operations/listdmspartsresponse.md)**

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
res = s.dms.list_dms_partsales(request: req)

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

## list_dms_repairorders

Returns a list of DmsRepairorders. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listDmsRepairorders" method="get" path="/dms/{connection_id}/repairorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListDmsRepairordersRequest.new(
  connection_id: '<id>'
)
res = s.dms.list_dms_repairorders(request: req)

unless res.dms_repairorders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListDmsRepairordersRequest](../../models/operations/listdmsrepairordersrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListDmsRepairordersResponse)](../../models/operations/listdmsrepairordersresponse.md)**

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
res = s.dms.list_dms_vehicles(request: req)

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
res = s.dms.list_dms_vehiclesales(request: req)

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

## patch_dms_appointment

Updates the DmsAppointment identified by `id`. Provide the unified DmsAppointment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDmsAppointment" method="patch" path="/dms/{connection_id}/appointment/{id}" example="dms_appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchDmsAppointmentRequest.new(
  dms_appointment: Models::Shared::DmsAppointment.new(
    created_at: DateTime.iso8601('2023-10-16T02:56:45.127Z'),
    end_at: DateTime.iso8601('2026-05-08T22:22:34.022Z'),
    id: '37f2bc4f-e216-4e87-af75-28b191349fa4',
    metadata: [],
    notes: 'Soluta conitor timidus confero.',
    number: 'A541909',
    services: [
      Models::Shared::DmsAppointmentService.new(
        id: '077a6ee3-159c-4b9c-9e17-422c9b4fc33d',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::WARRANTY,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Check engine light on',
        id: '307d9e0f-7f83-4f0c-b508-64417bc0d704',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Due for service',
        id: 'c8eec44c-eaae-4a04-971d-4448bc6c0fe4',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
    ],
    start_at: DateTime.iso8601('2026-05-08T15:22:34.022Z'),
    status: Models::Shared::DmsAppointmentStatus::CANCELLED,
    transport_type: Models::Shared::TransportType::LOANER,
    updated_at: DateTime.iso8601('2025-04-07T03:51:48.554Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.patch_dms_appointment(request: req)

unless res.dms_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchDmsAppointmentRequest](../../models/operations/patchdmsappointmentrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchDmsAppointmentResponse)](../../models/operations/patchdmsappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_dms_opcode

Updates the DmsOpcode identified by `id`. Provide the unified DmsOpcode fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDmsOpcode" method="patch" path="/dms/{connection_id}/opcode/{id}" example="dms_opcode" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchDmsOpcodeRequest.new(
  dms_opcode: Models::Shared::DmsOpcode.new(
    category: 'Electrical',
    code: '02AUS',
    created_at: DateTime.iso8601('2021-01-12T19:03:17.545Z'),
    currency: 'USD',
    description: 'Oil and filter change',
    estimated_hours: 3.2,
    flat_rate_hours: 3.5,
    id: 'a00a0c51-3231-4a93-974f-5f1dcae5d599',
    is_active: true,
    labor_rate_amount: 216.0,
    metadata: [],
    oem_code: '05604A3',
    parts: [],
    pay_type: Models::Shared::DmsOpcodePayType::CUSTOMER,
    skill_code: 'A',
    type: Models::Shared::DmsOpcodeType::LABOR,
    updated_at: DateTime.iso8601('2021-11-03T19:06:59.500Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.patch_dms_opcode(request: req)

unless res.dms_opcode.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchDmsOpcodeRequest](../../models/operations/patchdmsopcoderequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchDmsOpcodeResponse)](../../models/operations/patchdmsopcoderesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_dms_part

Updates the DmsPart identified by `id`. Provide the unified DmsPart fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDmsPart" method="patch" path="/dms/{connection_id}/part/{id}" example="dms_part" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchDmsPartRequest.new(
  dms_part: Models::Shared::DmsPart.new(
    bin_locations: [
      'S18-6',
    ],
    category: 'Ignition',
    cost_amount: 25.26,
    created_at: DateTime.iso8601('2020-07-02T08:18:03.858Z'),
    currency: 'USD',
    description: 'Cabin filter',
    id: '65d32cfa-532a-4bf5-93c7-d84f150934da',
    last_sold_at: DateTime.iso8601('2020-11-23T06:01:47.637Z'),
    list_price_amount: 39.61,
    manufacturer_code: 'TOY',
    max_stock_quantity: 21.0,
    metadata: [],
    min_stock_quantity: 3.0,
    pack_quantity: 1.0,
    part_number: '73992-IM3FI',
    quantity_available: 13.0,
    quantity_on_hand: 15.0,
    quantity_on_order: 14.0,
    source_code: '30',
    trade_price_amount: 29.05,
    updated_at: DateTime.iso8601('2023-11-23T19:48:48.226Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.patch_dms_part(request: req)

unless res.dms_part.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::PatchDmsPartRequest](../../models/operations/patchdmspartrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::PatchDmsPartResponse)](../../models/operations/patchdmspartresponse.md)**

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
    id: '5802d267-3c50-4214-a7e4-05b55c6fbea0',
    lines: [
      Models::Shared::DmsPartline.new(
        id: '63d042ef-f665-4790-b12b-8e37a4dacec7',
        pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
        quantity: 5.0,
        quantity_ordered: 5.0,
        total_amount: 491.45,
        unit_price_amount: 98.29
      ),
      Models::Shared::DmsPartline.new(
        id: '93c525db-8b79-4fb4-a430-c72cf46a3a7d',
        pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
        quantity: 2.0,
        quantity_ordered: 2.0,
        total_amount: 240.9,
        unit_price_amount: 120.45
      ),
      Models::Shared::DmsPartline.new(
        id: '6fa447aa-d204-48e8-b568-b7c5aaf04a5c',
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
    updated_at: DateTime.iso8601('2026-04-19T09:07:12.597Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.patch_dms_partsale(request: req)

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

## patch_dms_repairorder

Updates the DmsRepairorder identified by `id`. Provide the unified DmsRepairorder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchDmsRepairorder" method="patch" path="/dms/{connection_id}/repairorder/{id}" example="dms_repairorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchDmsRepairorderRequest.new(
  dms_repairorder: Models::Shared::DmsRepairorder.new(
    balance_amount: 3193.86,
    completed_at: DateTime.iso8601('2026-11-14T20:31:17.702Z'),
    created_at: DateTime.iso8601('2022-10-25T15:50:48.007Z'),
    currency: 'USD',
    discount_amount: 0.0,
    estimate_amount: 3264.0,
    id: '8a1a76ae-bd85-49f7-86ba-1a1d05f85b3c',
    jobs: [
      Models::Shared::DmsRepairorderJob.new(
        actual_hours: 3.6,
        cause: 'Scheduled maintenance',
        complaint: 'Due for service',
        correction: 'Aufero cumque vicinus aptus assumenda quis aptus.',
        id: 'b9cecaed-2043-442c-a422-6bc4341bd3ae',
        labor_amount: 681.6,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: '7c865390-c20a-47b6-a4ec-3cff9faa270b',
            pay_type: Models::Shared::DmsRepairorderLaborPayType::WARRANTY,
            rate_amount: 213.0,
            sold_hours: 3.2,
            technician_user_ids: [],
            total_amount: 681.6
          ),
        ],
        name: 'Customer concern',
        number: 'A',
        parts: [],
        parts_amount: 0.0,
        pay_type: Models::Shared::DmsRepairorderJobPayType::WARRANTY,
        sold_hours: 3.2,
        status: Models::Shared::DmsRepairorderJobStatus::COMPLETED,
        technician_user_ids: [],
        total_amount: 681.6
      ),
      Models::Shared::DmsRepairorderJob.new(
        actual_hours: 3.0,
        cause: 'Worn brake pads',
        complaint: 'Vibration at highway speed',
        correction: 'Somnus avaritia utroque vulnero ullam ancilla.',
        id: '7ead4c92-c24e-4b7a-8ad3-a019528a5565',
        labor_amount: 446.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: 'ae8450dd-c9da-4de9-8c75-78daf73d6b1d',
            pay_type: Models::Shared::DmsRepairorderLaborPayType::WARRANTY,
            rate_amount: 144.0,
            sold_hours: 3.1,
            technician_user_ids: [],
            total_amount: 446.4
          ),
        ],
        name: 'Customer concern',
        number: 'B',
        parts: [
          Models::Shared::DmsPartline.new(
            id: '06173ad0-2a41-4163-b31f-77e9304c094f',
            pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
            quantity: 4.0,
            quantity_ordered: 4.0,
            total_amount: 890.44,
            unit_price_amount: 222.61
          ),
          Models::Shared::DmsPartline.new(
            id: '60660713-d52b-4294-a9f8-e9d88844c842',
            pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
            quantity: 2.0,
            quantity_ordered: 2.0,
            total_amount: 216.18,
            unit_price_amount: 108.09
          ),
        ],
        parts_amount: 1106.6_200_000_000_001,
        pay_type: Models::Shared::DmsRepairorderJobPayType::WARRANTY,
        sold_hours: 3.1,
        status: Models::Shared::DmsRepairorderJobStatus::COMPLETED,
        technician_user_ids: [],
        total_amount: 1553.02
      ),
      Models::Shared::DmsRepairorderJob.new(
        actual_hours: 1.5,
        cause: 'Scheduled maintenance',
        complaint: 'Noise when braking',
        correction: 'Degero theca natus.',
        id: '6dd97c4b-9018-4162-9f39-a3142bd8b8e1',
        labor_amount: 232.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: 'be71c310-2a02-4cba-ab02-55a6a8c07cdd',
            pay_type: Models::Shared::DmsRepairorderLaborPayType::CUSTOMER,
            rate_amount: 166.0,
            sold_hours: 1.4,
            technician_user_ids: [],
            total_amount: 232.4
          ),
        ],
        name: 'Customer concern',
        number: 'C',
        parts: [
          Models::Shared::DmsPartline.new(
            id: 'ecd8655b-bb22-401b-a16b-35996860a6db',
            pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
            quantity: 1.0,
            quantity_ordered: 1.0,
            total_amount: 216.02,
            unit_price_amount: 216.02
          ),
          Models::Shared::DmsPartline.new(
            id: 'cf8ac799-9e6c-46ee-85a8-f60d5d60fcb6',
            pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
            quantity: 2.0,
            quantity_ordered: 2.0,
            total_amount: 358.16,
            unit_price_amount: 179.08
          ),
        ],
        parts_amount: 574.1_800_000_000_001,
        pay_type: Models::Shared::DmsRepairorderJobPayType::CUSTOMER,
        sold_hours: 1.4,
        status: Models::Shared::DmsRepairorderJobStatus::COMPLETED,
        technician_user_ids: [],
        total_amount: 806.58
      ),
    ],
    labor_amount: 1360.4,
    metadata: [],
    misc_amount: 35.0,
    number: '143398',
    odometer_in: 7776.0,
    odometer_out: 7776.0,
    odometer_unit: Models::Shared::DmsRepairorderOdometerUnit::MILES,
    opened_at: DateTime.iso8601('2025-02-08T23:02:53.902Z'),
    parts_amount: 1680.8_000_000_000_002,
    pay_type: Models::Shared::DmsRepairorderPayType::WARRANTY,
    promised_at: DateTime.iso8601('2025-02-10T07:02:53.902Z'),
    purchase_order_number: '182743',
    status: Models::Shared::DmsRepairorderStatus::COMPLETED,
    sublet_amount: 0.0,
    tag_number: '758',
    tax_amount: 117.66,
    technician_user_ids: [],
    total_amount: 3193.86,
    totals: [
      Models::Shared::DmsRepairorderTotal.new(
        discount_amount: 0.0,
        labor_amount: 232.4,
        parts_amount: 574.1_800_000_000_001,
        pay_type: Models::Shared::DmsRepairorderTotalPayType::CUSTOMER,
        sublet_amount: 0.0,
        total_amount: 806.58
      ),
      Models::Shared::DmsRepairorderTotal.new(
        discount_amount: 0.0,
        labor_amount: 1128.0,
        parts_amount: 1106.6_200_000_000_001,
        pay_type: Models::Shared::DmsRepairorderTotalPayType::WARRANTY,
        sublet_amount: 0.0,
        total_amount: 2234.62
      ),
    ],
    transport_type: Models::Shared::DmsRepairorderTransportType::LOANER,
    updated_at: DateTime.iso8601('2025-11-29T11:40:37.857Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.patch_dms_repairorder(request: req)

unless res.dms_repairorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchDmsRepairorderRequest](../../models/operations/patchdmsrepairorderrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchDmsRepairorderResponse)](../../models/operations/patchdmsrepairorderresponse.md)**

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
res = s.dms.patch_dms_vehicle(request: req)

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
      first_payment_at: DateTime.iso8601('2022-08-16T20:08:55.028Z'),
      interest_rate: 6.68,
      lender_name: 'Mueller, Yundt and Murray Financial',
      payment_amount: 339.0,
      payment_frequency: Models::Shared::PaymentFrequency::MONTHLY,
      term_months: 72.0
    ),
    finance_type: Models::Shared::FinanceType::FINANCE,
    id: 'd33585c7-06db-40fc-8912-ac9c20fea71a',
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
    sold_at: DateTime.iso8601('2022-08-15T04:53:20.741Z'),
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
    updated_at: DateTime.iso8601('2025-04-17T16:02:23.477Z'),
    vehicles: []
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.patch_dms_vehiclesale(request: req)

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

## remove_dms_appointment

Deletes the DmsAppointment identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeDmsAppointment" method="delete" path="/dms/{connection_id}/appointment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.dms.remove_dms_appointment(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Appointment |

### Response

**[T.nilable(Models::Operations::RemoveDmsAppointmentResponse)](../../models/operations/removedmsappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_dms_appointment

Updates the DmsAppointment identified by `id`. Provide the unified DmsAppointment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDmsAppointment" method="put" path="/dms/{connection_id}/appointment/{id}" example="dms_appointment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateDmsAppointmentRequest.new(
  dms_appointment: Models::Shared::DmsAppointment.new(
    created_at: DateTime.iso8601('2023-10-16T02:56:45.127Z'),
    end_at: DateTime.iso8601('2026-05-08T22:22:34.022Z'),
    id: '37f2bc4f-e216-4e87-af75-28b191349fa4',
    metadata: [],
    notes: 'Soluta conitor timidus confero.',
    number: 'A541909',
    services: [
      Models::Shared::DmsAppointmentService.new(
        id: '077a6ee3-159c-4b9c-9e17-422c9b4fc33d',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::WARRANTY,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Check engine light on',
        id: '307d9e0f-7f83-4f0c-b508-64417bc0d704',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
      Models::Shared::DmsAppointmentService.new(
        complaint: 'Due for service',
        id: 'c8eec44c-eaae-4a04-971d-4448bc6c0fe4',
        name: 'Customer concern',
        pay_type: Models::Shared::PayType::CUSTOMER,
        technician_user_ids: []
      ),
    ],
    start_at: DateTime.iso8601('2026-05-08T15:22:34.022Z'),
    status: Models::Shared::DmsAppointmentStatus::CANCELLED,
    transport_type: Models::Shared::TransportType::LOANER,
    updated_at: DateTime.iso8601('2025-04-07T03:51:48.554Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.update_dms_appointment(request: req)

unless res.dms_appointment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateDmsAppointmentRequest](../../models/operations/updatedmsappointmentrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateDmsAppointmentResponse)](../../models/operations/updatedmsappointmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_dms_opcode

Updates the DmsOpcode identified by `id`. Provide the unified DmsOpcode fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDmsOpcode" method="put" path="/dms/{connection_id}/opcode/{id}" example="dms_opcode" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateDmsOpcodeRequest.new(
  dms_opcode: Models::Shared::DmsOpcode.new(
    category: 'Electrical',
    code: '02AUS',
    created_at: DateTime.iso8601('2021-01-12T19:03:17.545Z'),
    currency: 'USD',
    description: 'Oil and filter change',
    estimated_hours: 3.2,
    flat_rate_hours: 3.5,
    id: 'a00a0c51-3231-4a93-974f-5f1dcae5d599',
    is_active: true,
    labor_rate_amount: 216.0,
    metadata: [],
    oem_code: '05604A3',
    parts: [],
    pay_type: Models::Shared::DmsOpcodePayType::CUSTOMER,
    skill_code: 'A',
    type: Models::Shared::DmsOpcodeType::LABOR,
    updated_at: DateTime.iso8601('2021-11-03T19:06:59.500Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.update_dms_opcode(request: req)

unless res.dms_opcode.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateDmsOpcodeRequest](../../models/operations/updatedmsopcoderequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateDmsOpcodeResponse)](../../models/operations/updatedmsopcoderesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_dms_part

Updates the DmsPart identified by `id`. Provide the unified DmsPart fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDmsPart" method="put" path="/dms/{connection_id}/part/{id}" example="dms_part" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateDmsPartRequest.new(
  dms_part: Models::Shared::DmsPart.new(
    bin_locations: [
      'S18-6',
    ],
    category: 'Ignition',
    cost_amount: 25.26,
    created_at: DateTime.iso8601('2020-07-02T08:18:03.858Z'),
    currency: 'USD',
    description: 'Cabin filter',
    id: '65d32cfa-532a-4bf5-93c7-d84f150934da',
    last_sold_at: DateTime.iso8601('2020-11-23T06:01:47.637Z'),
    list_price_amount: 39.61,
    manufacturer_code: 'TOY',
    max_stock_quantity: 21.0,
    metadata: [],
    min_stock_quantity: 3.0,
    pack_quantity: 1.0,
    part_number: '73992-IM3FI',
    quantity_available: 13.0,
    quantity_on_hand: 15.0,
    quantity_on_order: 14.0,
    source_code: '30',
    trade_price_amount: 29.05,
    updated_at: DateTime.iso8601('2023-11-23T19:48:48.226Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.update_dms_part(request: req)

unless res.dms_part.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::UpdateDmsPartRequest](../../models/operations/updatedmspartrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::UpdateDmsPartResponse)](../../models/operations/updatedmspartresponse.md)**

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
    id: '5802d267-3c50-4214-a7e4-05b55c6fbea0',
    lines: [
      Models::Shared::DmsPartline.new(
        id: '63d042ef-f665-4790-b12b-8e37a4dacec7',
        pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
        quantity: 5.0,
        quantity_ordered: 5.0,
        total_amount: 491.45,
        unit_price_amount: 98.29
      ),
      Models::Shared::DmsPartline.new(
        id: '93c525db-8b79-4fb4-a430-c72cf46a3a7d',
        pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
        quantity: 2.0,
        quantity_ordered: 2.0,
        total_amount: 240.9,
        unit_price_amount: 120.45
      ),
      Models::Shared::DmsPartline.new(
        id: '6fa447aa-d204-48e8-b568-b7c5aaf04a5c',
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
    updated_at: DateTime.iso8601('2026-04-19T09:07:12.597Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.update_dms_partsale(request: req)

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

## update_dms_repairorder

Updates the DmsRepairorder identified by `id`. Provide the unified DmsRepairorder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateDmsRepairorder" method="put" path="/dms/{connection_id}/repairorder/{id}" example="dms_repairorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateDmsRepairorderRequest.new(
  dms_repairorder: Models::Shared::DmsRepairorder.new(
    balance_amount: 3193.86,
    completed_at: DateTime.iso8601('2026-11-14T20:31:17.702Z'),
    created_at: DateTime.iso8601('2022-10-25T15:50:48.007Z'),
    currency: 'USD',
    discount_amount: 0.0,
    estimate_amount: 3264.0,
    id: '8a1a76ae-bd85-49f7-86ba-1a1d05f85b3c',
    jobs: [
      Models::Shared::DmsRepairorderJob.new(
        actual_hours: 3.6,
        cause: 'Scheduled maintenance',
        complaint: 'Due for service',
        correction: 'Aufero cumque vicinus aptus assumenda quis aptus.',
        id: 'b9cecaed-2043-442c-a422-6bc4341bd3ae',
        labor_amount: 681.6,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: '7c865390-c20a-47b6-a4ec-3cff9faa270b',
            pay_type: Models::Shared::DmsRepairorderLaborPayType::WARRANTY,
            rate_amount: 213.0,
            sold_hours: 3.2,
            technician_user_ids: [],
            total_amount: 681.6
          ),
        ],
        name: 'Customer concern',
        number: 'A',
        parts: [],
        parts_amount: 0.0,
        pay_type: Models::Shared::DmsRepairorderJobPayType::WARRANTY,
        sold_hours: 3.2,
        status: Models::Shared::DmsRepairorderJobStatus::COMPLETED,
        technician_user_ids: [],
        total_amount: 681.6
      ),
      Models::Shared::DmsRepairorderJob.new(
        actual_hours: 3.0,
        cause: 'Worn brake pads',
        complaint: 'Vibration at highway speed',
        correction: 'Somnus avaritia utroque vulnero ullam ancilla.',
        id: '7ead4c92-c24e-4b7a-8ad3-a019528a5565',
        labor_amount: 446.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: 'ae8450dd-c9da-4de9-8c75-78daf73d6b1d',
            pay_type: Models::Shared::DmsRepairorderLaborPayType::WARRANTY,
            rate_amount: 144.0,
            sold_hours: 3.1,
            technician_user_ids: [],
            total_amount: 446.4
          ),
        ],
        name: 'Customer concern',
        number: 'B',
        parts: [
          Models::Shared::DmsPartline.new(
            id: '06173ad0-2a41-4163-b31f-77e9304c094f',
            pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
            quantity: 4.0,
            quantity_ordered: 4.0,
            total_amount: 890.44,
            unit_price_amount: 222.61
          ),
          Models::Shared::DmsPartline.new(
            id: '60660713-d52b-4294-a9f8-e9d88844c842',
            pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
            quantity: 2.0,
            quantity_ordered: 2.0,
            total_amount: 216.18,
            unit_price_amount: 108.09
          ),
        ],
        parts_amount: 1106.6_200_000_000_001,
        pay_type: Models::Shared::DmsRepairorderJobPayType::WARRANTY,
        sold_hours: 3.1,
        status: Models::Shared::DmsRepairorderJobStatus::COMPLETED,
        technician_user_ids: [],
        total_amount: 1553.02
      ),
      Models::Shared::DmsRepairorderJob.new(
        actual_hours: 1.5,
        cause: 'Scheduled maintenance',
        complaint: 'Noise when braking',
        correction: 'Degero theca natus.',
        id: '6dd97c4b-9018-4162-9f39-a3142bd8b8e1',
        labor_amount: 232.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: 'be71c310-2a02-4cba-ab02-55a6a8c07cdd',
            pay_type: Models::Shared::DmsRepairorderLaborPayType::CUSTOMER,
            rate_amount: 166.0,
            sold_hours: 1.4,
            technician_user_ids: [],
            total_amount: 232.4
          ),
        ],
        name: 'Customer concern',
        number: 'C',
        parts: [
          Models::Shared::DmsPartline.new(
            id: 'ecd8655b-bb22-401b-a16b-35996860a6db',
            pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
            quantity: 1.0,
            quantity_ordered: 1.0,
            total_amount: 216.02,
            unit_price_amount: 216.02
          ),
          Models::Shared::DmsPartline.new(
            id: 'cf8ac799-9e6c-46ee-85a8-f60d5d60fcb6',
            pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
            quantity: 2.0,
            quantity_ordered: 2.0,
            total_amount: 358.16,
            unit_price_amount: 179.08
          ),
        ],
        parts_amount: 574.1_800_000_000_001,
        pay_type: Models::Shared::DmsRepairorderJobPayType::CUSTOMER,
        sold_hours: 1.4,
        status: Models::Shared::DmsRepairorderJobStatus::COMPLETED,
        technician_user_ids: [],
        total_amount: 806.58
      ),
    ],
    labor_amount: 1360.4,
    metadata: [],
    misc_amount: 35.0,
    number: '143398',
    odometer_in: 7776.0,
    odometer_out: 7776.0,
    odometer_unit: Models::Shared::DmsRepairorderOdometerUnit::MILES,
    opened_at: DateTime.iso8601('2025-02-08T23:02:53.902Z'),
    parts_amount: 1680.8_000_000_000_002,
    pay_type: Models::Shared::DmsRepairorderPayType::WARRANTY,
    promised_at: DateTime.iso8601('2025-02-10T07:02:53.902Z'),
    purchase_order_number: '182743',
    status: Models::Shared::DmsRepairorderStatus::COMPLETED,
    sublet_amount: 0.0,
    tag_number: '758',
    tax_amount: 117.66,
    technician_user_ids: [],
    total_amount: 3193.86,
    totals: [
      Models::Shared::DmsRepairorderTotal.new(
        discount_amount: 0.0,
        labor_amount: 232.4,
        parts_amount: 574.1_800_000_000_001,
        pay_type: Models::Shared::DmsRepairorderTotalPayType::CUSTOMER,
        sublet_amount: 0.0,
        total_amount: 806.58
      ),
      Models::Shared::DmsRepairorderTotal.new(
        discount_amount: 0.0,
        labor_amount: 1128.0,
        parts_amount: 1106.6_200_000_000_001,
        pay_type: Models::Shared::DmsRepairorderTotalPayType::WARRANTY,
        sublet_amount: 0.0,
        total_amount: 2234.62
      ),
    ],
    transport_type: Models::Shared::DmsRepairorderTransportType::LOANER,
    updated_at: DateTime.iso8601('2025-11-29T11:40:37.857Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.update_dms_repairorder(request: req)

unless res.dms_repairorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateDmsRepairorderRequest](../../models/operations/updatedmsrepairorderrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateDmsRepairorderResponse)](../../models/operations/updatedmsrepairorderresponse.md)**

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
res = s.dms.update_dms_vehicle(request: req)

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
      first_payment_at: DateTime.iso8601('2022-08-16T20:08:55.028Z'),
      interest_rate: 6.68,
      lender_name: 'Mueller, Yundt and Murray Financial',
      payment_amount: 339.0,
      payment_frequency: Models::Shared::PaymentFrequency::MONTHLY,
      term_months: 72.0
    ),
    finance_type: Models::Shared::FinanceType::FINANCE,
    id: 'd33585c7-06db-40fc-8912-ac9c20fea71a',
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
    sold_at: DateTime.iso8601('2022-08-15T04:53:20.741Z'),
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
    updated_at: DateTime.iso8601('2025-04-17T16:02:23.477Z'),
    vehicles: []
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.dms.update_dms_vehiclesale(request: req)

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