# Task


### Available Operations

* [create_task_project](#create_task_project) - Create a project
* [create_task_task](#create_task_task) - Create a task
* [get_task_project](#get_task_project) - Retrieve a project
* [get_task_task](#get_task_task) - Retrieve a task
* [list_task_projects](#list_task_projects) - List all projects
* [list_task_tasks](#list_task_tasks) - List all tasks
* [patch_task_project](#patch_task_project) - Update a project
* [patch_task_task](#patch_task_task) - Update a task
* [remove_task_project](#remove_task_project) - Remove a project
* [remove_task_task](#remove_task_task) - Remove a task
* [update_task_project](#update_task_project) - Update a project
* [update_task_task](#update_task_task) - Update a task

## create_task_project

Create a project

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.task.create_task_project(connection_id="<value>", task_project=::UnifiedRubySDK::Shared::TaskProject.new())

if ! res.task_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `task_project`                                                              | [::UnifiedRubySDK::Shared::TaskProject](../../models/shared/taskproject.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateTaskProjectResponse)](../../models/operations/createtaskprojectresponse.md)**


## create_task_task

Create a task

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.task.create_task_task(connection_id="<value>", task_task=::UnifiedRubySDK::Shared::TaskTask.new(
    name: "<value>",
  ))

if ! res.task_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `task_task`                                                           | [::UnifiedRubySDK::Shared::TaskTask](../../models/shared/tasktask.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateTaskTaskResponse)](../../models/operations/createtasktaskresponse.md)**


## get_task_project

Retrieve a project

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.task.get_task_project(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.task_project.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Project                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetTaskProjectResponse)](../../models/operations/gettaskprojectresponse.md)**


## get_task_task

Retrieve a task

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.task.get_task_task(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.task_task.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Task                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetTaskTaskResponse)](../../models/operations/gettasktaskresponse.md)**


## list_task_projects

List all projects

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListTaskProjectsRequest.new(
  connection_id: "<value>",
)
    
res = s.task.list_task_projects(req)

if ! res.task_projects.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListTaskProjectsRequest](../../models/operations/listtaskprojectsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListTaskProjectsResponse)](../../models/operations/listtaskprojectsresponse.md)**


## list_task_tasks

List all tasks

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListTaskTasksRequest.new(
  connection_id: "<value>",
)
    
res = s.task.list_task_tasks(req)

if ! res.task_tasks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::UnifiedRubySDK::Operations::ListTaskTasksRequest](../../models/operations/listtasktasksrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListTaskTasksResponse)](../../models/operations/listtasktasksresponse.md)**


## patch_task_project

Update a project

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.task.patch_task_project(connection_id="<value>", id="<value>", task_project=::UnifiedRubySDK::Shared::TaskProject.new())

if ! res.task_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Project                                                           |
| `task_project`                                                              | [::UnifiedRubySDK::Shared::TaskProject](../../models/shared/taskproject.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchTaskProjectResponse)](../../models/operations/patchtaskprojectresponse.md)**


## patch_task_task

Update a task

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.task.patch_task_task(connection_id="<value>", id="<value>", task_task=::UnifiedRubySDK::Shared::TaskTask.new(
    name: "<value>",
  ))

if ! res.task_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *::String*                                                            | :heavy_check_mark:                                                    | ID of the Task                                                        |
| `task_task`                                                           | [::UnifiedRubySDK::Shared::TaskTask](../../models/shared/tasktask.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchTaskTaskResponse)](../../models/operations/patchtasktaskresponse.md)**


## remove_task_project

Remove a project

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.task.remove_task_project(connection_id="<value>", id="<value>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveTaskProjectResponse)](../../models/operations/removetaskprojectresponse.md)**


## remove_task_task

Remove a task

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.task.remove_task_task(connection_id="<value>", id="<value>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveTaskTaskResponse)](../../models/operations/removetasktaskresponse.md)**


## update_task_project

Update a project

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.task.update_task_project(connection_id="<value>", id="<value>", task_project=::UnifiedRubySDK::Shared::TaskProject.new())

if ! res.task_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Project                                                           |
| `task_project`                                                              | [::UnifiedRubySDK::Shared::TaskProject](../../models/shared/taskproject.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateTaskProjectResponse)](../../models/operations/updatetaskprojectresponse.md)**


## update_task_task

Update a task

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.task.update_task_task(connection_id="<value>", id="<value>", task_task=::UnifiedRubySDK::Shared::TaskTask.new(
    name: "<value>",
  ))

if ! res.task_task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *::String*                                                            | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *::String*                                                            | :heavy_check_mark:                                                    | ID of the Task                                                        |
| `task_task`                                                           | [::UnifiedRubySDK::Shared::TaskTask](../../models/shared/tasktask.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateTaskTaskResponse)](../../models/operations/updatetasktaskresponse.md)**

