# Inspection

## Overview

### Available Operations

* [create_qms_inspection](#create_qms_inspection) - Create an inspection
* [get_qms_inspection](#get_qms_inspection) - Retrieve an inspection
* [list_qms_inspections](#list_qms_inspections) - List all inspections
* [patch_qms_inspection](#patch_qms_inspection) - Update an inspection
* [update_qms_inspection](#update_qms_inspection) - Update an inspection

## create_qms_inspection

Creates a QmsInspection. Provide the unified QmsInspection fields in the request body; they are mapped to the provider's API. Returns the created QmsInspection.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createQmsInspection" method="post" path="/qms/{connection_id}/inspection" example="qms_inspection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.inspection.create_qms_inspection(qms_inspection: Models::Shared::QmsInspection.new(
  characteristics: [
    Models::Shared::QmsCharacteristic.new(
      lower_limit: 152.9,
      measured_value: '152.94',
      name: 'Hole position',
      nominal_value: 153.0,
      result: Models::Shared::Result::PASS,
      unit_of_measure: 'mm',
      upper_limit: 153.1
    ),
    Models::Shared::QmsCharacteristic.new(
      lower_limit: 24.95,
      measured_value: '25.03',
      name: 'Flatness',
      nominal_value: 25.0,
      result: Models::Shared::Result::PASS,
      unit_of_measure: 'mm',
      upper_limit: 25.05
    ),
    Models::Shared::QmsCharacteristic.new(
      lower_limit: 53.99,
      measured_value: '53.99',
      name: 'Bore diameter',
      nominal_value: 54.0,
      result: Models::Shared::Result::PASS,
      unit_of_measure: 'mm',
      upper_limit: 54.01
    ),
  ],
  created_at: DateTime.iso8601('2020-04-18T21:23:54.000Z'),
  file_ids: [],
  id: '38f11bf5-071f-4fd8-900d-c405bab3ac14',
  inspected_at: DateTime.iso8601('2021-02-07T09:02:43.193Z'),
  issue_ids: [],
  lifecycle_state: 'Complete',
  metadata: [],
  name: 'Source inspection',
  number: 'INSP-96996',
  part_number: 'PRT-048483',
  quantity_accepted: 41.0,
  quantity_inspected: 41.0,
  quantity_rejected: 0.0,
  result: Models::Shared::QmsInspectionResult::PASS,
  revision: 'A',
  status: Models::Shared::QmsInspectionStatus::CLOSED,
  supplier_name: 'Gerlach LLC',
  type: Models::Shared::QmsInspectionType::SOURCE,
  updated_at: DateTime.iso8601('2026-05-08T16:14:56.150Z'),
  url: 'https://purple-newsprint.name/'
), connection_id: '<id>')

unless res.qms_inspection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `qms_inspection`                                                                                                                                 | [Models::Shared::QmsInspection](../../models/shared/qmsinspection.md)                                                                            | :heavy_check_mark:                                                                                                                               | An inspection of a part, lot or serial against its requirements                                                                                  |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateQmsInspectionQueryParamFields](../../models/operations/createqmsinspectionqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateQmsInspectionResponse)](../../models/operations/createqmsinspectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_qms_inspection

Retrieves a single QmsInspection by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getQmsInspection" method="get" path="/qms/{connection_id}/inspection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.inspection.get_qms_inspection(connection_id: '<id>', id: '<id>')

unless res.qms_inspection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Inspection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetQmsInspectionQueryParamFields](../../models/operations/getqmsinspectionqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetQmsInspectionResponse)](../../models/operations/getqmsinspectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_qms_inspections

Returns a list of QmsInspections. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listQmsInspections" method="get" path="/qms/{connection_id}/inspection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListQmsInspectionsRequest.new(
  connection_id: '<id>'
)
res = s.inspection.list_qms_inspections(request: req)

unless res.qms_inspections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListQmsInspectionsRequest](../../models/operations/listqmsinspectionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListQmsInspectionsResponse)](../../models/operations/listqmsinspectionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_qms_inspection

Updates the QmsInspection identified by `id`. Provide the unified QmsInspection fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchQmsInspection" method="patch" path="/qms/{connection_id}/inspection/{id}" example="qms_inspection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchQmsInspectionRequest.new(
  qms_inspection: Models::Shared::QmsInspection.new(
    characteristics: [
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 152.9,
        measured_value: '152.94',
        name: 'Hole position',
        nominal_value: 153.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 153.1
      ),
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 24.95,
        measured_value: '25.03',
        name: 'Flatness',
        nominal_value: 25.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 25.05
      ),
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 53.99,
        measured_value: '53.99',
        name: 'Bore diameter',
        nominal_value: 54.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 54.01
      ),
    ],
    created_at: DateTime.iso8601('2020-04-18T21:23:54.000Z'),
    file_ids: [],
    id: 'ed1948eb-43a6-4b09-975e-65282378f51a',
    inspected_at: DateTime.iso8601('2021-02-07T09:02:43.196Z'),
    issue_ids: [],
    lifecycle_state: 'Complete',
    metadata: [],
    name: 'Source inspection',
    number: 'INSP-96996',
    part_number: 'PRT-048483',
    quantity_accepted: 41.0,
    quantity_inspected: 41.0,
    quantity_rejected: 0.0,
    result: Models::Shared::QmsInspectionResult::PASS,
    revision: 'A',
    status: Models::Shared::QmsInspectionStatus::CLOSED,
    supplier_name: 'Gerlach LLC',
    type: Models::Shared::QmsInspectionType::SOURCE,
    updated_at: DateTime.iso8601('2026-05-08T16:14:56.177Z'),
    url: 'https://purple-newsprint.name/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.inspection.patch_qms_inspection(request: req)

unless res.qms_inspection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchQmsInspectionRequest](../../models/operations/patchqmsinspectionrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchQmsInspectionResponse)](../../models/operations/patchqmsinspectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_qms_inspection

Updates the QmsInspection identified by `id`. Provide the unified QmsInspection fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateQmsInspection" method="put" path="/qms/{connection_id}/inspection/{id}" example="qms_inspection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateQmsInspectionRequest.new(
  qms_inspection: Models::Shared::QmsInspection.new(
    characteristics: [
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 152.9,
        measured_value: '152.94',
        name: 'Hole position',
        nominal_value: 153.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 153.1
      ),
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 24.95,
        measured_value: '25.03',
        name: 'Flatness',
        nominal_value: 25.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 25.05
      ),
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 53.99,
        measured_value: '53.99',
        name: 'Bore diameter',
        nominal_value: 54.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 54.01
      ),
    ],
    created_at: DateTime.iso8601('2020-04-18T21:23:54.000Z'),
    file_ids: [],
    id: 'ed1948eb-43a6-4b09-975e-65282378f51a',
    inspected_at: DateTime.iso8601('2021-02-07T09:02:43.196Z'),
    issue_ids: [],
    lifecycle_state: 'Complete',
    metadata: [],
    name: 'Source inspection',
    number: 'INSP-96996',
    part_number: 'PRT-048483',
    quantity_accepted: 41.0,
    quantity_inspected: 41.0,
    quantity_rejected: 0.0,
    result: Models::Shared::QmsInspectionResult::PASS,
    revision: 'A',
    status: Models::Shared::QmsInspectionStatus::CLOSED,
    supplier_name: 'Gerlach LLC',
    type: Models::Shared::QmsInspectionType::SOURCE,
    updated_at: DateTime.iso8601('2026-05-08T16:14:56.177Z'),
    url: 'https://purple-newsprint.name/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.inspection.update_qms_inspection(request: req)

unless res.qms_inspection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateQmsInspectionRequest](../../models/operations/updateqmsinspectionrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateQmsInspectionResponse)](../../models/operations/updateqmsinspectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |