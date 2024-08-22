# Group

## Overview

### Available Operations

* [create_hris_group](#create_hris_group) - Create a group
* [get_hris_group](#get_hris_group) - Retrieve a group
* [list_hris_groups](#list_hris_groups) - List all groups
* [patch_hris_group](#patch_hris_group) - Update a group
* [remove_hris_group](#remove_hris_group) - Remove a group
* [update_hris_group](#update_hris_group) - Update a group

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

    
res = s.group.create_hris_group(connection_id="<value>", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new())

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `hris_group`                                                            | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                                      | N/A                                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateHrisGroupResponse)](../../models/operations/createhrisgroupresponse.md)**




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

    
res = s.group.get_hris_group(connection_id="<value>", id="<value>", fields_=[
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
  connection_id: "<value>",
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

    
res = s.group.patch_hris_group(connection_id="<value>", id="<value>", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new())

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Group                                                         |
| `hris_group`                                                            | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                                      | N/A                                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchHrisGroupResponse)](../../models/operations/patchhrisgroupresponse.md)**




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

    
res = s.group.remove_hris_group(connection_id="<value>", id="<value>")

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

    
res = s.group.update_hris_group(connection_id="<value>", id="<value>", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new())

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Group                                                         |
| `hris_group`                                                            | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                                      | N/A                                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateHrisGroupResponse)](../../models/operations/updatehrisgroupresponse.md)**


