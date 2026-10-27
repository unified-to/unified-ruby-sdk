# Performance
(*performance*)

## Overview

### Available Operations

* [create_performance_feedback](#create_performance_feedback) - Create a feedback
* [create_performance_goal](#create_performance_goal) - Create a goal
* [get_performance_cycle](#get_performance_cycle) - Retrieve a cycle
* [get_performance_feedback](#get_performance_feedback) - Retrieve a feedback
* [get_performance_goal](#get_performance_goal) - Retrieve a goal
* [get_performance_review](#get_performance_review) - Retrieve a review
* [list_performance_cycles](#list_performance_cycles) - List all cycles
* [list_performance_feedbacks](#list_performance_feedbacks) - List all feedbacks
* [list_performance_goals](#list_performance_goals) - List all goals
* [list_performance_reviews](#list_performance_reviews) - List all reviews
* [patch_performance_goal](#patch_performance_goal) - Update a goal
* [remove_performance_goal](#remove_performance_goal) - Remove a goal
* [update_performance_goal](#update_performance_goal) - Update a goal

## create_performance_feedback

Creates a PerformanceFeedback. Provide the unified PerformanceFeedback fields in the request body; they are mapped to the provider's API. Returns the created PerformanceFeedback.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPerformanceFeedback" method="post" path="/performance/{connection_id}/feedback" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.performance.create_performance_feedback(performance_feedback: Models::Shared::PerformanceFeedback.new(
  created_at: DateTime.iso8601('2023-04-11T16:21:53.862Z'),
  id: 'c0178d92-2461-4b14-9d1b-a3327c2ce53d',
  is_visible: true,
  message: 'Tabernus corpus voluptate aestus.',
  metadata: [],
  tags: [
    'well-to-do',
    'hexagon',
  ],
  type: Models::Shared::PerformanceFeedbackType::PRAISE,
  updated_at: DateTime.iso8601('2025-09-08T03:08:17.051Z'),
  user_id: '<id>',
), connection_id: '<id>')

unless res.performance_feedback.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `performance_feedback`                                                                                                                           | [Models::Shared::PerformanceFeedback](../../models/shared/performancefeedback.md)                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreatePerformanceFeedbackQueryParamFields](../../models/operations/createperformancefeedbackqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreatePerformanceFeedbackResponse)](../../models/operations/createperformancefeedbackresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.performance.create_performance_goal(performance_goal: Models::Shared::PerformanceGoal.new(
  created_at: DateTime.iso8601('2020-01-09T20:43:07.380Z'),
  description: 'Suscipit suspendo vulnero vel facere valeo vallum degero.',
  due_at: DateTime.iso8601('2026-08-04T11:44:20.856Z'),
  id: 'e47b78c8-8464-4e3c-becd-4a6f3a182033',
  metadata: [],
  milestones: [
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 10.0,
      due_at: DateTime.iso8601('2026-06-09T11:13:44.990Z'),
      id: '7ed6760e-b3f2-4d8c-bfcd-8c2e12769df2',
      is_completed: true,
      name: 'Team-oriented secondary matrix',
      target_value: 32.0,
      unit: '%',
      weight: 7.0,
    ),
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 0.0,
      due_at: DateTime.iso8601('2026-08-14T05:08:33.533Z'),
      id: '8b2f0ce5-8903-4acb-9816-d924c866f211',
      is_completed: true,
      name: 'Exclusive client-server conglomeration',
      target_value: 32.0,
      weight: 5.0,
    ),
    Models::Shared::PerformanceGoalMilestone.new(
      current_value: 31.0,
      description: 'Hic explicabo odit.',
      due_at: DateTime.iso8601('2026-10-16T07:35:19.460Z'),
      id: '5d00124a-d930-41ed-b8cc-88c8fc4c3786',
      is_completed: true,
      name: 'Synchronised immersive success',
      target_value: 32.0,
      weight: 5.0,
    ),
  ],
  name: 'Proactive national protocol',
  progress: 3.0,
  start_at: DateTime.iso8601('2025-07-28T05:12:39.782Z'),
  status: Models::Shared::PerformanceGoalStatus::CLOSED,
  type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
  updated_at: DateTime.iso8601('2022-09-15T09:33:54.727Z'),
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

## get_performance_cycle

Retrieves a single PerformanceCycle by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPerformanceCycle" method="get" path="/performance/{connection_id}/cycle/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.performance.get_performance_cycle(connection_id: '<id>', id: '<id>')

unless res.performance_cycle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Cycle                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPerformanceCycleQueryParamFields](../../models/operations/getperformancecyclequeryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPerformanceCycleResponse)](../../models/operations/getperformancecycleresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_performance_feedback

Retrieves a single PerformanceFeedback by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPerformanceFeedback" method="get" path="/performance/{connection_id}/feedback/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.performance.get_performance_feedback(connection_id: '<id>', id: '<id>')

unless res.performance_feedback.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Feedback                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPerformanceFeedbackQueryParamFields](../../models/operations/getperformancefeedbackqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPerformanceFeedbackResponse)](../../models/operations/getperformancefeedbackresponse.md)**

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

res = s.performance.get_performance_goal(connection_id: '<id>', id: '<id>')

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

## get_performance_review

Retrieves a single PerformanceReview by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPerformanceReview" method="get" path="/performance/{connection_id}/review/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.performance.get_performance_review(connection_id: '<id>', id: '<id>')

unless res.performance_review.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Review                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPerformanceReviewQueryParamFields](../../models/operations/getperformancereviewqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPerformanceReviewResponse)](../../models/operations/getperformancereviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_performance_cycles

Returns a list of PerformanceCycles. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPerformanceCycles" method="get" path="/performance/{connection_id}/cycle" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPerformanceCyclesRequest.new(
  connection_id: '<id>',
)

res = s.performance.list_performance_cycles(request: req)

unless res.performance_cycles.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListPerformanceCyclesRequest](../../models/operations/listperformancecyclesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListPerformanceCyclesResponse)](../../models/operations/listperformancecyclesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_performance_feedbacks

Returns a list of PerformanceFeedbacks. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPerformanceFeedbacks" method="get" path="/performance/{connection_id}/feedback" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPerformanceFeedbacksRequest.new(
  connection_id: '<id>',
)

res = s.performance.list_performance_feedbacks(request: req)

unless res.performance_feedbacks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListPerformanceFeedbacksRequest](../../models/operations/listperformancefeedbacksrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListPerformanceFeedbacksResponse)](../../models/operations/listperformancefeedbacksresponse.md)**

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

res = s.performance.list_performance_goals(request: req)

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

## list_performance_reviews

Returns a list of PerformanceReviews. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPerformanceReviews" method="get" path="/performance/{connection_id}/review" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPerformanceReviewsRequest.new(
  connection_id: '<id>',
)

res = s.performance.list_performance_reviews(request: req)

unless res.performance_reviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListPerformanceReviewsRequest](../../models/operations/listperformancereviewsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListPerformanceReviewsResponse)](../../models/operations/listperformancereviewsresponse.md)**

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
    due_at: DateTime.iso8601('2026-08-04T11:44:20.878Z'),
    id: 'bcaec359-2e4a-4f6f-b673-13359d58818f',
    metadata: [],
    milestones: [
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 10.0,
        due_at: DateTime.iso8601('2026-06-09T11:13:45.012Z'),
        id: '1c3abedc-b019-45b9-ad54-b702e83f2cbb',
        is_completed: true,
        name: 'Team-oriented secondary matrix',
        target_value: 32.0,
        unit: '%',
        weight: 7.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 0.0,
        due_at: DateTime.iso8601('2026-08-14T05:08:33.556Z'),
        id: 'bcbd00a4-2b54-49dc-966c-08295948a6c9',
        is_completed: true,
        name: 'Exclusive client-server conglomeration',
        target_value: 32.0,
        weight: 5.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 31.0,
        description: 'Hic explicabo odit.',
        due_at: DateTime.iso8601('2026-10-16T07:35:19.483Z'),
        id: 'db1e5b60-fc43-42f4-a6b2-c723d2851256',
        is_completed: true,
        name: 'Synchronised immersive success',
        target_value: 32.0,
        weight: 5.0,
      ),
    ],
    name: 'Proactive national protocol',
    progress: 3.0,
    start_at: DateTime.iso8601('2025-07-28T05:12:39.800Z'),
    status: Models::Shared::PerformanceGoalStatus::CLOSED,
    type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
    updated_at: DateTime.iso8601('2022-09-15T09:33:54.736Z'),
    weight: 5.0,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.performance.patch_performance_goal(request: req)

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

res = s.performance.remove_performance_goal(connection_id: '<id>', id: '<id>')

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
    due_at: DateTime.iso8601('2026-08-04T11:44:20.878Z'),
    id: 'bcaec359-2e4a-4f6f-b673-13359d58818f',
    metadata: [],
    milestones: [
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 10.0,
        due_at: DateTime.iso8601('2026-06-09T11:13:45.012Z'),
        id: '1c3abedc-b019-45b9-ad54-b702e83f2cbb',
        is_completed: true,
        name: 'Team-oriented secondary matrix',
        target_value: 32.0,
        unit: '%',
        weight: 7.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 0.0,
        due_at: DateTime.iso8601('2026-08-14T05:08:33.556Z'),
        id: 'bcbd00a4-2b54-49dc-966c-08295948a6c9',
        is_completed: true,
        name: 'Exclusive client-server conglomeration',
        target_value: 32.0,
        weight: 5.0,
      ),
      Models::Shared::PerformanceGoalMilestone.new(
        current_value: 31.0,
        description: 'Hic explicabo odit.',
        due_at: DateTime.iso8601('2026-10-16T07:35:19.483Z'),
        id: 'db1e5b60-fc43-42f4-a6b2-c723d2851256',
        is_completed: true,
        name: 'Synchronised immersive success',
        target_value: 32.0,
        weight: 5.0,
      ),
    ],
    name: 'Proactive national protocol',
    progress: 3.0,
    start_at: DateTime.iso8601('2025-07-28T05:12:39.800Z'),
    status: Models::Shared::PerformanceGoalStatus::CLOSED,
    type: Models::Shared::PerformanceGoalSchemasType::COMPANY,
    updated_at: DateTime.iso8601('2022-09-15T09:33:54.736Z'),
    weight: 5.0,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.performance.update_performance_goal(request: req)

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