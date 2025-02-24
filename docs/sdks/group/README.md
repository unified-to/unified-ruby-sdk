# Group
(*group*)

## Overview

### Available Operations

* [create_hris_group](#create_hris_group) - Create a group
* [create_scim_groups](#create_scim_groups) - Create group
* [get_hris_group](#get_hris_group) - Retrieve a group
* [get_scim_groups](#get_scim_groups) - Get group
* [list_hris_groups](#list_hris_groups) - List all groups
* [list_scim_groups](#list_scim_groups) - List groups
* [patch_hris_group](#patch_hris_group) - Update a group
* [patch_scim_groups](#patch_scim_groups) - Update group
* [remove_hris_group](#remove_hris_group) - Remove a group
* [remove_scim_groups](#remove_scim_groups) - Delete group
* [update_hris_group](#update_hris_group) - Update a group
* [update_scim_groups](#update_scim_groups) - Update group

## create_hris_group

Create a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.group.create_hris_group(hris_group=::UnifiedRubySDK::Shared::HrisGroup.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `hris_group`                                                            | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `fields_`                                                               | T::Array<*::String*>                                                    | :heavy_minus_sign:                                                      | Comma-delimited fields to return                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateHrisGroupResponse)](../../models/operations/createhrisgroupresponse.md)**



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

    
res = s.group.create_scim_groups(scim_group=::UnifiedRubySDK::Shared::ScimGroup.new(
  display_name: "Bert89",
), connection_id="<id>")

if ! res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `scim_group`                                                            | [::UnifiedRubySDK::Shared::ScimGroup](../../models/shared/scimgroup.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateScimGroupsResponse)](../../models/operations/createscimgroupsresponse.md)**



## get_hris_group

Retrieve a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.group.get_hris_group(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Group                  |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetHrisGroupResponse)](../../models/operations/gethrisgroupresponse.md)**



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

    
res = s.group.get_scim_groups(connection_id="<id>", id="<id>")

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



## list_hris_groups

List all groups

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListHrisGroupsRequest.new(
  connection_id: "<id>",
)
    
res = s.group.list_hris_groups(req)

if ! res.hris_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::UnifiedRubySDK::Operations::ListHrisGroupsRequest](../../models/operations/listhrisgroupsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListHrisGroupsResponse)](../../models/operations/listhrisgroupsresponse.md)**



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
    
res = s.group.list_scim_groups(req)

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



## patch_hris_group

Update a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.group.patch_hris_group(hris_group=::UnifiedRubySDK::Shared::HrisGroup.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `hris_group`                                                            | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Group                                                         |
| `fields_`                                                               | T::Array<*::String*>                                                    | :heavy_minus_sign:                                                      | Comma-delimited fields to return                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchHrisGroupResponse)](../../models/operations/patchhrisgroupresponse.md)**



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

    
res = s.group.patch_scim_groups(scim_group=::UnifiedRubySDK::Shared::ScimGroup.new(
  display_name: "Damon_Rutherford93",
), connection_id="<id>", id="<id>")

if ! res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `scim_group`                                                            | [::UnifiedRubySDK::Shared::ScimGroup](../../models/shared/scimgroup.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Group                                                         |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchScimGroupsResponse)](../../models/operations/patchscimgroupsresponse.md)**



## remove_hris_group

Remove a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.group.remove_hris_group(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveHrisGroupResponse)](../../models/operations/removehrisgroupresponse.md)**



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

    
res = s.group.remove_scim_groups(connection_id="<id>", id="<id>")

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



## update_hris_group

Update a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.group.update_hris_group(hris_group=::UnifiedRubySDK::Shared::HrisGroup.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `hris_group`                                                            | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Group                                                         |
| `fields_`                                                               | T::Array<*::String*>                                                    | :heavy_minus_sign:                                                      | Comma-delimited fields to return                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateHrisGroupResponse)](../../models/operations/updatehrisgroupresponse.md)**



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

    
res = s.group.update_scim_groups(scim_group=::UnifiedRubySDK::Shared::ScimGroup.new(
  display_name: "Frederic.Reichel",
), connection_id="<id>", id="<id>")

if ! res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `scim_group`                                                            | [::UnifiedRubySDK::Shared::ScimGroup](../../models/shared/scimgroup.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Group                                                         |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateScimGroupsResponse)](../../models/operations/updatescimgroupsresponse.md)**

