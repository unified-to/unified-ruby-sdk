# Change
(*change*)

## Overview

### Available Operations

* [create_plm_change](#create_plm_change) - Create a change
* [get_plm_change](#get_plm_change) - Retrieve a change
* [get_task_change](#get_task_change) - Retrieve a change
* [list_plm_changes](#list_plm_changes) - List all changes
* [list_task_changes](#list_task_changes) - List all changes
* [patch_plm_change](#patch_plm_change) - Update a change
* [update_plm_change](#update_plm_change) - Update a change

## create_plm_change

Creates a PlmChange. Provide the unified PlmChange fields in the request body; they are mapped to the provider's API. Returns the created PlmChange.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPlmChange" method="post" path="/plm/{connection_id}/change" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.change.create_plm_change(plm_change: Models::Shared::PlmChange.new(
  affected_items: [],
  created_at: DateTime.iso8601('2021-08-02T05:58:32.287Z'),
  description: 'Vorago spiculum avaritia adipiscor callide.',
  id: '09708f65-8067-4d4e-92ce-846053e1141a',
  metadata: [],
  name: 'Update goodwill',
  number: 'ECO-6591',
  priority: 'Medium',
  status: Models::Shared::PlmChangeStatus::IN_REVIEW,
  type: Models::Shared::PlmChangeType::ORDER,
  updated_at: DateTime.iso8601('2026-09-18T11:48:12.703Z'),
  url: 'https://warmhearted-fraudster.biz/',
), connection_id: '<id>')

unless res.plm_change.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `plm_change`                                                                                                                                     | [Models::Shared::PlmChange](../../models/shared/plmchange.md)                                                                                    | :heavy_check_mark:                                                                                                                               | A change request, order or notice                                                                                                                |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePlmChangeQueryParamFields](../../models/operations/createplmchangequeryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePlmChangeResponse)](../../models/operations/createplmchangeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_plm_change

Retrieves a single PlmChange by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPlmChange" method="get" path="/plm/{connection_id}/change/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.change.get_plm_change(connection_id: '<id>', id: '<id>')

unless res.plm_change.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Change                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPlmChangeQueryParamFields](../../models/operations/getplmchangequeryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPlmChangeResponse)](../../models/operations/getplmchangeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_task_change

Retrieves a single TaskChange by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTaskChange" method="get" path="/task/{connection_id}/change/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.change.get_task_change(connection_id: '<id>', id: '<id>')

unless res.task_change.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Change                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetTaskChangeQueryParamFields](../../models/operations/gettaskchangequeryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetTaskChangeResponse)](../../models/operations/gettaskchangeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_plm_changes

Returns a list of PlmChanges. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPlmChanges" method="get" path="/plm/{connection_id}/change" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPlmChangesRequest.new(
  connection_id: '<id>',
)

res = s.change.list_plm_changes(request: req)

unless res.plm_changes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListPlmChangesRequest](../../models/operations/listplmchangesrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListPlmChangesResponse)](../../models/operations/listplmchangesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_task_changes

Returns a list of TaskChanges. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTaskChanges" method="get" path="/task/{connection_id}/change" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListTaskChangesRequest.new(
  connection_id: '<id>',
)

res = s.change.list_task_changes(request: req)

unless res.task_changes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListTaskChangesRequest](../../models/operations/listtaskchangesrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListTaskChangesResponse)](../../models/operations/listtaskchangesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_plm_change

Updates the PlmChange identified by `id`. Provide the unified PlmChange fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPlmChange" method="patch" path="/plm/{connection_id}/change/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPlmChangeRequest.new(
  plm_change: Models::Shared::PlmChange.new(
    affected_items: [],
    created_at: DateTime.iso8601('2021-08-02T05:58:32.287Z'),
    description: 'Vorago spiculum avaritia adipiscor callide.',
    id: '37a447af-61c7-4a5c-8f2f-6449c5d4f32b',
    metadata: [],
    name: 'Update goodwill',
    number: 'ECO-6591',
    priority: 'Medium',
    status: Models::Shared::PlmChangeStatus::IN_REVIEW,
    type: Models::Shared::PlmChangeType::ORDER,
    updated_at: DateTime.iso8601('2026-09-18T11:48:12.737Z'),
    url: 'https://warmhearted-fraudster.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.change.patch_plm_change(request: req)

unless res.plm_change.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchPlmChangeRequest](../../models/operations/patchplmchangerequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchPlmChangeResponse)](../../models/operations/patchplmchangeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_plm_change

Updates the PlmChange identified by `id`. Provide the unified PlmChange fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePlmChange" method="put" path="/plm/{connection_id}/change/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePlmChangeRequest.new(
  plm_change: Models::Shared::PlmChange.new(
    affected_items: [],
    created_at: DateTime.iso8601('2021-08-02T05:58:32.287Z'),
    description: 'Vorago spiculum avaritia adipiscor callide.',
    id: '37a447af-61c7-4a5c-8f2f-6449c5d4f32b',
    metadata: [],
    name: 'Update goodwill',
    number: 'ECO-6591',
    priority: 'Medium',
    status: Models::Shared::PlmChangeStatus::IN_REVIEW,
    type: Models::Shared::PlmChangeType::ORDER,
    updated_at: DateTime.iso8601('2026-09-18T11:48:12.737Z'),
    url: 'https://warmhearted-fraudster.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.change.update_plm_change(request: req)

unless res.plm_change.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdatePlmChangeRequest](../../models/operations/updateplmchangerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdatePlmChangeResponse)](../../models/operations/updateplmchangeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |