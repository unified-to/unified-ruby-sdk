# Goal
(*goal*)

## Overview

### Available Operations

* [create_performance_goal](#create_performance_goal) - Create a goal
* [get_healthcare_goal](#get_healthcare_goal) - Retrieve a goal
* [get_performance_goal](#get_performance_goal) - Retrieve a goal
* [list_healthcare_goals](#list_healthcare_goals) - List all goals
* [list_performance_goals](#list_performance_goals) - List all goals
* [patch_performance_goal](#patch_performance_goal) - Update a goal
* [remove_performance_goal](#remove_performance_goal) - Remove a goal
* [update_performance_goal](#update_performance_goal) - Update a goal

## create_performance_goal

Creates a PerformanceGoal. Provide the unified PerformanceGoal fields in the request body; they are mapped to the provider's API. Returns the created PerformanceGoal.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPerformanceGoal" method="post" path="/performance/{connection_id}/goal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.goal.create_performance_goal(performance_goal: Models::Shared::PerformanceGoal.new(
  created_at: DateTime.iso8601('2020-01-09T20:43:07.380Z'),
  description: 'Suscipit suspendo vulnero vel facere valeo vallum degero.',
  due_at: DateTime.iso8601('2026-08-03T10:15:16.701Z'),
  id: '3557af06-871b-4ed3-be48-be7f62ee2d9c',
  metadata: [],
  milestones: [
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 10.0,
      due_at: DateTime.iso8601('2026-06-08T10:20:23.571Z'),
      id: '1d088adf-615a-4b47-bd6b-a488f49302a0',
      is_completed: true,
      name: 'Team-oriented secondary matrix',
      target_value: 32.0,
      unit: '%',
      weight: 7.0,
    ),
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 0.0,
      due_at: DateTime.iso8601('2026-08-13T03:33:17.405Z'),
      id: '2160fab9-1f7d-491d-9723-745ffe1227b3',
      is_completed: true,
      name: 'Exclusive client-server conglomeration',
      target_value: 32.0,
      weight: 5.0,
    ),
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 31.0,
      description: 'Hic explicabo odit.',
      due_at: DateTime.iso8601('2026-10-15T05:19:49.770Z'),
      id: 'e9eff614-f738-476e-b2b8-8d6a47e6e329',
      is_completed: true,
      name: 'Synchronised immersive success',
      target_value: 32.0,
      weight: 5.0,
    ),
  ],
  name: 'Proactive national protocol',
  progress: 3.0,
  start_at: DateTime.iso8601('2025-07-27T07:40:54.521Z'),
  status: Models::Shared::PerformanceGoalStatus::CLOSED,
  type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
  updated_at: DateTime.iso8601('2022-09-14T23:09:28.844Z'),
  weight: 5.0,
), connection_id: '<id>')

unless res.performance_goal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `performance_goal`                                                                                                                               | [Models::Shared::PerformanceGoal](../../models/shared/performancegoal.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePerformanceGoalQueryParamFields](../../models/operations/createperformancegoalqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePerformanceGoalResponse)](../../models/operations/createperformancegoalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_healthcare_goal

Retrieves a single HealthcareGoal by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareGoal" method="get" path="/healthcare/{connection_id}/goal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.goal.get_healthcare_goal(connection_id: '<id>', id: '<id>')

unless res.healthcare_goal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Goal                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareGoalQueryParamFields](../../models/operations/gethealthcaregoalqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareGoalResponse)](../../models/operations/gethealthcaregoalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_performance_goal

Retrieves a single PerformanceGoal by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPerformanceGoal" method="get" path="/performance/{connection_id}/goal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.goal.get_performance_goal(connection_id: '<id>', id: '<id>')

unless res.performance_goal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Goal                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPerformanceGoalQueryParamFields](../../models/operations/getperformancegoalqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPerformanceGoalResponse)](../../models/operations/getperformancegoalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_goals

Returns a list of HealthcareGoals. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareGoals" method="get" path="/healthcare/{connection_id}/goal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareGoalsRequest.new(
  connection_id: '<id>',
)

res = s.goal.list_healthcare_goals(request: req)

unless res.healthcare_goals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListHealthcareGoalsRequest](../../models/operations/listhealthcaregoalsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListHealthcareGoalsResponse)](../../models/operations/listhealthcaregoalsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_performance_goals

Returns a list of PerformanceGoals. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPerformanceGoals" method="get" path="/performance/{connection_id}/goal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPerformanceGoalsRequest.new(
  connection_id: '<id>',
)

res = s.goal.list_performance_goals(request: req)

unless res.performance_goals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListPerformanceGoalsRequest](../../models/operations/listperformancegoalsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListPerformanceGoalsResponse)](../../models/operations/listperformancegoalsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_performance_goal

Updates the PerformanceGoal identified by `id`. Provide the unified PerformanceGoal fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPerformanceGoal" method="patch" path="/performance/{connection_id}/goal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchPerformanceGoalRequest.new(
  performance_goal: Models::Shared::PerformanceGoal.new(
    created_at: DateTime.iso8601('2020-01-09T20:43:07.380Z'),
    description: 'Suscipit suspendo vulnero vel facere valeo vallum degero.',
    due_at: DateTime.iso8601('2026-08-03T10:15:16.721Z'),
    id: '747d02f0-2783-4adc-a618-2ff2ae210b6a',
    metadata: [],
    milestones: [
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 10.0,
        due_at: DateTime.iso8601('2026-06-08T10:20:23.591Z'),
        id: '538e4161-ee74-4911-8e5a-fba6bb56713a',
        is_completed: true,
        name: 'Team-oriented secondary matrix',
        target_value: 32.0,
        unit: '%',
        weight: 7.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 0.0,
        due_at: DateTime.iso8601('2026-08-13T03:33:17.425Z'),
        id: 'b48460ad-b8c7-4145-8a2c-1e43e0349c12',
        is_completed: true,
        name: 'Exclusive client-server conglomeration',
        target_value: 32.0,
        weight: 5.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 31.0,
        description: 'Hic explicabo odit.',
        due_at: DateTime.iso8601('2026-10-15T05:19:49.791Z'),
        id: 'd95cfe13-d907-4ba7-b718-2db332cff2ff',
        is_completed: true,
        name: 'Synchronised immersive success',
        target_value: 32.0,
        weight: 5.0,
      ),
    ],
    name: 'Proactive national protocol',
    progress: 3.0,
    start_at: DateTime.iso8601('2025-07-27T07:40:54.538Z'),
    status: Models::Shared::PerformanceGoalStatus::CLOSED,
    type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
    updated_at: DateTime.iso8601('2022-09-14T23:09:28.852Z'),
    weight: 5.0,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.goal.patch_performance_goal(request: req)

unless res.performance_goal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchPerformanceGoalRequest](../../models/operations/patchperformancegoalrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchPerformanceGoalResponse)](../../models/operations/patchperformancegoalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_performance_goal

Deletes the PerformanceGoal identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePerformanceGoal" method="delete" path="/performance/{connection_id}/goal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.goal.remove_performance_goal(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Goal       |

### Response

**[T.nilable(Models::Operations::RemovePerformanceGoalResponse)](../../models/operations/removeperformancegoalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_performance_goal

Updates the PerformanceGoal identified by `id`. Provide the unified PerformanceGoal fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePerformanceGoal" method="put" path="/performance/{connection_id}/goal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdatePerformanceGoalRequest.new(
  performance_goal: Models::Shared::PerformanceGoal.new(
    created_at: DateTime.iso8601('2020-01-09T20:43:07.380Z'),
    description: 'Suscipit suspendo vulnero vel facere valeo vallum degero.',
    due_at: DateTime.iso8601('2026-08-03T10:15:16.721Z'),
    id: '747d02f0-2783-4adc-a618-2ff2ae210b6a',
    metadata: [],
    milestones: [
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 10.0,
        due_at: DateTime.iso8601('2026-06-08T10:20:23.591Z'),
        id: '538e4161-ee74-4911-8e5a-fba6bb56713a',
        is_completed: true,
        name: 'Team-oriented secondary matrix',
        target_value: 32.0,
        unit: '%',
        weight: 7.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 0.0,
        due_at: DateTime.iso8601('2026-08-13T03:33:17.425Z'),
        id: 'b48460ad-b8c7-4145-8a2c-1e43e0349c12',
        is_completed: true,
        name: 'Exclusive client-server conglomeration',
        target_value: 32.0,
        weight: 5.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 31.0,
        description: 'Hic explicabo odit.',
        due_at: DateTime.iso8601('2026-10-15T05:19:49.791Z'),
        id: 'd95cfe13-d907-4ba7-b718-2db332cff2ff',
        is_completed: true,
        name: 'Synchronised immersive success',
        target_value: 32.0,
        weight: 5.0,
      ),
    ],
    name: 'Proactive national protocol',
    progress: 3.0,
    start_at: DateTime.iso8601('2025-07-27T07:40:54.538Z'),
    status: Models::Shared::PerformanceGoalStatus::CLOSED,
    type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
    updated_at: DateTime.iso8601('2022-09-14T23:09:28.852Z'),
    weight: 5.0,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.goal.update_performance_goal(request: req)

unless res.performance_goal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdatePerformanceGoalRequest](../../models/operations/updateperformancegoalrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdatePerformanceGoalResponse)](../../models/operations/updateperformancegoalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |