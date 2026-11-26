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
  completed_at: DateTime.iso8601('2026-11-12T19:26:51.620Z'),
  created_at: DateTime.iso8601('2022-10-25T15:50:48.007Z'),
  currency: 'USD',
  discount_amount: 0.0,
  estimate_amount: 3264.0,
  id: '17d4cc04-dbda-4b58-8d0a-bc420edfe6a5',
  jobs: [
    Models::Shared::DmsRepairorderJob.new(
      actual_hours: 3.6,
      cause: 'Scheduled maintenance',
      complaint: 'Due for service',
      correction: 'Aufero cumque vicinus aptus assumenda quis aptus.',
      id: '05e7718d-c1ce-419b-9aa4-0a520c6dae2a',
      labor_amount: 681.6,
      labors: [
        Models::Shared::DmsRepairorderLabor.new(
          id: '27ba607d-6659-4dfd-9594-75cc10cbd6ea',
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
      id: '39afda02-d3be-48f9-853e-2f7bccb73239',
      labor_amount: 446.4,
      labors: [
        Models::Shared::DmsRepairorderLabor.new(
          id: '00d4d9c3-33be-4d6b-bf1a-282ccdb5e3e2',
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
          id: 'cefbb24e-c67e-4ea6-a0d8-4f101fa8d305',
          pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
          quantity: 4.0,
          quantity_ordered: 4.0,
          total_amount: 890.44,
          unit_price_amount: 222.61
        ),
        Models::Shared::DmsPartline.new(
          id: '4db244de-499a-4441-bb26-7480d6f62812',
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
      id: 'da63252f-f7ad-4356-81aa-fab5e69cfc39',
      labor_amount: 232.4,
      labors: [
        Models::Shared::DmsRepairorderLabor.new(
          id: 'ad9d69dc-dad8-4dd9-8ad3-af28882b4b23',
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
          id: 'a758e9a4-09fb-4e12-9903-47d9773c0fb3',
          pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
          quantity: 1.0,
          quantity_ordered: 1.0,
          total_amount: 216.02,
          unit_price_amount: 216.02
        ),
        Models::Shared::DmsPartline.new(
          id: '445f1500-f756-438f-85ce-5502c98088e6',
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
  opened_at: DateTime.iso8601('2025-02-07T19:18:26.873Z'),
  parts_amount: 1680.8_000_000_000_002,
  pay_type: Models::Shared::DmsRepairorderPayType::WARRANTY,
  promised_at: DateTime.iso8601('2025-02-09T03:18:26.873Z'),
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
  updated_at: DateTime.iso8601('2025-11-27T22:12:41.169Z')
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
    completed_at: DateTime.iso8601('2026-11-12T19:26:51.656Z'),
    created_at: DateTime.iso8601('2022-10-25T15:50:48.007Z'),
    currency: 'USD',
    discount_amount: 0.0,
    estimate_amount: 3264.0,
    id: '6ab646f2-4853-4687-8b7c-f27829287f72',
    jobs: [
      Models::Shared::DmsRepairorderJob.new(
        actual_hours: 3.6,
        cause: 'Scheduled maintenance',
        complaint: 'Due for service',
        correction: 'Aufero cumque vicinus aptus assumenda quis aptus.',
        id: 'e637c451-7b2b-4707-9a81-8b99a8486669',
        labor_amount: 681.6,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: '0a961ec5-7c3b-4882-b9c0-c65f8700c158',
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
        id: '6abc6680-8c0c-47f3-b61b-9aefb3b29b62',
        labor_amount: 446.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: '8a5fb48f-e868-40bb-9774-3855a297aab9',
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
            id: 'cd53216c-b2a5-4742-859c-512f4e6432df',
            pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
            quantity: 4.0,
            quantity_ordered: 4.0,
            total_amount: 890.44,
            unit_price_amount: 222.61
          ),
          Models::Shared::DmsPartline.new(
            id: '851f1f8f-b337-4e05-a56e-2ae2b8bd3727',
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
        id: '58dd1f9a-2a3a-4c27-adba-a239f58ec9b6',
        labor_amount: 232.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: 'de8becd4-ca4e-4ac7-97dc-d8b60114ae6b',
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
            id: '76a3cf3a-d4d9-4066-a069-bce6cacfafea',
            pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
            quantity: 1.0,
            quantity_ordered: 1.0,
            total_amount: 216.02,
            unit_price_amount: 216.02
          ),
          Models::Shared::DmsPartline.new(
            id: '70302a81-22a2-42d2-8c42-ce7f1ac89be8',
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
    opened_at: DateTime.iso8601('2025-02-07T19:18:26.894Z'),
    parts_amount: 1680.8_000_000_000_002,
    pay_type: Models::Shared::DmsRepairorderPayType::WARRANTY,
    promised_at: DateTime.iso8601('2025-02-09T03:18:26.894Z'),
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
    updated_at: DateTime.iso8601('2025-11-27T22:12:41.197Z')
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
    completed_at: DateTime.iso8601('2026-11-12T19:26:51.656Z'),
    created_at: DateTime.iso8601('2022-10-25T15:50:48.007Z'),
    currency: 'USD',
    discount_amount: 0.0,
    estimate_amount: 3264.0,
    id: '6ab646f2-4853-4687-8b7c-f27829287f72',
    jobs: [
      Models::Shared::DmsRepairorderJob.new(
        actual_hours: 3.6,
        cause: 'Scheduled maintenance',
        complaint: 'Due for service',
        correction: 'Aufero cumque vicinus aptus assumenda quis aptus.',
        id: 'e637c451-7b2b-4707-9a81-8b99a8486669',
        labor_amount: 681.6,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: '0a961ec5-7c3b-4882-b9c0-c65f8700c158',
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
        id: '6abc6680-8c0c-47f3-b61b-9aefb3b29b62',
        labor_amount: 446.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: '8a5fb48f-e868-40bb-9774-3855a297aab9',
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
            id: 'cd53216c-b2a5-4742-859c-512f4e6432df',
            pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
            quantity: 4.0,
            quantity_ordered: 4.0,
            total_amount: 890.44,
            unit_price_amount: 222.61
          ),
          Models::Shared::DmsPartline.new(
            id: '851f1f8f-b337-4e05-a56e-2ae2b8bd3727',
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
        id: '58dd1f9a-2a3a-4c27-adba-a239f58ec9b6',
        labor_amount: 232.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: 'de8becd4-ca4e-4ac7-97dc-d8b60114ae6b',
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
            id: '76a3cf3a-d4d9-4066-a069-bce6cacfafea',
            pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
            quantity: 1.0,
            quantity_ordered: 1.0,
            total_amount: 216.02,
            unit_price_amount: 216.02
          ),
          Models::Shared::DmsPartline.new(
            id: '70302a81-22a2-42d2-8c42-ce7f1ac89be8',
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
    opened_at: DateTime.iso8601('2025-02-07T19:18:26.894Z'),
    parts_amount: 1680.8_000_000_000_002,
    pay_type: Models::Shared::DmsRepairorderPayType::WARRANTY,
    promised_at: DateTime.iso8601('2025-02-09T03:18:26.894Z'),
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
    updated_at: DateTime.iso8601('2025-11-27T22:12:41.197Z')
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