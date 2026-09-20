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

<!-- UsageSnippet language="ruby" operationID="createRepoBranch" method="post" path="/repo/{connection_id}/branch" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.create_repo_branch(repo_branch: Models::Shared::RepoBranch.new(
  created_at: DateTime.iso8601('2019-02-24T09:33:48.540Z'),
  id: 'a813b321-47ed-48e6-9d99-25eb166c5ef8',
  name: 'voluptas',
  repo_id: '<id>',
  updated_at: DateTime.iso8601('2020-01-03T19:39:32.647Z'),
), connection_id: '<id>')

unless res.repo_branch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `repo_branch`                                                                                                                                    | [Models::Shared::RepoBranch](../../models/shared/repobranch.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateRepoBranchQueryParamFields](../../models/operations/createrepobranchqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateRepoBranchResponse)](../../models/operations/createrepobranchresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_repo_commit

Create a commit

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

res = s.repo.create_repo_commit(repo_commit: Models::Shared::RepoCommit.new(
  created_at: DateTime.iso8601('2020-07-12T16:20:42.520Z'),
  id: '7cd90039-a423-4450-b597-6a597a0cbaed',
  lines_added: 313.0,
  lines_changed: 659.0,
  lines_deleted: 482.0,
  message: 'Auctus ascisco esse attollo clarus odio tum bis rerum.',
  repo_id: '<id>',
  updated_at: DateTime.iso8601('2023-05-17T00:53:59.141Z'),
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

## create_repo_organization

Create an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createRepoOrganization" method="post" path="/repo/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.create_repo_organization(repo_organization: Models::Shared::RepoOrganization.new(
  avatar_url: 'https://picsum.photos/seed/fGl6Lb/3157/3173',
  created_at: DateTime.iso8601('2022-07-07T00:18:40.748Z'),
  description: 'Trepide defendo supra testimonium ager.',
  id: '8677d586-3b0a-4fc0-86ae-a1fba892b7e2',
  name: 'Denesik - Lemke',
  updated_at: DateTime.iso8601('2023-08-13T12:04:45.798Z'),
  web_url: 'https://turbulent-overheard.biz',
), connection_id: '<id>')

unless res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `repo_organization`                                                                                                                              | [Models::Shared::RepoOrganization](../../models/shared/repoorganization.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateRepoOrganizationQueryParamFields](../../models/operations/createrepoorganizationqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateRepoOrganizationResponse)](../../models/operations/createrepoorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_repo_pullrequest

Create a pullrequest

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createRepoPullrequest" method="post" path="/repo/{connection_id}/pullrequest" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.create_repo_pullrequest(repo_pullrequest: Models::Shared::RepoPullrequest.new(
  closed_at: DateTime.iso8601('2025-04-13T01:55:38.432Z'),
  created_at: DateTime.iso8601('2023-02-27T09:37:13.663Z'),
  id: '90c874f3-00d4-4805-905b-8358c9667345',
  labels: [
    'adhuc',
    'quaerat',
  ],
  notes: 'Coadunatio turbo curtus ceno consuasor aggero. Suggero adeo creptio tutamen vulnus aqua delicate adopto derelinquo caritas. Maiores vulgivagus succurro temporibus.',
  source_branch_id: 'microchip-navigate',
  status: Models::Shared::RepoPullrequestStatus::REJECTED,
  target_branch_id: 'feed-reboot',
  title: 'Cunae aegrus averto texo advoco bibo amet asporto.',
  updated_at: DateTime.iso8601('2025-01-01T00:25:07.819Z'),
), connection_id: '<id>')

unless res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `repo_pullrequest`                                                                                                                               | [Models::Shared::RepoPullrequest](../../models/shared/repopullrequest.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateRepoPullrequestQueryParamFields](../../models/operations/createrepopullrequestqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateRepoPullrequestResponse)](../../models/operations/createrepopullrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_repo_repository

Create a repository

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createRepoRepository" method="post" path="/repo/{connection_id}/repository" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.create_repo_repository(repo_repository: Models::Shared::RepoRepository.new(
  created_at: DateTime.iso8601('2023-06-12T09:42:00.080Z'),
  description: 'Tribuo torqueo aetas ustulo illum.',
  id: '5bbf7557-2f7a-439e-b121-184b2c7c9220',
  is_private: false,
  name: 'suggero',
  owner: 'Marcella Kuhic',
  updated_at: DateTime.iso8601('2024-02-23T10:40:17.041Z'),
  web_url: 'https://brown-phrase.info',
), connection_id: '<id>')

unless res.repo_repository.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `repo_repository`                                                                                                                                | [Models::Shared::RepoRepository](../../models/shared/reporepository.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateRepoRepositoryQueryParamFields](../../models/operations/createreporepositoryqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateRepoRepositoryResponse)](../../models/operations/createreporepositoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_repo_branch

Retrieve a branch

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getRepoBranch" method="get" path="/repo/{connection_id}/branch/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.get_repo_branch(connection_id: '<id>', id: '<id>')

unless res.repo_branch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Branch                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetRepoBranchQueryParamFields](../../models/operations/getrepobranchqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetRepoBranchResponse)](../../models/operations/getrepobranchresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_repo_commit

Retrieve a commit

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

res = s.repo.get_repo_commit(connection_id: '<id>', id: '<id>')

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

## get_repo_organization

Retrieve an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getRepoOrganization" method="get" path="/repo/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.get_repo_organization(connection_id: '<id>', id: '<id>')

unless res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Organization                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetRepoOrganizationQueryParamFields](../../models/operations/getrepoorganizationqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetRepoOrganizationResponse)](../../models/operations/getrepoorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_repo_pullrequest

Retrieve a pullrequest

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getRepoPullrequest" method="get" path="/repo/{connection_id}/pullrequest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.get_repo_pullrequest(connection_id: '<id>', id: '<id>')

unless res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Pullrequest                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetRepoPullrequestQueryParamFields](../../models/operations/getrepopullrequestqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetRepoPullrequestResponse)](../../models/operations/getrepopullrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_repo_repository

Retrieve a repository

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getRepoRepository" method="get" path="/repo/{connection_id}/repository/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.get_repo_repository(connection_id: '<id>', id: '<id>')

unless res.repo_repository.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Repository                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetRepoRepositoryQueryParamFields](../../models/operations/getreporepositoryqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetRepoRepositoryResponse)](../../models/operations/getreporepositoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_repo_branches

List all branches

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listRepoBranches" method="get" path="/repo/{connection_id}/branch" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListRepoBranchesRequest.new(
  connection_id: '<id>',
)

res = s.repo.list_repo_branches(request: req)

unless res.repo_branches.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListRepoBranchesRequest](../../models/operations/listrepobranchesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListRepoBranchesResponse)](../../models/operations/listrepobranchesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_repo_commits

List all commits

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

res = s.repo.list_repo_commits(request: req)

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

## list_repo_organizations

List all organizations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listRepoOrganizations" method="get" path="/repo/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListRepoOrganizationsRequest.new(
  connection_id: '<id>',
)

res = s.repo.list_repo_organizations(request: req)

unless res.repo_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListRepoOrganizationsRequest](../../models/operations/listrepoorganizationsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListRepoOrganizationsResponse)](../../models/operations/listrepoorganizationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_repo_pullrequests

List all pullrequests

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listRepoPullrequests" method="get" path="/repo/{connection_id}/pullrequest" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListRepoPullrequestsRequest.new(
  connection_id: '<id>',
)

res = s.repo.list_repo_pullrequests(request: req)

unless res.repo_pullrequests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListRepoPullrequestsRequest](../../models/operations/listrepopullrequestsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListRepoPullrequestsResponse)](../../models/operations/listrepopullrequestsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_repo_repositories

List all repositories

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listRepoRepositories" method="get" path="/repo/{connection_id}/repository" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListRepoRepositoriesRequest.new(
  connection_id: '<id>',
)

res = s.repo.list_repo_repositories(request: req)

unless res.repo_repositories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListRepoRepositoriesRequest](../../models/operations/listreporepositoriesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListRepoRepositoriesResponse)](../../models/operations/listreporepositoriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_repo_branch

Update a branch

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchRepoBranch" method="patch" path="/repo/{connection_id}/branch/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchRepoBranchRequest.new(
  repo_branch: Models::Shared::RepoBranch.new(
    created_at: DateTime.iso8601('2019-02-24T09:33:48.540Z'),
    id: '535cc69b-f51f-4446-a166-4d6ac83ac293',
    name: 'voluptas',
    repo_id: '<id>',
    updated_at: DateTime.iso8601('2020-01-03T19:39:32.647Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.repo.patch_repo_branch(request: req)

unless res.repo_branch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchRepoBranchRequest](../../models/operations/patchrepobranchrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchRepoBranchResponse)](../../models/operations/patchrepobranchresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_repo_commit

Update a commit

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
    id: '5b1ce3e6-b49f-4b15-93d8-75624ad44a32',
    lines_added: 313.0,
    lines_changed: 659.0,
    lines_deleted: 482.0,
    message: 'Auctus ascisco esse attollo clarus odio tum bis rerum.',
    repo_id: '<id>',
    updated_at: DateTime.iso8601('2023-05-17T00:53:59.147Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.repo.patch_repo_commit(request: req)

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

## patch_repo_organization

Update an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchRepoOrganization" method="patch" path="/repo/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchRepoOrganizationRequest.new(
  repo_organization: Models::Shared::RepoOrganization.new(
    avatar_url: 'https://picsum.photos/seed/fGl6Lb/3157/3173',
    created_at: DateTime.iso8601('2022-07-07T00:18:40.748Z'),
    description: 'Trepide defendo supra testimonium ager.',
    id: 'ad2ee52c-7288-4b39-986f-d07b32acb0a9',
    name: 'Denesik - Lemke',
    updated_at: DateTime.iso8601('2023-08-13T12:04:45.800Z'),
    web_url: 'https://turbulent-overheard.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.repo.patch_repo_organization(request: req)

unless res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchRepoOrganizationRequest](../../models/operations/patchrepoorganizationrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchRepoOrganizationResponse)](../../models/operations/patchrepoorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_repo_pullrequest

Update a pullrequest

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchRepoPullrequest" method="patch" path="/repo/{connection_id}/pullrequest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchRepoPullrequestRequest.new(
  repo_pullrequest: Models::Shared::RepoPullrequest.new(
    closed_at: DateTime.iso8601('2025-04-13T01:55:38.440Z'),
    created_at: DateTime.iso8601('2023-02-27T09:37:13.663Z'),
    id: 'b588ad3f-ec21-44b2-9695-9478c916a190',
    labels: [
      'adhuc',
      'quaerat',
    ],
    notes: 'Coadunatio turbo curtus ceno consuasor aggero. Suggero adeo creptio tutamen vulnus aqua delicate adopto derelinquo caritas. Maiores vulgivagus succurro temporibus.',
    source_branch_id: 'microchip-navigate',
    status: Models::Shared::RepoPullrequestStatus::REJECTED,
    target_branch_id: 'feed-reboot',
    title: 'Cunae aegrus averto texo advoco bibo amet asporto.',
    updated_at: DateTime.iso8601('2025-01-01T00:25:07.826Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.repo.patch_repo_pullrequest(request: req)

unless res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchRepoPullrequestRequest](../../models/operations/patchrepopullrequestrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchRepoPullrequestResponse)](../../models/operations/patchrepopullrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_repo_repository

Update a repository

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchRepoRepository" method="patch" path="/repo/{connection_id}/repository/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchRepoRepositoryRequest.new(
  repo_repository: Models::Shared::RepoRepository.new(
    created_at: DateTime.iso8601('2023-06-12T09:42:00.080Z'),
    description: 'Tribuo torqueo aetas ustulo illum.',
    id: '223cb16a-eafe-42a0-8e80-d88105dd561f',
    is_private: false,
    name: 'suggero',
    owner: 'Marcella Kuhic',
    updated_at: DateTime.iso8601('2024-02-23T10:40:17.044Z'),
    web_url: 'https://brown-phrase.info',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.repo.patch_repo_repository(request: req)

unless res.repo_repository.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchRepoRepositoryRequest](../../models/operations/patchreporepositoryrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchRepoRepositoryResponse)](../../models/operations/patchreporepositoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_repo_branch

Remove a branch

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeRepoBranch" method="delete" path="/repo/{connection_id}/branch/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.remove_repo_branch(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveRepoBranchResponse)](../../models/operations/removerepobranchresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_repo_commit

Remove a commit

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

res = s.repo.remove_repo_commit(connection_id: '<id>', id: '<id>')

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

## remove_repo_organization

Remove an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeRepoOrganization" method="delete" path="/repo/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.remove_repo_organization(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveRepoOrganizationResponse)](../../models/operations/removerepoorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_repo_pullrequest

Remove a pullrequest

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeRepoPullrequest" method="delete" path="/repo/{connection_id}/pullrequest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.remove_repo_pullrequest(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveRepoPullrequestResponse)](../../models/operations/removerepopullrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_repo_repository

Remove a repository

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeRepoRepository" method="delete" path="/repo/{connection_id}/repository/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.repo.remove_repo_repository(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveRepoRepositoryResponse)](../../models/operations/removereporepositoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_repo_branch

Update a branch

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateRepoBranch" method="put" path="/repo/{connection_id}/branch/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateRepoBranchRequest.new(
  repo_branch: Models::Shared::RepoBranch.new(
    created_at: DateTime.iso8601('2019-02-24T09:33:48.540Z'),
    id: '535cc69b-f51f-4446-a166-4d6ac83ac293',
    name: 'voluptas',
    repo_id: '<id>',
    updated_at: DateTime.iso8601('2020-01-03T19:39:32.647Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.repo.update_repo_branch(request: req)

unless res.repo_branch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateRepoBranchRequest](../../models/operations/updaterepobranchrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateRepoBranchResponse)](../../models/operations/updaterepobranchresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_repo_commit

Update a commit

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
    id: '5b1ce3e6-b49f-4b15-93d8-75624ad44a32',
    lines_added: 313.0,
    lines_changed: 659.0,
    lines_deleted: 482.0,
    message: 'Auctus ascisco esse attollo clarus odio tum bis rerum.',
    repo_id: '<id>',
    updated_at: DateTime.iso8601('2023-05-17T00:53:59.147Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.repo.update_repo_commit(request: req)

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

## update_repo_organization

Update an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateRepoOrganization" method="put" path="/repo/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateRepoOrganizationRequest.new(
  repo_organization: Models::Shared::RepoOrganization.new(
    avatar_url: 'https://picsum.photos/seed/fGl6Lb/3157/3173',
    created_at: DateTime.iso8601('2022-07-07T00:18:40.748Z'),
    description: 'Trepide defendo supra testimonium ager.',
    id: 'ad2ee52c-7288-4b39-986f-d07b32acb0a9',
    name: 'Denesik - Lemke',
    updated_at: DateTime.iso8601('2023-08-13T12:04:45.800Z'),
    web_url: 'https://turbulent-overheard.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.repo.update_repo_organization(request: req)

unless res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateRepoOrganizationRequest](../../models/operations/updaterepoorganizationrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateRepoOrganizationResponse)](../../models/operations/updaterepoorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_repo_pullrequest

Update a pullrequest

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateRepoPullrequest" method="put" path="/repo/{connection_id}/pullrequest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateRepoPullrequestRequest.new(
  repo_pullrequest: Models::Shared::RepoPullrequest.new(
    closed_at: DateTime.iso8601('2025-04-13T01:55:38.440Z'),
    created_at: DateTime.iso8601('2023-02-27T09:37:13.663Z'),
    id: 'b588ad3f-ec21-44b2-9695-9478c916a190',
    labels: [
      'adhuc',
      'quaerat',
    ],
    notes: 'Coadunatio turbo curtus ceno consuasor aggero. Suggero adeo creptio tutamen vulnus aqua delicate adopto derelinquo caritas. Maiores vulgivagus succurro temporibus.',
    source_branch_id: 'microchip-navigate',
    status: Models::Shared::RepoPullrequestStatus::REJECTED,
    target_branch_id: 'feed-reboot',
    title: 'Cunae aegrus averto texo advoco bibo amet asporto.',
    updated_at: DateTime.iso8601('2025-01-01T00:25:07.826Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.repo.update_repo_pullrequest(request: req)

unless res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateRepoPullrequestRequest](../../models/operations/updaterepopullrequestrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateRepoPullrequestResponse)](../../models/operations/updaterepopullrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_repo_repository

Update a repository

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateRepoRepository" method="put" path="/repo/{connection_id}/repository/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateRepoRepositoryRequest.new(
  repo_repository: Models::Shared::RepoRepository.new(
    created_at: DateTime.iso8601('2023-06-12T09:42:00.080Z'),
    description: 'Tribuo torqueo aetas ustulo illum.',
    id: '223cb16a-eafe-42a0-8e80-d88105dd561f',
    is_private: false,
    name: 'suggero',
    owner: 'Marcella Kuhic',
    updated_at: DateTime.iso8601('2024-02-23T10:40:17.044Z'),
    web_url: 'https://brown-phrase.info',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.repo.update_repo_repository(request: req)

unless res.repo_repository.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateRepoRepositoryRequest](../../models/operations/updatereporepositoryrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateRepoRepositoryResponse)](../../models/operations/updatereporepositoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |