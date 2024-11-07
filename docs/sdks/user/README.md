# User
(*user*)

## Overview

### Available Operations

* [create_scim_users](#create_scim_users) - Create user
* [get_scim_users](#get_scim_users) - Get user
* [list_scim_users](#list_scim_users) - List users
* [patch_scim_users](#patch_scim_users) - Update user
* [remove_scim_users](#remove_scim_users) - Delete user
* [update_scim_users](#update_scim_users) - Update user

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
    
res = s.user.create_scim_users(req)

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::UnifiedRubySDK::Operations::CreateScimUsersRequest](../../models/operations/createscimusersrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateScimUsersResponse)](../../models/operations/createscimusersresponse.md)**



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

    
res = s.user.get_scim_users(connection_id="<id>", id="<id>")

if ! res.user.nil?
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
    
res = s.user.list_scim_users(req)

if ! res.users.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::UnifiedRubySDK::Operations::ListScimUsersRequest](../../models/operations/listscimusersrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListScimUsersResponse)](../../models/operations/listscimusersresponse.md)**



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

    
res = s.user.patch_scim_users(connection_id="<id>", id="<id>", user=::UnifiedRubySDK::Shared::User.new())

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                | Type                                                                     | Required                                                                 | Description                                                              |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ |
| `connection_id`                                                          | *::String*                                                               | :heavy_check_mark:                                                       | ID of the connection                                                     |
| `id`                                                                     | *::String*                                                               | :heavy_check_mark:                                                       | ID of the User                                                           |
| `user`                                                                   | [T.nilable(::UnifiedRubySDK::Shared::User)](../../models/shared/user.md) | :heavy_minus_sign:                                                       | N/A                                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchScimUsersResponse)](../../models/operations/patchscimusersresponse.md)**



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

    
res = s.user.remove_scim_users(connection_id="<id>", id="<id>")

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

    
res = s.user.update_scim_users(connection_id="<id>", id="<id>", user=::UnifiedRubySDK::Shared::User.new())

if ! res.user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                | Type                                                                     | Required                                                                 | Description                                                              |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ |
| `connection_id`                                                          | *::String*                                                               | :heavy_check_mark:                                                       | ID of the connection                                                     |
| `id`                                                                     | *::String*                                                               | :heavy_check_mark:                                                       | ID of the User                                                           |
| `user`                                                                   | [T.nilable(::UnifiedRubySDK::Shared::User)](../../models/shared/user.md) | :heavy_minus_sign:                                                       | N/A                                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateScimUsersResponse)](../../models/operations/updatescimusersresponse.md)**

