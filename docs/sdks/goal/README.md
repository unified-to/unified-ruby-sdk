# Goal
(*goal*)

## Overview

### Available Operations

* [create_performance_goal](#create_performance_goal) - Create a goal
* [get_performance_goal](#get_performance_goal) - Retrieve a goal
* [list_performance_goals](#list_performance_goals) - List all goals
* [patch_performance_goal](#patch_performance_goal) - Update a goal
* [remove_performance_goal](#remove_performance_goal) - Remove a goal
* [update_performance_goal](#update_performance_goal) - Update a goal

## create_performance_goal

Create a goal

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
  due_at: DateTime.iso8601('2026-07-28T19:55:41.781Z'),
  id: '10bcfe08-b7dd-4f7f-8ca1-6430cfeaa1b3',
  metadata: [],
  milestones: [
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 10.0,
      due_at: DateTime.iso8601('2026-06-02T23:09:02.814Z'),
      id: 'f68bfc9d-a6a4-4a5d-9fe9-43ce3d339e23',
      is_completed: true,
      name: 'Team-oriented secondary matrix',
      target_value: 32.0,
      unit: '%',
      weight: 7.0,
    ),
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 0.0,
      due_at: DateTime.iso8601('2026-08-07T12:41:01.847Z'),
      id: '47cf5b49-a6f1-4df7-ba3f-99262f4283a6',
      is_completed: true,
      name: 'Exclusive client-server conglomeration',
      target_value: 32.0,
      weight: 5.0,
    ),
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 31.0,
      description: 'Hic explicabo odit.',
      due_at: DateTime.iso8601('2026-10-09T10:55:32.550Z'),
      id: 'af66a2b9-cdc0-4b45-a7c5-3ea23ec07b2d',
      is_completed: true,
      name: 'Synchronised immersive success',
      target_value: 32.0,
      weight: 5.0,
    ),
  ],
  name: 'Proactive national protocol',
  progress: 3.0,
  start_at: DateTime.iso8601('2025-07-22T14:12:11.491Z'),
  status: Models::Shared::PerformanceGoalStatus::CLOSED,
  type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
  updated_at: DateTime.iso8601('2022-09-12T16:18:09.654Z'),
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

## get_performance_goal

Retrieve a goal

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

## list_performance_goals

List all goals

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

Update a goal

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
    due_at: DateTime.iso8601('2026-07-28T19:55:41.806Z'),
    id: '6d231c8f-a0dc-443a-8116-e0fe981e92e2',
    metadata: [],
    milestones: [
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 10.0,
        due_at: DateTime.iso8601('2026-06-02T23:09:02.839Z'),
        id: '77e55de7-8fbb-4f91-b953-e50f3308d4db',
        is_completed: true,
        name: 'Team-oriented secondary matrix',
        target_value: 32.0,
        unit: '%',
        weight: 7.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 0.0,
        due_at: DateTime.iso8601('2026-08-07T12:41:01.872Z'),
        id: '3fe8ebba-ae87-4f11-a25c-bba4e08a8ba8',
        is_completed: true,
        name: 'Exclusive client-server conglomeration',
        target_value: 32.0,
        weight: 5.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 31.0,
        description: 'Hic explicabo odit.',
        due_at: DateTime.iso8601('2026-10-09T10:55:32.576Z'),
        id: '6a6e9db7-3cd9-4cf8-accc-e9f5b129d9e8',
        is_completed: true,
        name: 'Synchronised immersive success',
        target_value: 32.0,
        weight: 5.0,
      ),
    ],
    name: 'Proactive national protocol',
    progress: 3.0,
    start_at: DateTime.iso8601('2025-07-22T14:12:11.513Z'),
    status: Models::Shared::PerformanceGoalStatus::CLOSED,
    type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
    updated_at: DateTime.iso8601('2022-09-12T16:18:09.664Z'),
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

Remove a goal

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

Update a goal

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
    due_at: DateTime.iso8601('2026-07-28T19:55:41.806Z'),
    id: '6d231c8f-a0dc-443a-8116-e0fe981e92e2',
    metadata: [],
    milestones: [
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 10.0,
        due_at: DateTime.iso8601('2026-06-02T23:09:02.839Z'),
        id: '77e55de7-8fbb-4f91-b953-e50f3308d4db',
        is_completed: true,
        name: 'Team-oriented secondary matrix',
        target_value: 32.0,
        unit: '%',
        weight: 7.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 0.0,
        due_at: DateTime.iso8601('2026-08-07T12:41:01.872Z'),
        id: '3fe8ebba-ae87-4f11-a25c-bba4e08a8ba8',
        is_completed: true,
        name: 'Exclusive client-server conglomeration',
        target_value: 32.0,
        weight: 5.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 31.0,
        description: 'Hic explicabo odit.',
        due_at: DateTime.iso8601('2026-10-09T10:55:32.576Z'),
        id: '6a6e9db7-3cd9-4cf8-accc-e9f5b129d9e8',
        is_completed: true,
        name: 'Synchronised immersive success',
        target_value: 32.0,
        weight: 5.0,
      ),
    ],
    name: 'Proactive national protocol',
    progress: 3.0,
    start_at: DateTime.iso8601('2025-07-22T14:12:11.513Z'),
    status: Models::Shared::PerformanceGoalStatus::CLOSED,
    type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
    updated_at: DateTime.iso8601('2022-09-12T16:18:09.664Z'),
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