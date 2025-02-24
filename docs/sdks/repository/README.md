# Repository
(*repository*)

## Overview

### Available Operations

* [create_repo_repository](#create_repo_repository) - Create a repository
* [get_repo_repository](#get_repo_repository) - Retrieve a repository
* [list_repo_repositories](#list_repo_repositories) - List all repositories
* [patch_repo_repository](#patch_repo_repository) - Update a repository
* [remove_repo_repository](#remove_repo_repository) - Remove a repository
* [update_repo_repository](#update_repo_repository) - Update a repository

## create_repo_repository

Create a repository

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.repository.create_repo_repository(repo_repository=::UnifiedRubySDK::Shared::RepoRepository.new(
  name: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.repo_repository.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `repo_repository`                                                                 | [::UnifiedRubySDK::Shared::RepoRepository](../../models/shared/reporepository.md) | :heavy_check_mark:                                                                | N/A                                                                               |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `fields_`                                                                         | T::Array<*::String*>                                                              | :heavy_minus_sign:                                                                | Comma-delimited fields to return                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateRepoRepositoryResponse)](../../models/operations/createreporepositoryresponse.md)**



## get_repo_repository

Retrieve a repository

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.repository.get_repo_repository(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_repository.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Repository             |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetRepoRepositoryResponse)](../../models/operations/getreporepositoryresponse.md)**



## list_repo_repositories

List all repositories

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListRepoRepositoriesRequest.new(
  connection_id: "<id>",
)
    
res = s.repository.list_repo_repositories(req)

if ! res.repo_repositories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::UnifiedRubySDK::Operations::ListRepoRepositoriesRequest](../../models/operations/listreporepositoriesrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListRepoRepositoriesResponse)](../../models/operations/listreporepositoriesresponse.md)**



## patch_repo_repository

Update a repository

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.repository.patch_repo_repository(repo_repository=::UnifiedRubySDK::Shared::RepoRepository.new(
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_repository.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `repo_repository`                                                                 | [::UnifiedRubySDK::Shared::RepoRepository](../../models/shared/reporepository.md) | :heavy_check_mark:                                                                | N/A                                                                               |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `id`                                                                              | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the Repository                                                              |
| `fields_`                                                                         | T::Array<*::String*>                                                              | :heavy_minus_sign:                                                                | Comma-delimited fields to return                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchRepoRepositoryResponse)](../../models/operations/patchreporepositoryresponse.md)**



## remove_repo_repository

Remove a repository

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.repository.remove_repo_repository(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Repository |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveRepoRepositoryResponse)](../../models/operations/removereporepositoryresponse.md)**



## update_repo_repository

Update a repository

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.repository.update_repo_repository(repo_repository=::UnifiedRubySDK::Shared::RepoRepository.new(
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_repository.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `repo_repository`                                                                 | [::UnifiedRubySDK::Shared::RepoRepository](../../models/shared/reporepository.md) | :heavy_check_mark:                                                                | N/A                                                                               |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `id`                                                                              | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the Repository                                                              |
| `fields_`                                                                         | T::Array<*::String*>                                                              | :heavy_minus_sign:                                                                | Comma-delimited fields to return                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateRepoRepositoryResponse)](../../models/operations/updatereporepositoryresponse.md)**

