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
  completed_at: DateTime.iso8601('2025-09-27T23:35:55.596Z'),
  created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
  files_changed: 19.0,
  id: 'afa4d6d0-62cf-4050-a5ac-dda910563de2',
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
  started_at: DateTime.iso8601('2024-05-19T01:16:39.144Z'),
  status: Models::Shared::GenaiTaskStatus::BLOCKED,
  summary: 'Cur aeternus cogito vesper.',
  target_branch_identifier: 'agent/joshingly-ignorance',
  tokens_used: 2165.0,
  updated_at: DateTime.iso8601('2023-02-24T17:47:26.785Z'),
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
  id: '6e1a0ce8-0936-495b-baa5-3dd6e5d31ca5',
  text: 'Colo ulciscor sublime tabernus.',
  updated_at: DateTime.iso8601('2021-10-02T05:00:10.867Z'),
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
  id: '10332468-deb6-41ae-ba81-ab4da3a6e667',
  metadata: [
    Models::Shared::TaskMetadata.new(
      extra_data: {

      },
      format: Models::Shared::TaskMetadataFormat::TEXT,
      id: '42e62a29-a1c9-49f5-879e-0c4687af2c59',
      namespace: 'custom',
      slug: 'decens',
      value: 'uterque',
    ),
    Models::Shared::TaskMetadata.new(
      extra_data: {

      },
      format: Models::Shared::TaskMetadataFormat::TEXT,
      id: 'f578d89a-fcd2-4628-87e4-39dc12a79c68',
      namespace: 'custom',
      slug: 'benevolentia',
      value: 'pariatur',
    ),
  ],
  name: 'Garden',
  updated_at: DateTime.iso8601('2023-10-11T05:49:50.101Z'),
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
  completed_at: DateTime.iso8601('2022-04-05T10:39:44.017Z'),
  created_at: DateTime.iso8601('2019-01-31T08:34:55.626Z'),
  due_at: DateTime.iso8601('2026-05-20T19:55:10.952Z'),
  end_at: DateTime.iso8601('2022-10-27T18:56:39.437Z'),
  has_children: true,
  id: 'ed6f4255-1f58-4982-937f-09091fe45cd6',
  metadata: [],
  name: 'Direct Markets Architect',
  notes: 'Calcar vilicus audacia ut cultura argentum ventosus. Talis neque thymbra titulus absconditus peccatus crustulum tollo. Volva vacuus eos cedo spero. Utpote coadunatio denuncio adopto autus sono atrocitas vulnero.',
  priority: 'LOW',
  progress: 2.0,
  start_at: DateTime.iso8601('2022-01-30T18:12:32.235Z'),
  status: Models::Shared::TaskTaskStatus::IN_PROGRESS,
  story_points: 0.0,
  tags: [
    'concido',
    'rerum',
  ],
  time_spent: 957.0,
  time_spent_unit: 'SECONDS',
  type: 'tubineus',
  updated_at: DateTime.iso8601('2019-07-15T03:33:36.995Z'),
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
    completed_at: DateTime.iso8601('2025-09-27T23:35:55.607Z'),
    created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
    files_changed: 19.0,
    id: '036c169b-5e0f-441d-ae97-ec322a9c656e',
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
    started_at: DateTime.iso8601('2024-05-19T01:16:39.153Z'),
    status: Models::Shared::GenaiTaskStatus::BLOCKED,
    summary: 'Cur aeternus cogito vesper.',
    target_branch_identifier: 'agent/joshingly-ignorance',
    tokens_used: 2165.0,
    updated_at: DateTime.iso8601('2023-02-24T17:47:26.791Z'),
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
    id: 'b1ebba1a-c4ee-4fc2-9c6f-efd9aea5cd73',
    text: 'Colo ulciscor sublime tabernus.',
    updated_at: DateTime.iso8601('2021-10-02T05:00:10.868Z'),
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
    id: '6f211b79-38ea-445a-8e18-83cd5fb4c8be',
    metadata: [
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: '66d74052-9c59-44dc-b07b-678322e45f11',
        namespace: 'custom',
        slug: 'decens',
        value: 'uterque',
      ),
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: '89dd2010-bc51-4dce-b209-a85c8132b153',
        namespace: 'custom',
        slug: 'benevolentia',
        value: 'pariatur',
      ),
    ],
    name: 'Garden',
    updated_at: DateTime.iso8601('2023-10-11T05:49:50.102Z'),
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
    completed_at: DateTime.iso8601('2022-04-05T10:39:44.024Z'),
    created_at: DateTime.iso8601('2019-01-31T08:34:55.626Z'),
    due_at: DateTime.iso8601('2026-05-20T19:55:10.969Z'),
    end_at: DateTime.iso8601('2022-10-27T18:56:39.445Z'),
    has_children: true,
    id: '25573ae7-4af1-401f-bf7a-4ffac0a94dc2',
    metadata: [],
    name: 'Direct Markets Architect',
    notes: 'Calcar vilicus audacia ut cultura argentum ventosus. Talis neque thymbra titulus absconditus peccatus crustulum tollo. Volva vacuus eos cedo spero. Utpote coadunatio denuncio adopto autus sono atrocitas vulnero.',
    priority: 'LOW',
    progress: 2.0,
    start_at: DateTime.iso8601('2022-01-30T18:12:32.241Z'),
    status: Models::Shared::TaskTaskStatus::IN_PROGRESS,
    story_points: 0.0,
    tags: [
      'concido',
      'rerum',
    ],
    time_spent: 957.0,
    time_spent_unit: 'SECONDS',
    type: 'tubineus',
    updated_at: DateTime.iso8601('2019-07-15T03:33:36.996Z'),
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
    completed_at: DateTime.iso8601('2025-09-27T23:35:55.607Z'),
    created_at: DateTime.iso8601('2020-10-25T20:19:33.247Z'),
    files_changed: 19.0,
    id: '036c169b-5e0f-441d-ae97-ec322a9c656e',
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
    started_at: DateTime.iso8601('2024-05-19T01:16:39.153Z'),
    status: Models::Shared::GenaiTaskStatus::BLOCKED,
    summary: 'Cur aeternus cogito vesper.',
    target_branch_identifier: 'agent/joshingly-ignorance',
    tokens_used: 2165.0,
    updated_at: DateTime.iso8601('2023-02-24T17:47:26.791Z'),
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
    id: 'b1ebba1a-c4ee-4fc2-9c6f-efd9aea5cd73',
    text: 'Colo ulciscor sublime tabernus.',
    updated_at: DateTime.iso8601('2021-10-02T05:00:10.868Z'),
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
    id: '6f211b79-38ea-445a-8e18-83cd5fb4c8be',
    metadata: [
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: '66d74052-9c59-44dc-b07b-678322e45f11',
        namespace: 'custom',
        slug: 'decens',
        value: 'uterque',
      ),
      Models::Shared::TaskMetadata.new(
        extra_data: {

        },
        format: Models::Shared::TaskMetadataFormat::TEXT,
        id: '89dd2010-bc51-4dce-b209-a85c8132b153',
        namespace: 'custom',
        slug: 'benevolentia',
        value: 'pariatur',
      ),
    ],
    name: 'Garden',
    updated_at: DateTime.iso8601('2023-10-11T05:49:50.102Z'),
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
    completed_at: DateTime.iso8601('2022-04-05T10:39:44.024Z'),
    created_at: DateTime.iso8601('2019-01-31T08:34:55.626Z'),
    due_at: DateTime.iso8601('2026-05-20T19:55:10.969Z'),
    end_at: DateTime.iso8601('2022-10-27T18:56:39.445Z'),
    has_children: true,
    id: '25573ae7-4af1-401f-bf7a-4ffac0a94dc2',
    metadata: [],
    name: 'Direct Markets Architect',
    notes: 'Calcar vilicus audacia ut cultura argentum ventosus. Talis neque thymbra titulus absconditus peccatus crustulum tollo. Volva vacuus eos cedo spero. Utpote coadunatio denuncio adopto autus sono atrocitas vulnero.',
    priority: 'LOW',
    progress: 2.0,
    start_at: DateTime.iso8601('2022-01-30T18:12:32.241Z'),
    status: Models::Shared::TaskTaskStatus::IN_PROGRESS,
    story_points: 0.0,
    tags: [
      'concido',
      'rerum',
    ],
    time_spent: 957.0,
    time_spent_unit: 'SECONDS',
    type: 'tubineus',
    updated_at: DateTime.iso8601('2019-07-15T03:33:36.996Z'),
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