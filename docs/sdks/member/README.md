# Member


### Available Operations

* [create_martech_member](#create_martech_member) - Create a member
* [get_martech_member](#get_martech_member) - Retrieve a member
* [list_martech_members](#list_martech_members) - List all members
* [patch_martech_member](#patch_martech_member) - Update a member
* [remove_martech_member](#remove_martech_member) - Remove a member
* [update_martech_member](#update_martech_member) - Update a member

## create_martech_member

Create a member

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.member.create_martech_member(connection_id="<value>", marketing_member=::UnifiedRubySDK::Shared::MarketingMember.new())

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `marketing_member`                                                                  | [::UnifiedRubySDK::Shared::MarketingMember](../../models/shared/marketingmember.md) | :heavy_minus_sign:                                                                  | A member represents a person                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateMartechMemberResponse)](../../models/operations/createmartechmemberresponse.md)**


## get_martech_member

Retrieve a member

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.member.get_martech_member(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Member                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetMartechMemberResponse)](../../models/operations/getmartechmemberresponse.md)**


## list_martech_members

List all members

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListMartechMembersRequest.new(
  connection_id: "<value>",
)
    
res = s.member.list_martech_members(req)

if ! res.marketing_members.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListMartechMembersRequest](../../models/operations/listmartechmembersrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListMartechMembersResponse)](../../models/operations/listmartechmembersresponse.md)**


## patch_martech_member

Update a member

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.member.patch_martech_member(connection_id="<value>", id="<value>", marketing_member=::UnifiedRubySDK::Shared::MarketingMember.new())

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `id`                                                                                | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the Member                                                                    |
| `marketing_member`                                                                  | [::UnifiedRubySDK::Shared::MarketingMember](../../models/shared/marketingmember.md) | :heavy_minus_sign:                                                                  | A member represents a person                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchMartechMemberResponse)](../../models/operations/patchmartechmemberresponse.md)**


## remove_martech_member

Remove a member

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.member.remove_martech_member(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Member     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveMartechMemberResponse)](../../models/operations/removemartechmemberresponse.md)**


## update_martech_member

Update a member

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.member.update_martech_member(connection_id="<value>", id="<value>", marketing_member=::UnifiedRubySDK::Shared::MarketingMember.new())

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `id`                                                                                | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the Member                                                                    |
| `marketing_member`                                                                  | [::UnifiedRubySDK::Shared::MarketingMember](../../models/shared/marketingmember.md) | :heavy_minus_sign:                                                                  | A member represents a person                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateMartechMemberResponse)](../../models/operations/updatemartechmemberresponse.md)**

