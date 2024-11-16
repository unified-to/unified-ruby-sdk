# Scim
(*scim*)

## Overview

### Available Operations

* [create_scim_groups](#create_scim_groups) - Create group
* [create_scim_users](#create_scim_users) - Create user
* [get_scim_groups](#get_scim_groups) - Get group
* [get_scim_users](#get_scim_users) - Get user
* [list_scim_groups](#list_scim_groups) - List groups
* [list_scim_users](#list_scim_users) - List users
* [patch_scim_groups](#patch_scim_groups) - Update group
* [patch_scim_users](#patch_scim_users) - Update user
* [remove_scim_groups](#remove_scim_groups) - Delete group
* [remove_scim_users](#remove_scim_users) - Delete user
* [update_scim_groups](#update_scim_groups) - Update group
* [update_scim_users](#update_scim_users) - Update user

## create_scim_groups

Create group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.scim.create_scim_groups(connection_id="<id>", scim_group=::UnifiedRubySDK::Shared::ScimGroup.new(
  display_name: "Bert89",
))

if ! res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                          | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `connection_id`                                                                    | *::String*                                                                         | :heavy_check_mark:                                                                 | ID of the connection                                                               |
| `scim_group`                                                                       | [T.nilable(::UnifiedRubySDK::Shared::ScimGroup)](../../models/shared/scimgroup.md) | :heavy_minus_sign:                                                                 | N/A                                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateScimGroupsResponse)](../../models/operations/createscimgroupsresponse.md)**



## create_scim_users

Create user

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::CreateScimUsersRequest.new(
  connection_id: "<id>",
)
    
res = s.scim.create_scim_users(req)

if ! res.scim_user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::UnifiedRubySDK::Operations::CreateScimUsersRequest](../../models/operations/createscimusersrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateScimUsersResponse)](../../models/operations/createscimusersresponse.md)**



## get_scim_groups

Get group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.scim.get_scim_groups(connection_id="<id>", id="<id>")

if ! res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Group      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetScimGroupsResponse)](../../models/operations/getscimgroupsresponse.md)**



## get_scim_users

Get user

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.scim.get_scim_users(connection_id="<id>", id="<id>")

if ! res.scim_user.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the User       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetScimUsersResponse)](../../models/operations/getscimusersresponse.md)**



## list_scim_groups

List groups

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListScimGroupsRequest.new(
  connection_id: "<id>",
)
    
res = s.scim.list_scim_groups(req)

if ! res.scim_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::UnifiedRubySDK::Operations::ListScimGroupsRequest](../../models/operations/listscimgroupsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListScimGroupsResponse)](../../models/operations/listscimgroupsresponse.md)**



## list_scim_users

List users

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListScimUsersRequest.new(
  connection_id: "<id>",
)
    
res = s.scim.list_scim_users(req)

if ! res.scim_users.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::UnifiedRubySDK::Operations::ListScimUsersRequest](../../models/operations/listscimusersrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListScimUsersResponse)](../../models/operations/listscimusersresponse.md)**



## patch_scim_groups

Update group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.scim.patch_scim_groups(connection_id="<id>", id="<id>", scim_group=::UnifiedRubySDK::Shared::ScimGroup.new(
  display_name: "Damon_Rutherford93",
))

if ! res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                          | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `connection_id`                                                                    | *::String*                                                                         | :heavy_check_mark:                                                                 | ID of the connection                                                               |
| `id`                                                                               | *::String*                                                                         | :heavy_check_mark:                                                                 | ID of the Group                                                                    |
| `scim_group`                                                                       | [T.nilable(::UnifiedRubySDK::Shared::ScimGroup)](../../models/shared/scimgroup.md) | :heavy_minus_sign:                                                                 | N/A                                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchScimGroupsResponse)](../../models/operations/patchscimgroupsresponse.md)**



## patch_scim_users

Update user

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.scim.patch_scim_users(connection_id="<id>", id="<id>", scim_user=::UnifiedRubySDK::Shared::ScimUser.new())

if ! res.scim_user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                        | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `connection_id`                                                                  | *::String*                                                                       | :heavy_check_mark:                                                               | ID of the connection                                                             |
| `id`                                                                             | *::String*                                                                       | :heavy_check_mark:                                                               | ID of the User                                                                   |
| `scim_user`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::ScimUser)](../../models/shared/scimuser.md) | :heavy_minus_sign:                                                               | N/A                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchScimUsersResponse)](../../models/operations/patchscimusersresponse.md)**



## remove_scim_groups

Delete group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.scim.remove_scim_groups(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Group      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveScimGroupsResponse)](../../models/operations/removescimgroupsresponse.md)**



## remove_scim_users

Delete user

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.scim.remove_scim_users(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the User       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveScimUsersResponse)](../../models/operations/removescimusersresponse.md)**



## update_scim_groups

Update group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.scim.update_scim_groups(connection_id="<id>", id="<id>", scim_group=::UnifiedRubySDK::Shared::ScimGroup.new(
  display_name: "Frederic.Reichel",
))

if ! res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                          | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `connection_id`                                                                    | *::String*                                                                         | :heavy_check_mark:                                                                 | ID of the connection                                                               |
| `id`                                                                               | *::String*                                                                         | :heavy_check_mark:                                                                 | ID of the Group                                                                    |
| `scim_group`                                                                       | [T.nilable(::UnifiedRubySDK::Shared::ScimGroup)](../../models/shared/scimgroup.md) | :heavy_minus_sign:                                                                 | N/A                                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateScimGroupsResponse)](../../models/operations/updatescimgroupsresponse.md)**



## update_scim_users

Update user

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.scim.update_scim_users(connection_id="<id>", id="<id>", scim_user=::UnifiedRubySDK::Shared::ScimUser.new())

if ! res.scim_user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                        | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `connection_id`                                                                  | *::String*                                                                       | :heavy_check_mark:                                                               | ID of the connection                                                             |
| `id`                                                                             | *::String*                                                                       | :heavy_check_mark:                                                               | ID of the User                                                                   |
| `scim_user`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::ScimUser)](../../models/shared/scimuser.md) | :heavy_minus_sign:                                                               | N/A                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateScimUsersResponse)](../../models/operations/updatescimusersresponse.md)**

