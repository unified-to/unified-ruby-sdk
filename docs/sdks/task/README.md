# Task

## Overview

### Available Operations

* [create_genai_task](#create_genai_task) - Create a task
* [create_task_comment](#create_task_comment) - Create a comment
* [create_task_project](#create_task_project) - Create a project
* [create_task_task](#create_task_task) - Create a task
* [get_genai_task](#get_genai_task) - Retrieve a task
* [get_task_change](#get_task_change) - Retrieve a change
* [get_task_comment](#get_task_comment) - Retrieve a comment
* [get_task_project](#get_task_project) - Retrieve a project
* [get_task_task](#get_task_task) - Retrieve a task
* [list_genai_tasks](#list_genai_tasks) - List all tasks
* [list_task_changes](#list_task_changes) - List all changes
* [list_task_comments](#list_task_comments) - List all comments
* [list_task_projects](#list_task_projects) - List all projects
* [list_task_tasks](#list_task_tasks) - List all tasks
* [patch_genai_task](#patch_genai_task) - Update a task
* [patch_task_comment](#patch_task_comment) - Update a comment
* [patch_task_project](#patch_task_project) - Update a project
* [patch_task_task](#patch_task_task) - Update a task
* [remove_genai_task](#remove_genai_task) - Remove a task
* [remove_task_comment](#remove_task_comment) - Remove a comment
* [remove_task_project](#remove_task_project) - Remove a project
* [remove_task_task](#remove_task_task) - Remove a task
* [update_genai_task](#update_genai_task) - Update a task
* [update_task_comment](#update_task_comment) - Update a comment
* [update_task_project](#update_task_project) - Update a project
* [update_task_task](#update_task_task) - Update a task

## create_genai_task

Creates a GenaiTask. Provide the unified GenaiTask fields in the request body; they are mapped to the provider's API. Returns the created GenaiTask.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createGenaiTask" method="post" path="/genai/{connection_id}/task" example="genai_task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.create_genai_task(genai_task: Models::Shared::GenaiTask.new(
  completed_at: DateTime.iso8601('2025-10-20T23:52:23.845Z'),
  created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
  files_changed: 19.0,
  id: 'bab916be-2bf7-4327-b345-22fdfd4c3650',
  instructions: 'Benigne canonicus officiis solvo adsidue deleo angustus.',
  lines_added: 244.0,
  lines_deleted: 118.0,
  messages: [
    Models::Shared::GenaiContent.new(
      content: 'Stultus esse cursim stabilis tenetur amet contigo tristis.',
      images: [],
      role: Models::Shared::Role::ASSISTANT
    ),
  ],
  name: 'connect multi-byte port',
  pullrequest_url: 'https://github.com/berenice.satterfield/joshingly-ignorance/pull/383',
  repo_url: 'https://github.com/berenice.satterfield/joshingly-ignorance',
  source_branch_identifier: 'main',
  started_at: DateTime.iso8601('2024-06-04T16:55:34.913Z'),
  status: Models::Shared::GenaiTaskStatus::BLOCKED,
  summary: 'Cur aeternus cogito vesper.',
  target_branch_identifier: 'agent/joshingly-ignorance',
  tokens_used: 2165.0,
  updated_at: DateTime.iso8601('2023-03-07T15:26:21.114Z'),
  web_url: 'https://inexperienced-adrenalin.biz/'
), connection_id: '<id>')

unless res.genai_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `genai_task`                                                                                                                                     | [Models::Shared::GenaiTask](../../models/shared/genaitask.md)                                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateGenaiTaskQueryParamFields](../../models/operations/creategenaitaskqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateGenaiTaskResponse)](../../models/operations/creategenaitaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_task_comment

Creates a TaskComment. Provide the unified TaskComment fields in the request body; they are mapped to the provider's API. Returns the created TaskComment.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTaskComment" method="post" path="/task/{connection_id}/comment" example="task_comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.create_task_comment(task_comment: Models::Shared::TaskComment.new(
  created_at: DateTime.iso8601('2019-10-12T20:33:37.879Z'),
  has_children: true,
  id: 'cbf17f1f-8e34-4bf1-9a5b-26d06a0051c8',
  metadata: [],
  text: 'Colo ulciscor sublime tabernus.',
  updated_at: DateTime.iso8601('2021-10-10T01:30:36.861Z')
), connection_id: '<id>')

unless res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `task_comment`                                                                                                                                   | [Models::Shared::TaskComment](../../models/shared/taskcomment.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateTaskCommentQueryParamFields](../../models/operations/createtaskcommentqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateTaskCommentResponse)](../../models/operations/createtaskcommentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_task_project

Creates a TaskProject. Provide the unified TaskProject fields in the request body; they are mapped to the provider's API. Returns the created TaskProject.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTaskProject" method="post" path="/task/{connection_id}/project" example="task_project" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.create_task_project(task_project: Models::Shared::TaskProject.new(
  created_at: DateTime.iso8601('2023-06-23T16:39:40.446Z'),
  description: 'Valetudo aggredior accommodo curiositas vox.',
  has_children: false,
  has_tasks: false,
  id: 'a266c9f1-8e00-47a9-8032-b90d57657db0',
  metadata: [
    Models::Shared::TaskMetadata.new(
      extra_data: {

      },
      format: Models::Shared::TaskMetadataFormat::TEXT,
      id: '7e56adc4-ead0-4455-88fb-3589fd47e61d',
      namespace: 'custom',
      slug: 'decens',
      value: 'uterque'
    ),
    Models::Shared::TaskMetadata.new(
      extra_data: {

      },
      format: Models::Shared::TaskMetadataFormat::TEXT,
      id: 'f3b928fe-6c8c-4e3d-b311-b72ec744ae6c',
      namespace: 'custom',
      slug: 'benevolentia',
      value: 'pariatur'
    ),
  ],
  name: 'Garden',
  updated_at: DateTime.iso8601('2023-10-13T18:26:40.564Z')
), connection_id: '<id>')

unless res.task_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `task_project`                                                                                                                                   | [Models::Shared::TaskProject](../../models/shared/taskproject.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateTaskProjectQueryParamFields](../../models/operations/createtaskprojectqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateTaskProjectResponse)](../../models/operations/createtaskprojectresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_task_task

Creates a TaskTask. Provide the unified TaskTask fields in the request body; they are mapped to the provider's API. Returns the created TaskTask.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTaskTask" method="post" path="/task/{connection_id}/task" example="task_task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.create_task_task(task_task: Models::Shared::TaskTask.new(
  attachment_ids: [],
  created_at: DateTime.iso8601('2019-01-31T08:34:55.626Z'),
  due_at: DateTime.iso8601('2025-10-02T00:16:21.910Z'),
  has_children: true,
  id: 'a5061bba-e2ac-445a-9546-29985efae007',
  metadata: [],
  name: 'I\'ll compress the optical IB interface, that should capacitor the JBOD system!',
  notes: 'Argentum ventosus rem talis neque thymbra. Absconditus peccatus crustulum tollo cometes volva vacuus eos cedo. Somnus utpote coadunatio denuncio adopto autus sono atrocitas. Concido rerum cura aveho torqueo tempore tubineus vomer tempore suscipit. Clibanus valetudo vulnero pauper caput absorbeo correptius vir deduco.',
  priority: 'MEDIUM',
  progress: 33.0,
  start_at: DateTime.iso8601('2025-09-03T14:24:52.948Z'),
  status: Models::Shared::TaskTaskStatus::OPENED,
  story_points: 0.0,
  tags: [
    'curis',
    'crinis',
  ],
  time_spent: 5359.0,
  time_spent_unit: 'SECONDS',
  type: 'magni',
  updated_at: DateTime.iso8601('2022-04-16T22:48:09.557Z'),
  url: 'https://elementary-utilization.net/'
), connection_id: '<id>')

unless res.task_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `task_task`                                                                                                                                      | [Models::Shared::TaskTask](../../models/shared/tasktask.md)                                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateTaskTaskQueryParamFields](../../models/operations/createtasktaskqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateTaskTaskResponse)](../../models/operations/createtasktaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_genai_task

Retrieves a single GenaiTask by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getGenaiTask" method="get" path="/genai/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.get_genai_task(connection_id: '<id>', id: '<id>')

unless res.genai_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Task                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetGenaiTaskQueryParamFields](../../models/operations/getgenaitaskqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetGenaiTaskResponse)](../../models/operations/getgenaitaskresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.get_task_change(connection_id: '<id>', id: '<id>')

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

## get_task_comment

Retrieves a single TaskComment by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTaskComment" method="get" path="/task/{connection_id}/comment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.get_task_comment(connection_id: '<id>', id: '<id>')

unless res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Comment                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetTaskCommentQueryParamFields](../../models/operations/gettaskcommentqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetTaskCommentResponse)](../../models/operations/gettaskcommentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_task_project

Retrieves a single TaskProject by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTaskProject" method="get" path="/task/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.get_task_project(connection_id: '<id>', id: '<id>')

unless res.task_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Project                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetTaskProjectQueryParamFields](../../models/operations/gettaskprojectqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetTaskProjectResponse)](../../models/operations/gettaskprojectresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_task_task

Retrieves a single TaskTask by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTaskTask" method="get" path="/task/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.get_task_task(connection_id: '<id>', id: '<id>')

unless res.task_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Task                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetTaskTaskQueryParamFields](../../models/operations/gettasktaskqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetTaskTaskResponse)](../../models/operations/gettasktaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_genai_tasks

Returns a list of GenaiTasks. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listGenaiTasks" method="get" path="/genai/{connection_id}/task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListGenaiTasksRequest.new(
  connection_id: '<id>'
)
res = s.task.list_genai_tasks(request: req)

unless res.genai_tasks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListGenaiTasksRequest](../../models/operations/listgenaitasksrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListGenaiTasksResponse)](../../models/operations/listgenaitasksresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListTaskChangesRequest.new(
  connection_id: '<id>'
)
res = s.task.list_task_changes(request: req)

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

## list_task_comments

Returns a list of TaskComments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTaskComments" method="get" path="/task/{connection_id}/comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListTaskCommentsRequest.new(
  connection_id: '<id>'
)
res = s.task.list_task_comments(request: req)

unless res.task_comments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListTaskCommentsRequest](../../models/operations/listtaskcommentsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListTaskCommentsResponse)](../../models/operations/listtaskcommentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_task_projects

Returns a list of TaskProjects. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTaskProjects" method="get" path="/task/{connection_id}/project" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListTaskProjectsRequest.new(
  connection_id: '<id>'
)
res = s.task.list_task_projects(request: req)

unless res.task_projects.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListTaskProjectsRequest](../../models/operations/listtaskprojectsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListTaskProjectsResponse)](../../models/operations/listtaskprojectsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_task_tasks

Returns a list of TaskTasks. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTaskTasks" method="get" path="/task/{connection_id}/task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListTaskTasksRequest.new(
  connection_id: '<id>'
)
res = s.task.list_task_tasks(request: req)

unless res.task_tasks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListTaskTasksRequest](../../models/operations/listtasktasksrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListTaskTasksResponse)](../../models/operations/listtasktasksresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_genai_task

Updates the GenaiTask identified by `id`. Provide the unified GenaiTask fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchGenaiTask" method="patch" path="/genai/{connection_id}/task/{id}" example="genai_task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchGenaiTaskRequest.new(
  genai_task: Models::Shared::GenaiTask.new(
    completed_at: DateTime.iso8601('2025-10-20T23:52:23.857Z'),
    created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
    files_changed: 19.0,
    id: '0c47797d-cd87-4a83-a8e4-5c7130b35154',
    instructions: 'Benigne canonicus officiis solvo adsidue deleo angustus.',
    lines_added: 244.0,
    lines_deleted: 118.0,
    messages: [
      Models::Shared::GenaiContent.new(
        content: 'Stultus esse cursim stabilis tenetur amet contigo tristis.',
        images: [],
        role: Models::Shared::Role::ASSISTANT
      ),
    ],
    name: 'connect multi-byte port',
    pullrequest_url: 'https://github.com/berenice.satterfield/joshingly-ignorance/pull/383',
    repo_url: 'https://github.com/berenice.satterfield/joshingly-ignorance',
    source_branch_identifier: 'main',
    started_at: DateTime.iso8601('2024-06-04T16:55:34.922Z'),
    status: Models::Shared::GenaiTaskStatus::BLOCKED,
    summary: 'Cur aeternus cogito vesper.',
    target_branch_identifier: 'agent/joshingly-ignorance',
    tokens_used: 2165.0,
    updated_at: DateTime.iso8601('2023-03-07T15:26:21.120Z'),
    web_url: 'https://inexperienced-adrenalin.biz/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.task.patch_genai_task(request: req)

unless res.genai_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchGenaiTaskRequest](../../models/operations/patchgenaitaskrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchGenaiTaskResponse)](../../models/operations/patchgenaitaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_task_comment

Updates the TaskComment identified by `id`. Provide the unified TaskComment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchTaskComment" method="patch" path="/task/{connection_id}/comment/{id}" example="task_comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchTaskCommentRequest.new(
  task_comment: Models::Shared::TaskComment.new(
    created_at: DateTime.iso8601('2019-10-12T20:33:37.879Z'),
    has_children: true,
    id: '579f7d6c-3f71-48fc-a1ad-6312da9605b3',
    metadata: [],
    text: 'Colo ulciscor sublime tabernus.',
    updated_at: DateTime.iso8601('2021-10-10T01:30:36.864Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.task.patch_task_comment(request: req)

unless res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchTaskCommentRequest](../../models/operations/patchtaskcommentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchTaskCommentResponse)](../../models/operations/patchtaskcommentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_task_project

Updates the TaskProject identified by `id`. Provide the unified TaskProject fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchTaskProject" method="patch" path="/task/{connection_id}/project/{id}" example="task_project" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchTaskProjectRequest.new(
  task_project: Models::Shared::TaskProject.new(
    created_at: DateTime.iso8601('2023-06-23T16:39:40.446Z'),
    description: 'Valetudo aggredior accommodo curiositas vox.',
    has_children: false,
    has_tasks: false,
    id: 'fd3c39dc-5737-4021-ba92-e1c424962855',
    metadata: [
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: 'f6a501cc-1b58-46d1-a391-aa0f2eaf5b42',
        namespace: 'custom',
        slug: 'decens',
        value: 'uterque'
      ),
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: 'a72c27e6-4e82-42db-b4c5-17970296aea8',
        namespace: 'custom',
        slug: 'benevolentia',
        value: 'pariatur'
      ),
    ],
    name: 'Garden',
    updated_at: DateTime.iso8601('2023-10-13T18:26:40.565Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.task.patch_task_project(request: req)

unless res.task_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchTaskProjectRequest](../../models/operations/patchtaskprojectrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchTaskProjectResponse)](../../models/operations/patchtaskprojectresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_task_task

Updates the TaskTask identified by `id`. Provide the unified TaskTask fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchTaskTask" method="patch" path="/task/{connection_id}/task/{id}" example="task_task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchTaskTaskRequest.new(
  task_task: Models::Shared::TaskTask.new(
    attachment_ids: [],
    created_at: DateTime.iso8601('2019-01-31T08:34:55.626Z'),
    due_at: DateTime.iso8601('2025-10-02T00:16:21.928Z'),
    has_children: true,
    id: '63c7461f-8f0f-4db7-a51b-44d919049f43',
    metadata: [],
    name: 'I\'ll compress the optical IB interface, that should capacitor the JBOD system!',
    notes: 'Argentum ventosus rem talis neque thymbra. Absconditus peccatus crustulum tollo cometes volva vacuus eos cedo. Somnus utpote coadunatio denuncio adopto autus sono atrocitas. Concido rerum cura aveho torqueo tempore tubineus vomer tempore suscipit. Clibanus valetudo vulnero pauper caput absorbeo correptius vir deduco.',
    priority: 'MEDIUM',
    progress: 33.0,
    start_at: DateTime.iso8601('2025-09-03T14:24:52.966Z'),
    status: Models::Shared::TaskTaskStatus::OPENED,
    story_points: 0.0,
    tags: [
      'curis',
      'crinis',
    ],
    time_spent: 5359.0,
    time_spent_unit: 'SECONDS',
    type: 'magni',
    updated_at: DateTime.iso8601('2022-04-16T22:48:09.566Z'),
    url: 'https://elementary-utilization.net/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.task.patch_task_task(request: req)

unless res.task_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::PatchTaskTaskRequest](../../models/operations/patchtasktaskrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::PatchTaskTaskResponse)](../../models/operations/patchtasktaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_genai_task

Deletes the GenaiTask identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeGenaiTask" method="delete" path="/genai/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.remove_genai_task(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Task       |

### Response

**[T.nilable(Models::Operations::RemoveGenaiTaskResponse)](../../models/operations/removegenaitaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_task_comment

Deletes the TaskComment identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeTaskComment" method="delete" path="/task/{connection_id}/comment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.remove_task_comment(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Comment    |

### Response

**[T.nilable(Models::Operations::RemoveTaskCommentResponse)](../../models/operations/removetaskcommentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_task_project

Deletes the TaskProject identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeTaskProject" method="delete" path="/task/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.remove_task_project(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Project    |

### Response

**[T.nilable(Models::Operations::RemoveTaskProjectResponse)](../../models/operations/removetaskprojectresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_task_task

Deletes the TaskTask identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeTaskTask" method="delete" path="/task/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.task.remove_task_task(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Task       |

### Response

**[T.nilable(Models::Operations::RemoveTaskTaskResponse)](../../models/operations/removetasktaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_genai_task

Updates the GenaiTask identified by `id`. Provide the unified GenaiTask fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateGenaiTask" method="put" path="/genai/{connection_id}/task/{id}" example="genai_task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateGenaiTaskRequest.new(
  genai_task: Models::Shared::GenaiTask.new(
    completed_at: DateTime.iso8601('2025-10-20T23:52:23.857Z'),
    created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
    files_changed: 19.0,
    id: '0c47797d-cd87-4a83-a8e4-5c7130b35154',
    instructions: 'Benigne canonicus officiis solvo adsidue deleo angustus.',
    lines_added: 244.0,
    lines_deleted: 118.0,
    messages: [
      Models::Shared::GenaiContent.new(
        content: 'Stultus esse cursim stabilis tenetur amet contigo tristis.',
        images: [],
        role: Models::Shared::Role::ASSISTANT
      ),
    ],
    name: 'connect multi-byte port',
    pullrequest_url: 'https://github.com/berenice.satterfield/joshingly-ignorance/pull/383',
    repo_url: 'https://github.com/berenice.satterfield/joshingly-ignorance',
    source_branch_identifier: 'main',
    started_at: DateTime.iso8601('2024-06-04T16:55:34.922Z'),
    status: Models::Shared::GenaiTaskStatus::BLOCKED,
    summary: 'Cur aeternus cogito vesper.',
    target_branch_identifier: 'agent/joshingly-ignorance',
    tokens_used: 2165.0,
    updated_at: DateTime.iso8601('2023-03-07T15:26:21.120Z'),
    web_url: 'https://inexperienced-adrenalin.biz/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.task.update_genai_task(request: req)

unless res.genai_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateGenaiTaskRequest](../../models/operations/updategenaitaskrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateGenaiTaskResponse)](../../models/operations/updategenaitaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_task_comment

Updates the TaskComment identified by `id`. Provide the unified TaskComment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTaskComment" method="put" path="/task/{connection_id}/comment/{id}" example="task_comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateTaskCommentRequest.new(
  task_comment: Models::Shared::TaskComment.new(
    created_at: DateTime.iso8601('2019-10-12T20:33:37.879Z'),
    has_children: true,
    id: '579f7d6c-3f71-48fc-a1ad-6312da9605b3',
    metadata: [],
    text: 'Colo ulciscor sublime tabernus.',
    updated_at: DateTime.iso8601('2021-10-10T01:30:36.864Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.task.update_task_comment(request: req)

unless res.task_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateTaskCommentRequest](../../models/operations/updatetaskcommentrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateTaskCommentResponse)](../../models/operations/updatetaskcommentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_task_project

Updates the TaskProject identified by `id`. Provide the unified TaskProject fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTaskProject" method="put" path="/task/{connection_id}/project/{id}" example="task_project" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateTaskProjectRequest.new(
  task_project: Models::Shared::TaskProject.new(
    created_at: DateTime.iso8601('2023-06-23T16:39:40.446Z'),
    description: 'Valetudo aggredior accommodo curiositas vox.',
    has_children: false,
    has_tasks: false,
    id: 'fd3c39dc-5737-4021-ba92-e1c424962855',
    metadata: [
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: 'f6a501cc-1b58-46d1-a391-aa0f2eaf5b42',
        namespace: 'custom',
        slug: 'decens',
        value: 'uterque'
      ),
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: 'a72c27e6-4e82-42db-b4c5-17970296aea8',
        namespace: 'custom',
        slug: 'benevolentia',
        value: 'pariatur'
      ),
    ],
    name: 'Garden',
    updated_at: DateTime.iso8601('2023-10-13T18:26:40.565Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.task.update_task_project(request: req)

unless res.task_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateTaskProjectRequest](../../models/operations/updatetaskprojectrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateTaskProjectResponse)](../../models/operations/updatetaskprojectresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_task_task

Updates the TaskTask identified by `id`. Provide the unified TaskTask fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTaskTask" method="put" path="/task/{connection_id}/task/{id}" example="task_task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateTaskTaskRequest.new(
  task_task: Models::Shared::TaskTask.new(
    attachment_ids: [],
    created_at: DateTime.iso8601('2019-01-31T08:34:55.626Z'),
    due_at: DateTime.iso8601('2025-10-02T00:16:21.928Z'),
    has_children: true,
    id: '63c7461f-8f0f-4db7-a51b-44d919049f43',
    metadata: [],
    name: 'I\'ll compress the optical IB interface, that should capacitor the JBOD system!',
    notes: 'Argentum ventosus rem talis neque thymbra. Absconditus peccatus crustulum tollo cometes volva vacuus eos cedo. Somnus utpote coadunatio denuncio adopto autus sono atrocitas. Concido rerum cura aveho torqueo tempore tubineus vomer tempore suscipit. Clibanus valetudo vulnero pauper caput absorbeo correptius vir deduco.',
    priority: 'MEDIUM',
    progress: 33.0,
    start_at: DateTime.iso8601('2025-09-03T14:24:52.966Z'),
    status: Models::Shared::TaskTaskStatus::OPENED,
    story_points: 0.0,
    tags: [
      'curis',
      'crinis',
    ],
    time_spent: 5359.0,
    time_spent_unit: 'SECONDS',
    type: 'magni',
    updated_at: DateTime.iso8601('2022-04-16T22:48:09.566Z'),
    url: 'https://elementary-utilization.net/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.task.update_task_task(request: req)

unless res.task_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::UpdateTaskTaskRequest](../../models/operations/updatetasktaskrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::UpdateTaskTaskResponse)](../../models/operations/updatetasktaskresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |