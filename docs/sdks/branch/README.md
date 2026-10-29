# Branch
(*branch*)

## Overview

### Available Operations

* [create_repo_branch](#create_repo_branch) - Create a branch
* [get_repo_branch](#get_repo_branch) - Retrieve a branch
* [list_repo_branches](#list_repo_branches) - List all branches
* [patch_repo_branch](#patch_repo_branch) - Update a branch
* [remove_repo_branch](#remove_repo_branch) - Remove a branch
* [update_repo_branch](#update_repo_branch) - Update a branch

## create_repo_branch

Creates a RepoBranch. Provide the unified RepoBranch fields in the request body; they are mapped to the provider's API. Returns the created RepoBranch.

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

res = s.branch.create_repo_branch(repo_branch: Models::Shared::RepoBranch.new(
  created_at: DateTime.iso8601('2019-02-24T09:33:48.540Z'),
  id: 'c58a1408-aa98-4cb4-a37a-df7d5d815779',
  metadata: [],
  name: 'transmitter-calculate',
  repo_id: '<id>',
  updated_at: DateTime.iso8601('2020-01-08T05:54:20.880Z'),
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

## get_repo_branch

Retrieves a single RepoBranch by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

res = s.branch.get_repo_branch(connection_id: '<id>', id: '<id>')

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

## list_repo_branches

Returns a list of RepoBranches. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

res = s.branch.list_repo_branches(request: req)

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

## patch_repo_branch

Updates the RepoBranch identified by `id`. Provide the unified RepoBranch fields to change in the request body.

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
    id: '6dc9fb57-af37-4e74-bfeb-0c0b60f835bc',
    metadata: [],
    name: 'transmitter-calculate',
    repo_id: '<id>',
    updated_at: DateTime.iso8601('2020-01-08T05:54:20.881Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.branch.patch_repo_branch(request: req)

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

## remove_repo_branch

Deletes the RepoBranch identified by `id`.

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

res = s.branch.remove_repo_branch(connection_id: '<id>', id: '<id>')

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

## update_repo_branch

Updates the RepoBranch identified by `id`. Provide the unified RepoBranch fields to change in the request body.

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
    id: '6dc9fb57-af37-4e74-bfeb-0c0b60f835bc',
    metadata: [],
    name: 'transmitter-calculate',
    repo_id: '<id>',
    updated_at: DateTime.iso8601('2020-01-08T05:54:20.881Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.branch.update_repo_branch(request: req)

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