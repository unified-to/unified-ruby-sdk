# Martech


### Available Operations

* [create_martech_list](#create_martech_list) - Create a list
* [create_martech_member](#create_martech_member) - Create a member
* [get_martech_list](#get_martech_list) - Retrieve a list
* [get_martech_member](#get_martech_member) - Retrieve a member
* [list_martech_lists](#list_martech_lists) - List all lists
* [list_martech_members](#list_martech_members) - List all members
* [patch_martech_list](#patch_martech_list) - Update a list
* [patch_martech_member](#patch_martech_member) - Update a member
* [remove_martech_list](#remove_martech_list) - Remove a list
* [remove_martech_member](#remove_martech_member) - Remove member
* [update_martech_list](#update_martech_list) - Update a list
* [update_martech_member](#update_martech_member) - Update a member

## create_martech_list

Create a list

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.martech.create_martech_list(::UnifiedRubySDK::Operations::CreateMartechListSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", marketing_list=::UnifiedRubySDK::Shared::MarketingList.new())

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::CreateMartechListSecurity](../../models/operations/createmartechlistsecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `marketing_list`                                                                                                | [::UnifiedRubySDK::Shared::MarketingList](../../models/shared/marketinglist.md)                                 | :heavy_minus_sign:                                                                                              | Mailing List                                                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateMartechListResponse)](../../models/operations/createmartechlistresponse.md)**


## create_martech_member

Create a member

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.martech.create_martech_member(::UnifiedRubySDK::Operations::CreateMartechMemberSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", marketing_member=::UnifiedRubySDK::Shared::MarketingMember.new())

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::CreateMartechMemberSecurity](../../models/operations/createmartechmembersecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `marketing_member`                                                                                                  | [::UnifiedRubySDK::Shared::MarketingMember](../../models/shared/marketingmember.md)                                 | :heavy_minus_sign:                                                                                                  | A member represents a person                                                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateMartechMemberResponse)](../../models/operations/createmartechmemberresponse.md)**


## get_martech_list

Retrieve a list

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.martech.get_martech_list(::UnifiedRubySDK::Operations::GetMartechListSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                | [::UnifiedRubySDK::Operations::GetMartechListSecurity](../../models/operations/getmartechlistsecurity.md) | :heavy_check_mark:                                                                                        | The security requirements to use for the request.                                                         |
| `connection_id`                                                                                           | *::String*                                                                                                | :heavy_check_mark:                                                                                        | ID of the connection                                                                                      |
| `id`                                                                                                      | *::String*                                                                                                | :heavy_check_mark:                                                                                        | ID of the List                                                                                            |
| `fields_`                                                                                                 | T::Array<*::String*>                                                                                      | :heavy_minus_sign:                                                                                        | Comma-delimited fields to return                                                                          |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetMartechListResponse)](../../models/operations/getmartechlistresponse.md)**


## get_martech_member

Retrieve a member

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.martech.get_martech_member(::UnifiedRubySDK::Operations::GetMartechMemberSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                    | [::UnifiedRubySDK::Operations::GetMartechMemberSecurity](../../models/operations/getmartechmembersecurity.md) | :heavy_check_mark:                                                                                            | The security requirements to use for the request.                                                             |
| `connection_id`                                                                                               | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | ID of the connection                                                                                          |
| `id`                                                                                                          | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | ID of the Member                                                                                              |
| `fields_`                                                                                                     | T::Array<*::String*>                                                                                          | :heavy_minus_sign:                                                                                            | Comma-delimited fields to return                                                                              |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetMartechMemberResponse)](../../models/operations/getmartechmemberresponse.md)**


## list_martech_lists

List all lists

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListMartechListsRequest.new(
  connection_id: "<value>",
)
    
res = s.martech.list_martech_lists(req, ::UnifiedRubySDK::Operations::ListMartechListsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.marketing_lists.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListMartechListsRequest](../../models/operations/listmartechlistsrequest.md)   | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |
| `security`                                                                                                    | [::UnifiedRubySDK::Operations::ListMartechListsSecurity](../../models/operations/listmartechlistssecurity.md) | :heavy_check_mark:                                                                                            | The security requirements to use for the request.                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListMartechListsResponse)](../../models/operations/listmartechlistsresponse.md)**


## list_martech_members

List all members

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListMartechMembersRequest.new(
  connection_id: "<value>",
)
    
res = s.martech.list_martech_members(req, ::UnifiedRubySDK::Operations::ListMartechMembersSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.marketing_members.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::UnifiedRubySDK::Operations::ListMartechMembersRequest](../../models/operations/listmartechmembersrequest.md)   | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::ListMartechMembersSecurity](../../models/operations/listmartechmemberssecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListMartechMembersResponse)](../../models/operations/listmartechmembersresponse.md)**


## patch_martech_list

Update a list

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.martech.patch_martech_list(::UnifiedRubySDK::Operations::PatchMartechListSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", marketing_list=::UnifiedRubySDK::Shared::MarketingList.new())

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                    | [::UnifiedRubySDK::Operations::PatchMartechListSecurity](../../models/operations/patchmartechlistsecurity.md) | :heavy_check_mark:                                                                                            | The security requirements to use for the request.                                                             |
| `connection_id`                                                                                               | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | ID of the connection                                                                                          |
| `id`                                                                                                          | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | ID of the List                                                                                                |
| `marketing_list`                                                                                              | [::UnifiedRubySDK::Shared::MarketingList](../../models/shared/marketinglist.md)                               | :heavy_minus_sign:                                                                                            | Mailing List                                                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchMartechListResponse)](../../models/operations/patchmartechlistresponse.md)**


## patch_martech_member

Update a member

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.martech.patch_martech_member(::UnifiedRubySDK::Operations::PatchMartechMemberSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", marketing_member=::UnifiedRubySDK::Shared::MarketingMember.new())

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::PatchMartechMemberSecurity](../../models/operations/patchmartechmembersecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the Member                                                                                                  |
| `marketing_member`                                                                                                | [::UnifiedRubySDK::Shared::MarketingMember](../../models/shared/marketingmember.md)                               | :heavy_minus_sign:                                                                                                | A member represents a person                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchMartechMemberResponse)](../../models/operations/patchmartechmemberresponse.md)**


## remove_martech_list

Remove a list

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.martech.remove_martech_list(::UnifiedRubySDK::Operations::RemoveMartechListSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::RemoveMartechListSecurity](../../models/operations/removemartechlistsecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the List                                                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveMartechListResponse)](../../models/operations/removemartechlistresponse.md)**


## remove_martech_member

Remove member

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.martech.remove_martech_member(::UnifiedRubySDK::Operations::RemoveMartechMemberSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::RemoveMartechMemberSecurity](../../models/operations/removemartechmembersecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `id`                                                                                                                | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the Member                                                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveMartechMemberResponse)](../../models/operations/removemartechmemberresponse.md)**


## update_martech_list

Update a list

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.martech.update_martech_list(::UnifiedRubySDK::Operations::UpdateMartechListSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", marketing_list=::UnifiedRubySDK::Shared::MarketingList.new())

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::UpdateMartechListSecurity](../../models/operations/updatemartechlistsecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the List                                                                                                  |
| `marketing_list`                                                                                                | [::UnifiedRubySDK::Shared::MarketingList](../../models/shared/marketinglist.md)                                 | :heavy_minus_sign:                                                                                              | Mailing List                                                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateMartechListResponse)](../../models/operations/updatemartechlistresponse.md)**


## update_martech_member

Update a member

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.martech.update_martech_member(::UnifiedRubySDK::Operations::UpdateMartechMemberSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", marketing_member=::UnifiedRubySDK::Shared::MarketingMember.new())

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::UpdateMartechMemberSecurity](../../models/operations/updatemartechmembersecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `id`                                                                                                                | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the Member                                                                                                    |
| `marketing_member`                                                                                                  | [::UnifiedRubySDK::Shared::MarketingMember](../../models/shared/marketingmember.md)                                 | :heavy_minus_sign:                                                                                                  | A member represents a person                                                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateMartechMemberResponse)](../../models/operations/updatemartechmemberresponse.md)**

