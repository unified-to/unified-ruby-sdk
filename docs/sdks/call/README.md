# Call

## Overview

### Available Operations

* [create_uc_call](#create_uc_call) - Create a call
* [get_uc_call](#get_uc_call) - Retrieve a call
* [list_uc_calls](#list_uc_calls) - List all calls
* [patch_uc_call](#patch_uc_call) - Update a call
* [update_uc_call](#update_uc_call) - Update a call

## create_uc_call

Creates a UcCall. Provide the unified UcCall fields in the request body; they are mapped to the provider's API. Returns the created UcCall.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcCall" method="post" path="/uc/{connection_id}/call" example="uc_call" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.call.create_uc_call(uc_call: Models::Shared::UcCall.new(
  answer_at: DateTime.iso8601('2025-06-05T00:26:52.782Z'),
  contacts: [],
  conversation_identifier: '7208c95a-f60c-4017-bc08-6f0ebaaacc8b',
  cost_amount: 2.7016,
  created_at: DateTime.iso8601('2023-04-22T19:05:34.882Z'),
  currency: 'USD',
  duration_seconds: 2132.0,
  end_at: DateTime.iso8601('2024-06-11T01:40:15.407Z'),
  id: '7208c95a-f60c-4017-bc08-6f0ebaaacc8b',
  is_private: false,
  metadata: [
    Models::Shared::UcMetadata.new(
      extra_data: {

      },
      format: Models::Shared::UcMetadataFormat::PRICE,
      id: '693ac482-f2e2-4fd1-94e5-26674cd72dbd',
      namespace: 'custom',
      slug: 'custom_field',
      value: 'voluptatem'
    ),
  ],
  start_at: DateTime.iso8601('2023-12-24T12:29:33.384Z'),
  status: Models::Shared::UcCallStatus::IN_PROGRESS,
  telephone: Models::Shared::PropertyUcCallTelephone.new(
    telephone: '(507) 787-3877',
    type: Models::Shared::PropertyUcCallTelephoneType::MOBILE
  ),
  type: Models::Shared::UcCallType::INBOUND,
  updated_at: DateTime.iso8601('2023-08-06T09:50:44.389Z'),
  user_phone: '1-894-431-7163 x39343'
), connection_id: '<id>')

unless res.uc_call.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `uc_call`                                                                                                                                        | [Models::Shared::UcCall](../../models/shared/uccall.md)                                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateUcCallQueryParamFields](../../models/operations/createuccallqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateUcCallResponse)](../../models/operations/createuccallresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_uc_call

Retrieves a single UcCall by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcCall" method="get" path="/uc/{connection_id}/call/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.call.get_uc_call(connection_id: '<id>', id: '<id>')

unless res.uc_call.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Call                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetUcCallQueryParamFields](../../models/operations/getuccallqueryparamfields.md)>                                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetUcCallResponse)](../../models/operations/getuccallresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_uc_calls

Returns a list of UcCalls. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcCalls" method="get" path="/uc/{connection_id}/call" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUcCallsRequest.new(
  connection_id: '<id>'
)
res = s.call.list_uc_calls(request: req)

unless res.uc_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::ListUcCallsRequest](../../models/operations/listuccallsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::ListUcCallsResponse)](../../models/operations/listuccallsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_uc_call

Updates the UcCall identified by `id`. Provide the unified UcCall fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUcCall" method="patch" path="/uc/{connection_id}/call/{id}" example="uc_call" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchUcCallRequest.new(
  uc_call: Models::Shared::UcCall.new(
    answer_at: DateTime.iso8601('2025-06-05T00:26:52.796Z'),
    contacts: [],
    conversation_identifier: '4e4927d4-bbcf-49d5-abde-7ef0d9261e15',
    cost_amount: 2.7016,
    created_at: DateTime.iso8601('2023-04-22T19:05:34.882Z'),
    currency: 'USD',
    duration_seconds: 2132.0,
    end_at: DateTime.iso8601('2024-06-11T01:40:15.414Z'),
    id: '4e4927d4-bbcf-49d5-abde-7ef0d9261e15',
    is_private: false,
    metadata: [
      Models::Shared::UcMetadata.new(
        extra_data: {

        },
        format: Models::Shared::UcMetadataFormat::PRICE,
        id: 'df703411-b362-462a-bf4c-2858d9995869',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'voluptatem'
      ),
    ],
    start_at: DateTime.iso8601('2023-12-24T12:29:33.388Z'),
    status: Models::Shared::UcCallStatus::IN_PROGRESS,
    telephone: Models::Shared::PropertyUcCallTelephone.new(
      telephone: '(507) 787-3877',
      type: Models::Shared::PropertyUcCallTelephoneType::MOBILE
    ),
    type: Models::Shared::UcCallType::INBOUND,
    updated_at: DateTime.iso8601('2023-08-06T09:50:44.390Z'),
    user_phone: '1-894-431-7163 x39343'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.call.patch_uc_call(request: req)

unless res.uc_call.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::PatchUcCallRequest](../../models/operations/patchuccallrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::PatchUcCallResponse)](../../models/operations/patchuccallresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_uc_call

Updates the UcCall identified by `id`. Provide the unified UcCall fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUcCall" method="put" path="/uc/{connection_id}/call/{id}" example="uc_call" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateUcCallRequest.new(
  uc_call: Models::Shared::UcCall.new(
    answer_at: DateTime.iso8601('2025-06-05T00:26:52.796Z'),
    contacts: [],
    conversation_identifier: '4e4927d4-bbcf-49d5-abde-7ef0d9261e15',
    cost_amount: 2.7016,
    created_at: DateTime.iso8601('2023-04-22T19:05:34.882Z'),
    currency: 'USD',
    duration_seconds: 2132.0,
    end_at: DateTime.iso8601('2024-06-11T01:40:15.414Z'),
    id: '4e4927d4-bbcf-49d5-abde-7ef0d9261e15',
    is_private: false,
    metadata: [
      Models::Shared::UcMetadata.new(
        extra_data: {

        },
        format: Models::Shared::UcMetadataFormat::PRICE,
        id: 'df703411-b362-462a-bf4c-2858d9995869',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'voluptatem'
      ),
    ],
    start_at: DateTime.iso8601('2023-12-24T12:29:33.388Z'),
    status: Models::Shared::UcCallStatus::IN_PROGRESS,
    telephone: Models::Shared::PropertyUcCallTelephone.new(
      telephone: '(507) 787-3877',
      type: Models::Shared::PropertyUcCallTelephoneType::MOBILE
    ),
    type: Models::Shared::UcCallType::INBOUND,
    updated_at: DateTime.iso8601('2023-08-06T09:50:44.390Z'),
    user_phone: '1-894-431-7163 x39343'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.call.update_uc_call(request: req)

unless res.uc_call.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::UpdateUcCallRequest](../../models/operations/updateuccallrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::UpdateUcCallResponse)](../../models/operations/updateuccallresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |