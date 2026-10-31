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

Creates a RepoCommit. Provide the unified RepoCommit fields in the request body; they are mapped to the provider's API. Returns the created RepoCommit.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createRepoCommit" method="post" path="/repo/{connection_id}/commit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.commit.create_repo_commit(repo_commit: Models::Shared::RepoCommit.new(
  created_at: DateTime.iso8601('2020-07-12T16:20:42.520Z'),
  id: '66e400ef-d8b2-41dd-b9ac-fb7fc19c1e22',
  lines_added: 313.0,
  lines_changed: 659.0,
  lines_deleted: 482.0,
  message: 'quantify bluetooth bandwidth',
  metadata: [],
  repo_id: '<id>',
  updated_at: DateTime.iso8601('2023-06-04T19:57:17.729Z'),
), connection_id: '<id>')

unless res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `repo_commit`                                                                                                                                    | [Models::Shared::RepoCommit](../../models/shared/repocommit.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateRepoCommitQueryParamFields](../../models/operations/createrepocommitqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateRepoCommitResponse)](../../models/operations/createrepocommitresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_repo_commit

Retrieves a single RepoCommit by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getRepoCommit" method="get" path="/repo/{connection_id}/commit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.commit.get_repo_commit(connection_id: '<id>', id: '<id>')

unless res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Commit                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetRepoCommitQueryParamFields](../../models/operations/getrepocommitqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetRepoCommitResponse)](../../models/operations/getrepocommitresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_repo_commits

Returns a list of RepoCommits. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listRepoCommits" method="get" path="/repo/{connection_id}/commit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListRepoCommitsRequest.new(
  connection_id: '<id>',
)

res = s.commit.list_repo_commits(request: req)

unless res.repo_commits.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListRepoCommitsRequest](../../models/operations/listrepocommitsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListRepoCommitsResponse)](../../models/operations/listrepocommitsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_repo_commit

Updates the RepoCommit identified by `id`. Provide the unified RepoCommit fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchRepoCommit" method="patch" path="/repo/{connection_id}/commit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchRepoCommitRequest.new(
  repo_commit: Models::Shared::RepoCommit.new(
    created_at: DateTime.iso8601('2020-07-12T16:20:42.520Z'),
    id: '3f0b0903-d712-48aa-95b2-119ae5ac5d1d',
    lines_added: 313.0,
    lines_changed: 659.0,
    lines_deleted: 482.0,
    message: 'quantify bluetooth bandwidth',
    metadata: [],
    repo_id: '<id>',
    updated_at: DateTime.iso8601('2023-06-04T19:57:17.734Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.commit.patch_repo_commit(request: req)

unless res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchRepoCommitRequest](../../models/operations/patchrepocommitrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchRepoCommitResponse)](../../models/operations/patchrepocommitresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_repo_commit

Deletes the RepoCommit identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeRepoCommit" method="delete" path="/repo/{connection_id}/commit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.commit.remove_repo_commit(connection_id: '<id>', id: '<id>')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_repo_commit

Updates the RepoCommit identified by `id`. Provide the unified RepoCommit fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateRepoCommit" method="put" path="/repo/{connection_id}/commit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateRepoCommitRequest.new(
  repo_commit: Models::Shared::RepoCommit.new(
    created_at: DateTime.iso8601('2020-07-12T16:20:42.520Z'),
    id: '3f0b0903-d712-48aa-95b2-119ae5ac5d1d',
    lines_added: 313.0,
    lines_changed: 659.0,
    lines_deleted: 482.0,
    message: 'quantify bluetooth bandwidth',
    metadata: [],
    repo_id: '<id>',
    updated_at: DateTime.iso8601('2023-06-04T19:57:17.734Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.commit.update_repo_commit(request: req)

unless res.repo_commit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateRepoCommitRequest](../../models/operations/updaterepocommitrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateRepoCommitResponse)](../../models/operations/updaterepocommitresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |