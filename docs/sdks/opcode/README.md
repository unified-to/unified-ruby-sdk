# Opcode

## Overview

### Available Operations

* [create_dms_opcode](#create_dms_opcode) - Create an opcode
* [get_dms_opcode](#get_dms_opcode) - Retrieve an opcode
* [list_dms_opcodes](#list_dms_opcodes) - List all opcodes
* [patch_dms_opcode](#patch_dms_opcode) - Update an opcode
* [update_dms_opcode](#update_dms_opcode) - Update an opcode

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
res = s.opcode.create_dms_opcode(dms_opcode: Models::Shared::DmsOpcode.new(
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
res = s.opcode.get_dms_opcode(connection_id: '<id>', id: '<id>')

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
res = s.opcode.list_dms_opcodes(request: req)

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
res = s.opcode.patch_dms_opcode(request: req)

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
res = s.opcode.update_dms_opcode(request: req)

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