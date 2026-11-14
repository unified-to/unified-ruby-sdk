# Action

## Overview

### Available Operations

* [create_qms_action](#create_qms_action) - Create an action
* [get_qms_action](#get_qms_action) - Retrieve an action
* [list_qms_actions](#list_qms_actions) - List all actions
* [patch_qms_action](#patch_qms_action) - Update an action
* [update_qms_action](#update_qms_action) - Update an action

## create_qms_action

Creates a QmsAction. Provide the unified QmsAction fields in the request body; they are mapped to the provider's API. Returns the created QmsAction.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createQmsAction" method="post" path="/qms/{connection_id}/action" example="qms_action" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.action.create_qms_action(qms_action: Models::Shared::QmsAction.new(
  affected_items: [],
  created_at: DateTime.iso8601('2022-03-07T03:01:29.933Z'),
  description: 'Auditor sunt tego apparatus aegre ascisco.',
  due_at: DateTime.iso8601('2022-04-04T03:42:01.290Z'),
  file_ids: [],
  id: '396375cc-b800-4359-841a-fc9aa93923d7',
  issue_ids: [],
  lifecycle_state: 'Cancelled',
  metadata: [],
  name: 'Add inspection step',
  number: 'CAPA-6268',
  original_type: 'Corrective Action',
  priority: 'Medium',
  root_cause: 'Worn tooling',
  status: Models::Shared::QmsActionStatus::CANCELLED,
  type: Models::Shared::QmsActionType::CORRECTIVE,
  updated_at: DateTime.iso8601('2025-02-17T00:51:29.951Z'),
  url: 'https://incomplete-conservation.org'
), connection_id: '<id>')

unless res.qms_action.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `qms_action`                                                                                                                                     | [Models::Shared::QmsAction](../../models/shared/qmsaction.md)                                                                                    | :heavy_check_mark:                                                                                                                               | A corrective or preventive action (CAPA)                                                                                                         |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateQmsActionQueryParamFields](../../models/operations/createqmsactionqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateQmsActionResponse)](../../models/operations/createqmsactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_qms_action

Retrieves a single QmsAction by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getQmsAction" method="get" path="/qms/{connection_id}/action/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.action.get_qms_action(connection_id: '<id>', id: '<id>')

unless res.qms_action.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Action                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetQmsActionQueryParamFields](../../models/operations/getqmsactionqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetQmsActionResponse)](../../models/operations/getqmsactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_qms_actions

Returns a list of QmsActions. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listQmsActions" method="get" path="/qms/{connection_id}/action" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListQmsActionsRequest.new(
  connection_id: '<id>'
)
res = s.action.list_qms_actions(request: req)

unless res.qms_actions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListQmsActionsRequest](../../models/operations/listqmsactionsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListQmsActionsResponse)](../../models/operations/listqmsactionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_qms_action

Updates the QmsAction identified by `id`. Provide the unified QmsAction fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchQmsAction" method="patch" path="/qms/{connection_id}/action/{id}" example="qms_action" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchQmsActionRequest.new(
  qms_action: Models::Shared::QmsAction.new(
    affected_items: [],
    created_at: DateTime.iso8601('2022-03-07T03:01:29.933Z'),
    description: 'Auditor sunt tego apparatus aegre ascisco.',
    due_at: DateTime.iso8601('2022-04-04T03:42:01.290Z'),
    file_ids: [],
    id: '040e2a58-8cd6-426a-bfed-efd8363e4be9',
    issue_ids: [],
    lifecycle_state: 'Cancelled',
    metadata: [],
    name: 'Add inspection step',
    number: 'CAPA-6268',
    original_type: 'Corrective Action',
    priority: 'Medium',
    root_cause: 'Worn tooling',
    status: Models::Shared::QmsActionStatus::CANCELLED,
    type: Models::Shared::QmsActionType::CORRECTIVE,
    updated_at: DateTime.iso8601('2025-02-17T00:51:29.965Z'),
    url: 'https://incomplete-conservation.org'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.action.patch_qms_action(request: req)

unless res.qms_action.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchQmsActionRequest](../../models/operations/patchqmsactionrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchQmsActionResponse)](../../models/operations/patchqmsactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_qms_action

Updates the QmsAction identified by `id`. Provide the unified QmsAction fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateQmsAction" method="put" path="/qms/{connection_id}/action/{id}" example="qms_action" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateQmsActionRequest.new(
  qms_action: Models::Shared::QmsAction.new(
    affected_items: [],
    created_at: DateTime.iso8601('2022-03-07T03:01:29.933Z'),
    description: 'Auditor sunt tego apparatus aegre ascisco.',
    due_at: DateTime.iso8601('2022-04-04T03:42:01.290Z'),
    file_ids: [],
    id: '040e2a58-8cd6-426a-bfed-efd8363e4be9',
    issue_ids: [],
    lifecycle_state: 'Cancelled',
    metadata: [],
    name: 'Add inspection step',
    number: 'CAPA-6268',
    original_type: 'Corrective Action',
    priority: 'Medium',
    root_cause: 'Worn tooling',
    status: Models::Shared::QmsActionStatus::CANCELLED,
    type: Models::Shared::QmsActionType::CORRECTIVE,
    updated_at: DateTime.iso8601('2025-02-17T00:51:29.965Z'),
    url: 'https://incomplete-conservation.org'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.action.update_qms_action(request: req)

unless res.qms_action.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateQmsActionRequest](../../models/operations/updateqmsactionrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateQmsActionResponse)](../../models/operations/updateqmsactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |