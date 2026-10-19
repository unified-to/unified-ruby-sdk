# Task
(*task*)

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

Create a task

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createGenaiTask" method="post" path="/genai/{connection_id}/task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.task.create_genai_task(genai_task: Models::Shared::GenaiTask.new(
  completed_at: DateTime.iso8601('2025-09-29T12:21:39.355Z'),
  created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
  files_changed: 19.0,
  id: '05248374-bcbd-4d58-bec8-3dc34f488568',
  instructions: 'Benigne canonicus officiis solvo adsidue deleo angustus.',
  lines_added: 244.0,
  lines_deleted: 118.0,
  messages: [
    Models::Shared::GenaiContent.new(
      content: 'Stultus esse cursim stabilis tenetur amet contigo tristis.',
      images: [],
      role: Models::Shared::Role::ASSISTANT,
    ),
  ],
  name: 'connect multi-byte port',
  pullrequest_url: 'https://github.com/berenice.satterfield/joshingly-ignorance/pull/383',
  repo_url: 'https://github.com/berenice.satterfield/joshingly-ignorance',
  source_branch_identifier: 'main',
  started_at: DateTime.iso8601('2024-05-20T03:52:48.597Z'),
  status: Models::Shared::GenaiTaskStatus::BLOCKED,
  summary: 'Cur aeternus cogito vesper.',
  target_branch_identifier: 'agent/joshingly-ignorance',
  tokens_used: 2165.0,
  updated_at: DateTime.iso8601('2023-02-25T11:12:26.648Z'),
  web_url: 'https://inexperienced-adrenalin.biz/',
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

Create a comment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTaskComment" method="post" path="/task/{connection_id}/comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.task.create_task_comment(task_comment: Models::Shared::TaskComment.new(
  created_at: DateTime.iso8601('2019-10-12T20:33:37.879Z'),
  has_children: true,
  id: '6b441a29-00aa-4225-a76a-ac6b62ab454b',
  text: 'Colo ulciscor sublime tabernus.',
  updated_at: DateTime.iso8601('2021-10-02T17:33:03.634Z'),
  user_name: 'Santina Abbott',
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

Create a project

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTaskProject" method="post" path="/task/{connection_id}/project" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.task.create_task_project(task_project: Models::Shared::TaskProject.new(
  created_at: DateTime.iso8601('2023-06-23T16:39:40.446Z'),
  description: 'Valetudo aggredior accommodo curiositas vox.',
  has_children: false,
  has_tasks: false,
  id: '78e14d5a-7f6e-4f28-9075-215c0159700f',
  metadata: [
    Models::Shared::TaskMetadata.new(
      extra_data: {

      },
      format: Models::Shared::TaskMetadataFormat::TEXT,
      id: 'ba3602cb-aaa9-4333-8ddc-77b876cbd4ad',
      namespace: 'custom',
      slug: 'decens',
      value: 'uterque',
    ),
    Models::Shared::TaskMetadata.new(
      extra_data: {

      },
      format: Models::Shared::TaskMetadataFormat::TEXT,
      id: '7f69a956-d3d9-4138-a18c-ded64891c704',
      namespace: 'custom',
      slug: 'benevolentia',
      value: 'pariatur',
    ),
  ],
  name: 'Garden',
  updated_at: DateTime.iso8601('2023-10-11T09:51:55.287Z'),
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

Create a task

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTaskTask" method="post" path="/task/{connection_id}/task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.task.create_task_task(task_task: Models::Shared::TaskTask.new(
  attachment_ids: [],
  completed_at: DateTime.iso8601('2022-04-06T05:02:36.687Z'),
  created_at: DateTime.iso8601('2019-01-31T08:34:55.626Z'),
  due_at: DateTime.iso8601('2026-05-22T14:10:09.587Z'),
  end_at: DateTime.iso8601('2022-10-28T16:34:45.226Z'),
  has_children: true,
  id: '324f41e4-8eeb-4917-b857-81f404eeb371',
  metadata: [],
  name: 'Direct Markets Architect',
  notes: 'Calcar vilicus audacia ut cultura argentum ventosus. Talis neque thymbra titulus absconditus peccatus crustulum tollo. Volva vacuus eos cedo spero. Utpote coadunatio denuncio adopto autus sono atrocitas vulnero.',
  priority: 'LOW',
  progress: 2.0,
  start_at: DateTime.iso8601('2022-01-31T11:33:55.167Z'),
  status: Models::Shared::TaskTaskStatus::IN_PROGRESS,
  story_points: 0.0,
  tags: [
    'concido',
    'rerum',
  ],
  time_spent: 957.0,
  time_spent_unit: 'SECONDS',
  type: 'tubineus',
  updated_at: DateTime.iso8601('2019-07-15T06:10:16.848Z'),
  url: 'https://dismal-silk.net/',
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

Retrieve a task

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getGenaiTask" method="get" path="/genai/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a change

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

Retrieve a comment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTaskComment" method="get" path="/task/{connection_id}/comment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a project

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTaskProject" method="get" path="/task/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Retrieve a task

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTaskTask" method="get" path="/task/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

List all tasks

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listGenaiTasks" method="get" path="/genai/{connection_id}/task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListGenaiTasksRequest.new(
  connection_id: '<id>',
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

List all changes

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

List all comments

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTaskComments" method="get" path="/task/{connection_id}/comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListTaskCommentsRequest.new(
  connection_id: '<id>',
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

List all projects

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTaskProjects" method="get" path="/task/{connection_id}/project" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListTaskProjectsRequest.new(
  connection_id: '<id>',
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

List all tasks

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTaskTasks" method="get" path="/task/{connection_id}/task" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListTaskTasksRequest.new(
  connection_id: '<id>',
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

Update a task

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchGenaiTask" method="patch" path="/genai/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchGenaiTaskRequest.new(
  genai_task: Models::Shared::GenaiTask.new(
    completed_at: DateTime.iso8601('2025-09-29T12:21:39.376Z'),
    created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
    files_changed: 19.0,
    id: '275e48d6-ca86-4c3f-a494-fd4a4eba0e92',
    instructions: 'Benigne canonicus officiis solvo adsidue deleo angustus.',
    lines_added: 244.0,
    lines_deleted: 118.0,
    messages: [
      Models::Shared::GenaiContent.new(
        content: 'Stultus esse cursim stabilis tenetur amet contigo tristis.',
        images: [],
        role: Models::Shared::Role::ASSISTANT,
      ),
    ],
    name: 'connect multi-byte port',
    pullrequest_url: 'https://github.com/berenice.satterfield/joshingly-ignorance/pull/383',
    repo_url: 'https://github.com/berenice.satterfield/joshingly-ignorance',
    source_branch_identifier: 'main',
    started_at: DateTime.iso8601('2024-05-20T03:52:48.612Z'),
    status: Models::Shared::GenaiTaskStatus::BLOCKED,
    summary: 'Cur aeternus cogito vesper.',
    target_branch_identifier: 'agent/joshingly-ignorance',
    tokens_used: 2165.0,
    updated_at: DateTime.iso8601('2023-02-25T11:12:26.658Z'),
    web_url: 'https://inexperienced-adrenalin.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a comment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchTaskComment" method="patch" path="/task/{connection_id}/comment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchTaskCommentRequest.new(
  task_comment: Models::Shared::TaskComment.new(
    created_at: DateTime.iso8601('2019-10-12T20:33:37.879Z'),
    has_children: true,
    id: '19e8ee1b-161b-43a8-b2e1-ddb21bb50763',
    text: 'Colo ulciscor sublime tabernus.',
    updated_at: DateTime.iso8601('2021-10-02T17:33:03.636Z'),
    user_name: 'Santina Abbott',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a project

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchTaskProject" method="patch" path="/task/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchTaskProjectRequest.new(
  task_project: Models::Shared::TaskProject.new(
    created_at: DateTime.iso8601('2023-06-23T16:39:40.446Z'),
    description: 'Valetudo aggredior accommodo curiositas vox.',
    has_children: false,
    has_tasks: false,
    id: '9957a8b2-1262-41df-a4ec-91b9779bfc6c',
    metadata: [
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: '7101b309-ccae-4d05-a7d6-18f57c1148c2',
        namespace: 'custom',
        slug: 'decens',
        value: 'uterque',
      ),
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: '99b249a4-ac45-4ef2-9a3f-0e2fde63a49b',
        namespace: 'custom',
        slug: 'benevolentia',
        value: 'pariatur',
      ),
    ],
    name: 'Garden',
    updated_at: DateTime.iso8601('2023-10-11T09:51:55.288Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a task

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchTaskTask" method="patch" path="/task/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchTaskTaskRequest.new(
  task_task: Models::Shared::TaskTask.new(
    attachment_ids: [],
    completed_at: DateTime.iso8601('2022-04-06T05:02:36.696Z'),
    created_at: DateTime.iso8601('2019-01-31T08:34:55.626Z'),
    due_at: DateTime.iso8601('2026-05-22T14:10:09.608Z'),
    end_at: DateTime.iso8601('2022-10-28T16:34:45.236Z'),
    has_children: true,
    id: '6c37b17a-588a-4ec8-99f9-9b1f71541e8b',
    metadata: [],
    name: 'Direct Markets Architect',
    notes: 'Calcar vilicus audacia ut cultura argentum ventosus. Talis neque thymbra titulus absconditus peccatus crustulum tollo. Volva vacuus eos cedo spero. Utpote coadunatio denuncio adopto autus sono atrocitas vulnero.',
    priority: 'LOW',
    progress: 2.0,
    start_at: DateTime.iso8601('2022-01-31T11:33:55.175Z'),
    status: Models::Shared::TaskTaskStatus::IN_PROGRESS,
    story_points: 0.0,
    tags: [
      'concido',
      'rerum',
    ],
    time_spent: 957.0,
    time_spent_unit: 'SECONDS',
    type: 'tubineus',
    updated_at: DateTime.iso8601('2019-07-15T06:10:16.849Z'),
    url: 'https://dismal-silk.net/',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Remove a task

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeGenaiTask" method="delete" path="/genai/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a comment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeTaskComment" method="delete" path="/task/{connection_id}/comment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a project

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeTaskProject" method="delete" path="/task/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Remove a task

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeTaskTask" method="delete" path="/task/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
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

Update a task

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateGenaiTask" method="put" path="/genai/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateGenaiTaskRequest.new(
  genai_task: Models::Shared::GenaiTask.new(
    completed_at: DateTime.iso8601('2025-09-29T12:21:39.376Z'),
    created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
    files_changed: 19.0,
    id: '275e48d6-ca86-4c3f-a494-fd4a4eba0e92',
    instructions: 'Benigne canonicus officiis solvo adsidue deleo angustus.',
    lines_added: 244.0,
    lines_deleted: 118.0,
    messages: [
      Models::Shared::GenaiContent.new(
        content: 'Stultus esse cursim stabilis tenetur amet contigo tristis.',
        images: [],
        role: Models::Shared::Role::ASSISTANT,
      ),
    ],
    name: 'connect multi-byte port',
    pullrequest_url: 'https://github.com/berenice.satterfield/joshingly-ignorance/pull/383',
    repo_url: 'https://github.com/berenice.satterfield/joshingly-ignorance',
    source_branch_identifier: 'main',
    started_at: DateTime.iso8601('2024-05-20T03:52:48.612Z'),
    status: Models::Shared::GenaiTaskStatus::BLOCKED,
    summary: 'Cur aeternus cogito vesper.',
    target_branch_identifier: 'agent/joshingly-ignorance',
    tokens_used: 2165.0,
    updated_at: DateTime.iso8601('2023-02-25T11:12:26.658Z'),
    web_url: 'https://inexperienced-adrenalin.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a comment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTaskComment" method="put" path="/task/{connection_id}/comment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateTaskCommentRequest.new(
  task_comment: Models::Shared::TaskComment.new(
    created_at: DateTime.iso8601('2019-10-12T20:33:37.879Z'),
    has_children: true,
    id: '19e8ee1b-161b-43a8-b2e1-ddb21bb50763',
    text: 'Colo ulciscor sublime tabernus.',
    updated_at: DateTime.iso8601('2021-10-02T17:33:03.636Z'),
    user_name: 'Santina Abbott',
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a project

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTaskProject" method="put" path="/task/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateTaskProjectRequest.new(
  task_project: Models::Shared::TaskProject.new(
    created_at: DateTime.iso8601('2023-06-23T16:39:40.446Z'),
    description: 'Valetudo aggredior accommodo curiositas vox.',
    has_children: false,
    has_tasks: false,
    id: '9957a8b2-1262-41df-a4ec-91b9779bfc6c',
    metadata: [
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: '7101b309-ccae-4d05-a7d6-18f57c1148c2',
        namespace: 'custom',
        slug: 'decens',
        value: 'uterque',
      ),
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: '99b249a4-ac45-4ef2-9a3f-0e2fde63a49b',
        namespace: 'custom',
        slug: 'benevolentia',
        value: 'pariatur',
      ),
    ],
    name: 'Garden',
    updated_at: DateTime.iso8601('2023-10-11T09:51:55.288Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
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

Update a task

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateTaskTask" method="put" path="/task/{connection_id}/task/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateTaskTaskRequest.new(
  task_task: Models::Shared::TaskTask.new(
    attachment_ids: [],
    completed_at: DateTime.iso8601('2022-04-06T05:02:36.696Z'),
    created_at: DateTime.iso8601('2019-01-31T08:34:55.626Z'),
    due_at: DateTime.iso8601('2026-05-22T14:10:09.608Z'),
    end_at: DateTime.iso8601('2022-10-28T16:34:45.236Z'),
    has_children: true,
    id: '6c37b17a-588a-4ec8-99f9-9b1f71541e8b',
    metadata: [],
    name: 'Direct Markets Architect',
    notes: 'Calcar vilicus audacia ut cultura argentum ventosus. Talis neque thymbra titulus absconditus peccatus crustulum tollo. Volva vacuus eos cedo spero. Utpote coadunatio denuncio adopto autus sono atrocitas vulnero.',
    priority: 'LOW',
    progress: 2.0,
    start_at: DateTime.iso8601('2022-01-31T11:33:55.175Z'),
    status: Models::Shared::TaskTaskStatus::IN_PROGRESS,
    story_points: 0.0,
    tags: [
      'concido',
      'rerum',
    ],
    time_spent: 957.0,
    time_spent_unit: 'SECONDS',
    type: 'tubineus',
    updated_at: DateTime.iso8601('2019-07-15T06:10:16.849Z'),
    url: 'https://dismal-silk.net/',
  ),
  connection_id: '<id>',
  id: '<id>',
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