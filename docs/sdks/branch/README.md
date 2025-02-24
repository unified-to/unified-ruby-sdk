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

Create a branch

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.branch.create_repo_branch(repo_branch=::UnifiedRubySDK::Shared::RepoBranch.new(
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



## get_repo_branch

Retrieve a branch

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.branch.get_repo_branch(connection_id="<id>", id="<id>", fields_=[
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



## list_repo_branches

List all branches

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListRepoBranchesRequest.new(
  connection_id: "<id>",
)
    
res = s.branch.list_repo_branches(req)

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



## patch_repo_branch

Update a branch

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.branch.patch_repo_branch(repo_branch=::UnifiedRubySDK::Shared::RepoBranch.new(
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



## remove_repo_branch

Remove a branch

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.branch.remove_repo_branch(connection_id="<id>", id="<id>")

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



## update_repo_branch

Update a branch

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.branch.update_repo_branch(repo_branch=::UnifiedRubySDK::Shared::RepoBranch.new(
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

