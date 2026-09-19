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
  due_at: DateTime.iso8601('2026-06-28T20:56:08.908Z'),
  id: '0157968a-5882-4231-ba87-095a70db7c64',
  milestones: [
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 10.0,
      due_at: DateTime.iso8601('2026-05-04T16:57:02.837Z'),
      id: 'ec90d3e3-23bd-4d9f-a5d7-e388979f90d9',
      is_completed: true,
      name: 'Front-line asynchronous hub',
      target_value: 32.0,
      unit: '%',
      weight: 7.0,
    ),
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 0.0,
      due_at: DateTime.iso8601('2026-07-08T10:46:34.504Z'),
      id: '09e04b09-7197-4fc4-9c32-077230408c26',
      is_completed: true,
      name: 'Organized encompassing archive',
      target_value: 32.0,
      weight: 5.0,
    ),
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 31.0,
      description: 'Nobis tremo debitis.',
      due_at: DateTime.iso8601('2026-09-08T14:06:11.511Z'),
      id: 'bbe63683-c1d0-4932-89ac-ef81e73ae6f1',
      is_completed: true,
      name: 'Devolved directional middleware',
      target_value: 32.0,
      weight: 5.0,
    ),
  ],
  name: 'Proactive national protocol',
  progress: 3.0,
  start_at: DateTime.iso8601('2025-06-27T06:47:59.776Z'),
  status: Models::Shared::PerformanceGoalStatus::CLOSED,
  type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
  updated_at: DateTime.iso8601('2022-08-31T10:41:06.725Z'),
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
    due_at: DateTime.iso8601('2026-06-28T20:56:08.921Z'),
    id: '39415313-f83a-4986-8cf6-a2b0acc6830e',
    milestones: [
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 10.0,
        due_at: DateTime.iso8601('2026-05-04T16:57:02.850Z'),
        id: 'ec90d3e3-23bd-4d9f-a5d7-e388979f90d9',
        is_completed: true,
        name: 'Front-line asynchronous hub',
        target_value: 32.0,
        unit: '%',
        weight: 7.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 0.0,
        due_at: DateTime.iso8601('2026-07-08T10:46:34.518Z'),
        id: '09e04b09-7197-4fc4-9c32-077230408c26',
        is_completed: true,
        name: 'Organized encompassing archive',
        target_value: 32.0,
        weight: 5.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 31.0,
        description: 'Nobis tremo debitis.',
        due_at: DateTime.iso8601('2026-09-08T14:06:11.525Z'),
        id: 'bbe63683-c1d0-4932-89ac-ef81e73ae6f1',
        is_completed: true,
        name: 'Devolved directional middleware',
        target_value: 32.0,
        weight: 5.0,
      ),
    ],
    name: 'Proactive national protocol',
    progress: 3.0,
    start_at: DateTime.iso8601('2025-06-27T06:47:59.788Z'),
    status: Models::Shared::PerformanceGoalStatus::CLOSED,
    type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
    updated_at: DateTime.iso8601('2022-08-31T10:41:06.730Z'),
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
    due_at: DateTime.iso8601('2026-06-28T20:56:08.921Z'),
    id: '39415313-f83a-4986-8cf6-a2b0acc6830e',
    milestones: [
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 10.0,
        due_at: DateTime.iso8601('2026-05-04T16:57:02.850Z'),
        id: 'ec90d3e3-23bd-4d9f-a5d7-e388979f90d9',
        is_completed: true,
        name: 'Front-line asynchronous hub',
        target_value: 32.0,
        unit: '%',
        weight: 7.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 0.0,
        due_at: DateTime.iso8601('2026-07-08T10:46:34.518Z'),
        id: '09e04b09-7197-4fc4-9c32-077230408c26',
        is_completed: true,
        name: 'Organized encompassing archive',
        target_value: 32.0,
        weight: 5.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 31.0,
        description: 'Nobis tremo debitis.',
        due_at: DateTime.iso8601('2026-09-08T14:06:11.525Z'),
        id: 'bbe63683-c1d0-4932-89ac-ef81e73ae6f1',
        is_completed: true,
        name: 'Devolved directional middleware',
        target_value: 32.0,
        weight: 5.0,
      ),
    ],
    name: 'Proactive national protocol',
    progress: 3.0,
    start_at: DateTime.iso8601('2025-06-27T06:47:59.788Z'),
    status: Models::Shared::PerformanceGoalStatus::CLOSED,
    type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
    updated_at: DateTime.iso8601('2022-08-31T10:41:06.730Z'),
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