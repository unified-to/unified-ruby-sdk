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

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.commit.create_repo_commit(repo_commit=Models::Shared::RepoCommit.new(
  repo_id: "<id>",
  user_id: "<id>",
), connection_id="<id>", fields_=[
  "<value>",
], raw="<value>")

if ! res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `repo_commit`                                                                                                                                    | [Models::Shared::RepoCommit](../../models/shared/repocommit.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateRepoCommitResponse)](../../models/operations/createrepocommitresponse.md)**



## get_repo_commit

Retrieve a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.commit.get_repo_commit(connection_id="<id>", id="<id>", fields_=[
  "<value>",
], raw="<value>")

if ! res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Commit                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetRepoCommitResponse)](../../models/operations/getrepocommitresponse.md)**



## list_repo_commits

List all commits

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListRepoCommitsRequest.new(
  connection_id: "<id>",
)

res = s.commit.list_repo_commits(req)

if ! res.repo_commits.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListRepoCommitsRequest](../../models/operations/listrepocommitsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListRepoCommitsResponse)](../../models/operations/listrepocommitsresponse.md)**



## patch_repo_commit

Update a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::PatchRepoCommitRequest.new(
  repo_commit: Models::Shared::RepoCommit.new(
    repo_id: "<id>",
    user_id: "<id>",
  ),
  connection_id: "<id>",
  id: "<id>",
)

res = s.commit.patch_repo_commit(req)

if ! res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchRepoCommitRequest](../../models/operations/patchrepocommitrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchRepoCommitResponse)](../../models/operations/patchrepocommitresponse.md)**



## remove_repo_commit

Remove a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
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

**[T.nilable(Models::Operations::RemoveRepoCommitResponse)](../../models/operations/removerepocommitresponse.md)**



## update_repo_commit

Update a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::UpdateRepoCommitRequest.new(
  repo_commit: Models::Shared::RepoCommit.new(
    repo_id: "<id>",
    user_id: "<id>",
  ),
  connection_id: "<id>",
  id: "<id>",
)

res = s.commit.update_repo_commit(req)

if ! res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateRepoCommitRequest](../../models/operations/updaterepocommitrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateRepoCommitResponse)](../../models/operations/updaterepocommitresponse.md)**

