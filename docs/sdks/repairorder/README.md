# Repairorder

## Overview

### Available Operations

* [create_dms_repairorder](#create_dms_repairorder) - Create a repairorder
* [get_dms_repairorder](#get_dms_repairorder) - Retrieve a repairorder
* [list_dms_repairorders](#list_dms_repairorders) - List all repairorders
* [patch_dms_repairorder](#patch_dms_repairorder) - Update a repairorder
* [update_dms_repairorder](#update_dms_repairorder) - Update a repairorder

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
res = s.repairorder.create_dms_repairorder(dms_repairorder: Models::Shared::DmsRepairorder.new(
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
res = s.repairorder.get_dms_repairorder(connection_id: '<id>', id: '<id>')

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
res = s.repairorder.list_dms_repairorders(request: req)

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
res = s.repairorder.patch_dms_repairorder(request: req)

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
res = s.repairorder.update_dms_repairorder(request: req)

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