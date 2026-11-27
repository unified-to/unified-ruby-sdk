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
  completed_at: DateTime.iso8601('2026-11-13T20:46:36.899Z'),
  created_at: DateTime.iso8601('2022-10-25T15:50:48.007Z'),
  currency: 'USD',
  discount_amount: 0.0,
  estimate_amount: 3264.0,
  id: '2dbd3442-652f-4c8e-bedb-7c046f53f8e6',
  jobs: [
    Models::Shared::DmsRepairorderJob.new(
      actual_hours: 3.6,
      cause: 'Scheduled maintenance',
      complaint: 'Due for service',
      correction: 'Aufero cumque vicinus aptus assumenda quis aptus.',
      id: '04e44476-af06-4e06-90bf-2004ed987bf9',
      labor_amount: 681.6,
      labors: [
        Models::Shared::DmsRepairorderLabor.new(
          id: '4c5b7595-a23b-4135-8892-ec08cdd170e4',
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
      id: '2ab88935-7740-4fe1-82e3-a03b03e948b9',
      labor_amount: 446.4,
      labors: [
        Models::Shared::DmsRepairorderLabor.new(
          id: '90f1d435-d9c9-4870-95ba-af0618cb9f2d',
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
          id: '2b52094a-f63d-4423-8fb2-c272e7165827',
          pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
          quantity: 4.0,
          quantity_ordered: 4.0,
          total_amount: 890.44,
          unit_price_amount: 222.61
        ),
        Models::Shared::DmsPartline.new(
          id: '62a02a04-d631-49d8-bc75-66024bd8d069',
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
      id: 'a7ab4336-9b66-4f5c-915d-dcb687a08ebf',
      labor_amount: 232.4,
      labors: [
        Models::Shared::DmsRepairorderLabor.new(
          id: '253cac94-f6c7-4415-a3d7-37f93e93fd70',
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
          id: '572cdff0-aa4c-4312-9ef7-957738982d0c',
          pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
          quantity: 1.0,
          quantity_ordered: 1.0,
          total_amount: 216.02,
          unit_price_amount: 216.02
        ),
        Models::Shared::DmsPartline.new(
          id: 'de1323ce-e8c3-4835-b72b-3d12fa4265bb',
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
  opened_at: DateTime.iso8601('2025-02-08T09:37:32.720Z'),
  parts_amount: 1680.8_000_000_000_002,
  pay_type: Models::Shared::DmsRepairorderPayType::WARRANTY,
  promised_at: DateTime.iso8601('2025-02-09T17:37:32.720Z'),
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
  updated_at: DateTime.iso8601('2025-11-28T17:32:57.070Z')
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
    completed_at: DateTime.iso8601('2026-11-13T20:46:36.941Z'),
    created_at: DateTime.iso8601('2022-10-25T15:50:48.007Z'),
    currency: 'USD',
    discount_amount: 0.0,
    estimate_amount: 3264.0,
    id: 'b720759e-11f4-4eb2-ad18-7a1d74a22d36',
    jobs: [
      Models::Shared::DmsRepairorderJob.new(
        actual_hours: 3.6,
        cause: 'Scheduled maintenance',
        complaint: 'Due for service',
        correction: 'Aufero cumque vicinus aptus assumenda quis aptus.',
        id: '670ca467-7702-4acb-869b-7d1e8ce28266',
        labor_amount: 681.6,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: 'bcaa6d56-8514-4178-adca-c20a6ce1f587',
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
        id: '9f6fd07a-bf0a-4b8e-8d58-cb14fc6cf5bf',
        labor_amount: 446.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: '5c6e84bb-2bad-420c-9d8a-26651be27b4a',
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
            id: 'ed031a7f-b7f2-4fbb-a329-593472b5b96e',
            pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
            quantity: 4.0,
            quantity_ordered: 4.0,
            total_amount: 890.44,
            unit_price_amount: 222.61
          ),
          Models::Shared::DmsPartline.new(
            id: '833e60aa-69fc-4de7-b1f8-ee482ae2a91a',
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
        id: 'fa12bb24-e759-42c9-8a0b-295aa78c127f',
        labor_amount: 232.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: '1b80abd2-5045-4b05-a22b-e34917caedee',
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
            id: '39cc5561-9bf9-4ece-acbb-88a70fbac770',
            pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
            quantity: 1.0,
            quantity_ordered: 1.0,
            total_amount: 216.02,
            unit_price_amount: 216.02
          ),
          Models::Shared::DmsPartline.new(
            id: 'ddfe075d-c64e-44ba-9016-0bc506dfa5d4',
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
    opened_at: DateTime.iso8601('2025-02-08T09:37:32.744Z'),
    parts_amount: 1680.8_000_000_000_002,
    pay_type: Models::Shared::DmsRepairorderPayType::WARRANTY,
    promised_at: DateTime.iso8601('2025-02-09T17:37:32.744Z'),
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
    updated_at: DateTime.iso8601('2025-11-28T17:32:57.101Z')
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
    completed_at: DateTime.iso8601('2026-11-13T20:46:36.941Z'),
    created_at: DateTime.iso8601('2022-10-25T15:50:48.007Z'),
    currency: 'USD',
    discount_amount: 0.0,
    estimate_amount: 3264.0,
    id: 'b720759e-11f4-4eb2-ad18-7a1d74a22d36',
    jobs: [
      Models::Shared::DmsRepairorderJob.new(
        actual_hours: 3.6,
        cause: 'Scheduled maintenance',
        complaint: 'Due for service',
        correction: 'Aufero cumque vicinus aptus assumenda quis aptus.',
        id: '670ca467-7702-4acb-869b-7d1e8ce28266',
        labor_amount: 681.6,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: 'bcaa6d56-8514-4178-adca-c20a6ce1f587',
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
        id: '9f6fd07a-bf0a-4b8e-8d58-cb14fc6cf5bf',
        labor_amount: 446.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: '5c6e84bb-2bad-420c-9d8a-26651be27b4a',
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
            id: 'ed031a7f-b7f2-4fbb-a329-593472b5b96e',
            pay_type: Models::Shared::DmsPartlinePayType::WARRANTY,
            quantity: 4.0,
            quantity_ordered: 4.0,
            total_amount: 890.44,
            unit_price_amount: 222.61
          ),
          Models::Shared::DmsPartline.new(
            id: '833e60aa-69fc-4de7-b1f8-ee482ae2a91a',
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
        id: 'fa12bb24-e759-42c9-8a0b-295aa78c127f',
        labor_amount: 232.4,
        labors: [
          Models::Shared::DmsRepairorderLabor.new(
            id: '1b80abd2-5045-4b05-a22b-e34917caedee',
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
            id: '39cc5561-9bf9-4ece-acbb-88a70fbac770',
            pay_type: Models::Shared::DmsPartlinePayType::CUSTOMER,
            quantity: 1.0,
            quantity_ordered: 1.0,
            total_amount: 216.02,
            unit_price_amount: 216.02
          ),
          Models::Shared::DmsPartline.new(
            id: 'ddfe075d-c64e-44ba-9016-0bc506dfa5d4',
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
    opened_at: DateTime.iso8601('2025-02-08T09:37:32.744Z'),
    parts_amount: 1680.8_000_000_000_002,
    pay_type: Models::Shared::DmsRepairorderPayType::WARRANTY,
    promised_at: DateTime.iso8601('2025-02-09T17:37:32.744Z'),
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
    updated_at: DateTime.iso8601('2025-11-28T17:32:57.101Z')
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