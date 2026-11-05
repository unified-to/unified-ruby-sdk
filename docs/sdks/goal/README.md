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
  due_at: DateTime.iso8601('2026-08-13T02:49:49.509Z'),
  id: '991c5354-fa65-4fd9-9085-a8605a192f09',
  metadata: [],
  milestones: [
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 10.0,
      due_at: DateTime.iso8601('2026-06-17T21:29:01.405Z'),
      id: '99a72aa1-9146-41e8-880c-b397d029050d',
      is_completed: true,
      name: 'Team-oriented secondary matrix',
      target_value: 32.0,
      unit: '%',
      weight: 7.0,
    ),
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 0.0,
      due_at: DateTime.iso8601('2026-08-22T21:04:24.907Z'),
      id: '37c2dd98-d450-47bc-a550-6df8e279b5e6',
      is_completed: true,
      name: 'Exclusive client-server conglomeration',
      target_value: 32.0,
      weight: 5.0,
    ),
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 31.0,
      description: 'Hic explicabo odit.',
      due_at: DateTime.iso8601('2026-10-25T04:58:03.851Z'),
      id: '57378dfc-25b8-4fb5-a504-869d70dfee9b',
      is_completed: true,
      name: 'Synchronised immersive success',
      target_value: 32.0,
      weight: 5.0,
    ),
  ],
  name: 'Proactive national protocol',
  progress: 3.0,
  start_at: DateTime.iso8601('2025-08-04T12:09:40.750Z'),
  status: Models::Shared::PerformanceGoalStatus::CLOSED,
  type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
  updated_at: DateTime.iso8601('2022-09-18T22:08:08.884Z'),
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
    due_at: DateTime.iso8601('2026-08-13T02:49:49.531Z'),
    id: 'f427b685-2046-4014-b5dc-2b23154c451d',
    metadata: [],
    milestones: [
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 10.0,
        due_at: DateTime.iso8601('2026-06-17T21:29:01.426Z'),
        id: 'c00e4911-735a-4167-bb90-94bc9b329942',
        is_completed: true,
        name: 'Team-oriented secondary matrix',
        target_value: 32.0,
        unit: '%',
        weight: 7.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 0.0,
        due_at: DateTime.iso8601('2026-08-22T21:04:24.929Z'),
        id: '90efca3d-08b7-4228-a045-8301be7f9679',
        is_completed: true,
        name: 'Exclusive client-server conglomeration',
        target_value: 32.0,
        weight: 5.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 31.0,
        description: 'Hic explicabo odit.',
        due_at: DateTime.iso8601('2026-10-25T04:58:03.874Z'),
        id: '37b2a327-9adc-4c9e-8cc3-ac3c678cb1d2',
        is_completed: true,
        name: 'Synchronised immersive success',
        target_value: 32.0,
        weight: 5.0,
      ),
    ],
    name: 'Proactive national protocol',
    progress: 3.0,
    start_at: DateTime.iso8601('2025-08-04T12:09:40.767Z'),
    status: Models::Shared::PerformanceGoalStatus::CLOSED,
    type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
    updated_at: DateTime.iso8601('2022-09-18T22:08:08.893Z'),
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
    due_at: DateTime.iso8601('2026-08-13T02:49:49.531Z'),
    id: 'f427b685-2046-4014-b5dc-2b23154c451d',
    metadata: [],
    milestones: [
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 10.0,
        due_at: DateTime.iso8601('2026-06-17T21:29:01.426Z'),
        id: 'c00e4911-735a-4167-bb90-94bc9b329942',
        is_completed: true,
        name: 'Team-oriented secondary matrix',
        target_value: 32.0,
        unit: '%',
        weight: 7.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 0.0,
        due_at: DateTime.iso8601('2026-08-22T21:04:24.929Z'),
        id: '90efca3d-08b7-4228-a045-8301be7f9679',
        is_completed: true,
        name: 'Exclusive client-server conglomeration',
        target_value: 32.0,
        weight: 5.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 31.0,
        description: 'Hic explicabo odit.',
        due_at: DateTime.iso8601('2026-10-25T04:58:03.874Z'),
        id: '37b2a327-9adc-4c9e-8cc3-ac3c678cb1d2',
        is_completed: true,
        name: 'Synchronised immersive success',
        target_value: 32.0,
        weight: 5.0,
      ),
    ],
    name: 'Proactive national protocol',
    progress: 3.0,
    start_at: DateTime.iso8601('2025-08-04T12:09:40.767Z'),
    status: Models::Shared::PerformanceGoalStatus::CLOSED,
    type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
    updated_at: DateTime.iso8601('2022-09-18T22:08:08.893Z'),
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