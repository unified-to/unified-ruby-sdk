# Commit
(*commit*)

## Overview

### Available Operations

* [create_repo_commit](#create_repo_commit) - Create a commit
* [get_repo_commit](#get_repo_commit) - Retrieve a commit
* [list_repo_commits](#list_repo_commits) - List all commits
* [patch_repo_commit](#patch_repo_commit) - Update a commit
* [remove_repo_commit](#remove_repo_commit) - Remove a commit
* [update_repo_commit](#update_repo_commit) - Update a commit

## create_repo_commit

Create a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commit.create_repo_commit(repo_commit=::UnifiedRubySDK::Shared::RepoCommit.new(
  repo_id: "<id>",
  user_id: "<id>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `repo_commit`                                                             | [::UnifiedRubySDK::Shared::RepoCommit](../../models/shared/repocommit.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `connection_id`                                                           | *::String*                                                                | :heavy_check_mark:                                                        | ID of the connection                                                      |
| `fields_`                                                                 | T::Array<*::String*>                                                      | :heavy_minus_sign:                                                        | Comma-delimited fields to return                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateRepoCommitResponse)](../../models/operations/createrepocommitresponse.md)**



## get_repo_commit

Retrieve a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commit.get_repo_commit(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Commit                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetRepoCommitResponse)](../../models/operations/getrepocommitresponse.md)**



## list_repo_commits

List all commits

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListRepoCommitsRequest.new(
  connection_id: "<id>",
)
    
res = s.commit.list_repo_commits(req)

if ! res.repo_commits.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::UnifiedRubySDK::Operations::ListRepoCommitsRequest](../../models/operations/listrepocommitsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListRepoCommitsResponse)](../../models/operations/listrepocommitsresponse.md)**



## patch_repo_commit

Update a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commit.patch_repo_commit(repo_commit=::UnifiedRubySDK::Shared::RepoCommit.new(
  repo_id: "<id>",
  user_id: "<id>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `repo_commit`                                                             | [::UnifiedRubySDK::Shared::RepoCommit](../../models/shared/repocommit.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `connection_id`                                                           | *::String*                                                                | :heavy_check_mark:                                                        | ID of the connection                                                      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Commit                                                          |
| `fields_`                                                                 | T::Array<*::String*>                                                      | :heavy_minus_sign:                                                        | Comma-delimited fields to return                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchRepoCommitResponse)](../../models/operations/patchrepocommitresponse.md)**



## remove_repo_commit

Remove a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commit.remove_repo_commit(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Commit     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveRepoCommitResponse)](../../models/operations/removerepocommitresponse.md)**



## update_repo_commit

Update a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commit.update_repo_commit(repo_commit=::UnifiedRubySDK::Shared::RepoCommit.new(
  repo_id: "<id>",
  user_id: "<id>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `repo_commit`                                                             | [::UnifiedRubySDK::Shared::RepoCommit](../../models/shared/repocommit.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `connection_id`                                                           | *::String*                                                                | :heavy_check_mark:                                                        | ID of the connection                                                      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Commit                                                          |
| `fields_`                                                                 | T::Array<*::String*>                                                      | :heavy_minus_sign:                                                        | Comma-delimited fields to return                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateRepoCommitResponse)](../../models/operations/updaterepocommitresponse.md)**

