# Repo
(*repo*)

## Overview

### Available Operations

* [create_repo_branch](#create_repo_branch) - Create a branch
* [create_repo_commit](#create_repo_commit) - Create a commit
* [create_repo_organization](#create_repo_organization) - Create an organization
* [create_repo_pullrequest](#create_repo_pullrequest) - Create a pullrequest
* [create_repo_repository](#create_repo_repository) - Create a repository
* [get_repo_branch](#get_repo_branch) - Retrieve a branch
* [get_repo_commit](#get_repo_commit) - Retrieve a commit
* [get_repo_organization](#get_repo_organization) - Retrieve an organization
* [get_repo_pullrequest](#get_repo_pullrequest) - Retrieve a pullrequest
* [get_repo_repository](#get_repo_repository) - Retrieve a repository
* [list_repo_branches](#list_repo_branches) - List all branches
* [list_repo_commits](#list_repo_commits) - List all commits
* [list_repo_organizations](#list_repo_organizations) - List all organizations
* [list_repo_pullrequests](#list_repo_pullrequests) - List all pullrequests
* [list_repo_repositories](#list_repo_repositories) - List all repositories
* [patch_repo_branch](#patch_repo_branch) - Update a branch
* [patch_repo_commit](#patch_repo_commit) - Update a commit
* [patch_repo_organization](#patch_repo_organization) - Update an organization
* [patch_repo_pullrequest](#patch_repo_pullrequest) - Update a pullrequest
* [patch_repo_repository](#patch_repo_repository) - Update a repository
* [remove_repo_branch](#remove_repo_branch) - Remove a branch
* [remove_repo_commit](#remove_repo_commit) - Remove a commit
* [remove_repo_organization](#remove_repo_organization) - Remove an organization
* [remove_repo_pullrequest](#remove_repo_pullrequest) - Remove a pullrequest
* [remove_repo_repository](#remove_repo_repository) - Remove a repository
* [update_repo_branch](#update_repo_branch) - Update a branch
* [update_repo_commit](#update_repo_commit) - Update a commit
* [update_repo_organization](#update_repo_organization) - Update an organization
* [update_repo_pullrequest](#update_repo_pullrequest) - Update a pullrequest
* [update_repo_repository](#update_repo_repository) - Update a repository

## create_repo_branch

Create a branch

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.create_repo_branch(repo_branch=::UnifiedRubySDK::Shared::RepoBranch.new(
  name: "<value>",
  repo_id: "<id>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.repo_branch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `repo_branch`                                                             | [::UnifiedRubySDK::Shared::RepoBranch](../../models/shared/repobranch.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `connection_id`                                                           | *::String*                                                                | :heavy_check_mark:                                                        | ID of the connection                                                      |
| `fields_`                                                                 | T::Array<*::String*>                                                      | :heavy_minus_sign:                                                        | Comma-delimited fields to return                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateRepoBranchResponse)](../../models/operations/createrepobranchresponse.md)**



## create_repo_commit

Create a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.create_repo_commit(repo_commit=::UnifiedRubySDK::Shared::RepoCommit.new(
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



## create_repo_organization

Create an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.create_repo_organization(repo_organization=::UnifiedRubySDK::Shared::RepoOrganization.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `repo_organization`                                                                   | [::UnifiedRubySDK::Shared::RepoOrganization](../../models/shared/repoorganization.md) | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `fields_`                                                                             | T::Array<*::String*>                                                                  | :heavy_minus_sign:                                                                    | Comma-delimited fields to return                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateRepoOrganizationResponse)](../../models/operations/createrepoorganizationresponse.md)**



## create_repo_pullrequest

Create a pullrequest

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.create_repo_pullrequest(repo_pullrequest=::UnifiedRubySDK::Shared::RepoPullrequest.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `repo_pullrequest`                                                                  | [::UnifiedRubySDK::Shared::RepoPullrequest](../../models/shared/repopullrequest.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `fields_`                                                                           | T::Array<*::String*>                                                                | :heavy_minus_sign:                                                                  | Comma-delimited fields to return                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateRepoPullrequestResponse)](../../models/operations/createrepopullrequestresponse.md)**



## create_repo_repository

Create a repository

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.create_repo_repository(repo_repository=::UnifiedRubySDK::Shared::RepoRepository.new(
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



## get_repo_branch

Retrieve a branch

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.get_repo_branch(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_branch.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Branch                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetRepoBranchResponse)](../../models/operations/getrepobranchresponse.md)**



## get_repo_commit

Retrieve a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.get_repo_commit(connection_id="<id>", id="<id>", fields_=[
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



## get_repo_organization

Retrieve an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.get_repo_organization(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Organization           |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetRepoOrganizationResponse)](../../models/operations/getrepoorganizationresponse.md)**



## get_repo_pullrequest

Retrieve a pullrequest

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.get_repo_pullrequest(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Pullrequest            |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetRepoPullrequestResponse)](../../models/operations/getrepopullrequestresponse.md)**



## get_repo_repository

Retrieve a repository

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.get_repo_repository(connection_id="<id>", id="<id>", fields_=[
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



## list_repo_branches

List all branches

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListRepoBranchesRequest.new(
  connection_id: "<id>",
)

res = s.repo.list_repo_branches(req)

if ! res.repo_branches.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListRepoBranchesRequest](../../models/operations/listrepobranchesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListRepoBranchesResponse)](../../models/operations/listrepobranchesresponse.md)**



## list_repo_commits

List all commits

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListRepoCommitsRequest.new(
  connection_id: "<id>",
)

res = s.repo.list_repo_commits(req)

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



## list_repo_organizations

List all organizations

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListRepoOrganizationsRequest.new(
  connection_id: "<id>",
)

res = s.repo.list_repo_organizations(req)

if ! res.repo_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListRepoOrganizationsRequest](../../models/operations/listrepoorganizationsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListRepoOrganizationsResponse)](../../models/operations/listrepoorganizationsresponse.md)**



## list_repo_pullrequests

List all pullrequests

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListRepoPullrequestsRequest.new(
  connection_id: "<id>",
)

res = s.repo.list_repo_pullrequests(req)

if ! res.repo_pullrequests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::UnifiedRubySDK::Operations::ListRepoPullrequestsRequest](../../models/operations/listrepopullrequestsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListRepoPullrequestsResponse)](../../models/operations/listrepopullrequestsresponse.md)**



## list_repo_repositories

List all repositories

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListRepoRepositoriesRequest.new(
  connection_id: "<id>",
)

res = s.repo.list_repo_repositories(req)

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



## patch_repo_branch

Update a branch

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.patch_repo_branch(repo_branch=::UnifiedRubySDK::Shared::RepoBranch.new(
  name: "<value>",
  repo_id: "<id>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_branch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `repo_branch`                                                             | [::UnifiedRubySDK::Shared::RepoBranch](../../models/shared/repobranch.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `connection_id`                                                           | *::String*                                                                | :heavy_check_mark:                                                        | ID of the connection                                                      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Branch                                                          |
| `fields_`                                                                 | T::Array<*::String*>                                                      | :heavy_minus_sign:                                                        | Comma-delimited fields to return                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchRepoBranchResponse)](../../models/operations/patchrepobranchresponse.md)**



## patch_repo_commit

Update a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.patch_repo_commit(repo_commit=::UnifiedRubySDK::Shared::RepoCommit.new(
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



## patch_repo_organization

Update an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.patch_repo_organization(repo_organization=::UnifiedRubySDK::Shared::RepoOrganization.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `repo_organization`                                                                   | [::UnifiedRubySDK::Shared::RepoOrganization](../../models/shared/repoorganization.md) | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `id`                                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the Organization                                                                |
| `fields_`                                                                             | T::Array<*::String*>                                                                  | :heavy_minus_sign:                                                                    | Comma-delimited fields to return                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchRepoOrganizationResponse)](../../models/operations/patchrepoorganizationresponse.md)**



## patch_repo_pullrequest

Update a pullrequest

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.patch_repo_pullrequest(repo_pullrequest=::UnifiedRubySDK::Shared::RepoPullrequest.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `repo_pullrequest`                                                                  | [::UnifiedRubySDK::Shared::RepoPullrequest](../../models/shared/repopullrequest.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `id`                                                                                | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the Pullrequest                                                               |
| `fields_`                                                                           | T::Array<*::String*>                                                                | :heavy_minus_sign:                                                                  | Comma-delimited fields to return                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchRepoPullrequestResponse)](../../models/operations/patchrepopullrequestresponse.md)**



## patch_repo_repository

Update a repository

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.patch_repo_repository(repo_repository=::UnifiedRubySDK::Shared::RepoRepository.new(
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



## remove_repo_branch

Remove a branch

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.remove_repo_branch(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Branch     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveRepoBranchResponse)](../../models/operations/removerepobranchresponse.md)**



## remove_repo_commit

Remove a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.remove_repo_commit(connection_id="<id>", id="<id>")

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



## remove_repo_organization

Remove an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.remove_repo_organization(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Organization |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveRepoOrganizationResponse)](../../models/operations/removerepoorganizationresponse.md)**



## remove_repo_pullrequest

Remove a pullrequest

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.remove_repo_pullrequest(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Pullrequest |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveRepoPullrequestResponse)](../../models/operations/removerepopullrequestresponse.md)**



## remove_repo_repository

Remove a repository

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.remove_repo_repository(connection_id="<id>", id="<id>")

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



## update_repo_branch

Update a branch

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.update_repo_branch(repo_branch=::UnifiedRubySDK::Shared::RepoBranch.new(
  name: "<value>",
  repo_id: "<id>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_branch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `repo_branch`                                                             | [::UnifiedRubySDK::Shared::RepoBranch](../../models/shared/repobranch.md) | :heavy_check_mark:                                                        | N/A                                                                       |
| `connection_id`                                                           | *::String*                                                                | :heavy_check_mark:                                                        | ID of the connection                                                      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Branch                                                          |
| `fields_`                                                                 | T::Array<*::String*>                                                      | :heavy_minus_sign:                                                        | Comma-delimited fields to return                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateRepoBranchResponse)](../../models/operations/updaterepobranchresponse.md)**



## update_repo_commit

Update a commit

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.update_repo_commit(repo_commit=::UnifiedRubySDK::Shared::RepoCommit.new(
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



## update_repo_organization

Update an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.update_repo_organization(repo_organization=::UnifiedRubySDK::Shared::RepoOrganization.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `repo_organization`                                                                   | [::UnifiedRubySDK::Shared::RepoOrganization](../../models/shared/repoorganization.md) | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `id`                                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the Organization                                                                |
| `fields_`                                                                             | T::Array<*::String*>                                                                  | :heavy_minus_sign:                                                                    | Comma-delimited fields to return                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateRepoOrganizationResponse)](../../models/operations/updaterepoorganizationresponse.md)**



## update_repo_pullrequest

Update a pullrequest

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.update_repo_pullrequest(repo_pullrequest=::UnifiedRubySDK::Shared::RepoPullrequest.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `repo_pullrequest`                                                                  | [::UnifiedRubySDK::Shared::RepoPullrequest](../../models/shared/repopullrequest.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `id`                                                                                | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the Pullrequest                                                               |
| `fields_`                                                                           | T::Array<*::String*>                                                                | :heavy_minus_sign:                                                                  | Comma-delimited fields to return                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateRepoPullrequestResponse)](../../models/operations/updaterepopullrequestresponse.md)**



## update_repo_repository

Update a repository

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.repo.update_repo_repository(repo_repository=::UnifiedRubySDK::Shared::RepoRepository.new(
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

