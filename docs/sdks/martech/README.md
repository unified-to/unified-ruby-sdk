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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateMartechListRequest.new(
  connection_id="string",
  marketing_list=Shared::MarketingList.new(
    raw=Shared::PropertyMarketingListRaw.new(),
  ),
)
    
res = s.martech.create_martech_list(connection_id="string", marketing_list=Shared::MarketingList.new(
    raw=Shared::PropertyMarketingListRaw.new(),
  ))

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `connection_id`                                               | *String*                                                      | :heavy_check_mark:                                            | ID of the connection                                          |
| `marketing_list`                                              | [Shared::MarketingList](../../models/shared/marketinglist.md) | :heavy_minus_sign:                                            | Mailing List                                                  |


### Response

**[T.nilable(Operations::CreateMartechListResponse)](../../models/operations/createmartechlistresponse.md)**


## create_martech_member

Create a member

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateMartechMemberRequest.new(
  connection_id="string",
  marketing_member=Shared::MarketingMember.new(
    emails=[
      Shared::MarketingEmail.new(
        email="Eldridge.Marvin@gmail.com",
      ),
    ],
    list_ids=[
      "string",
    ],
    raw=Shared::PropertyMarketingMemberRaw.new(),
    tags=[
      "string",
    ],
  ),
)
    
res = s.martech.create_martech_member(connection_id="string", marketing_member=Shared::MarketingMember.new(
    emails=[
      Shared::MarketingEmail.new(
        email="Ole_Kohler@yahoo.com",
      ),
    ],
    list_ids=[
      "string",
    ],
    raw=Shared::PropertyMarketingMemberRaw.new(),
    tags=[
      "string",
    ],
  ))

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *String*                                                          | :heavy_check_mark:                                                | ID of the connection                                              |
| `marketing_member`                                                | [Shared::MarketingMember](../../models/shared/marketingmember.md) | :heavy_minus_sign:                                                | A member represents a person                                      |


### Response

**[T.nilable(Operations::CreateMartechMemberResponse)](../../models/operations/createmartechmemberresponse.md)**


## get_martech_list

Retrieve a list

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetMartechListRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.martech.get_martech_list(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the List                   |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetMartechListResponse)](../../models/operations/getmartechlistresponse.md)**


## get_martech_member

Retrieve a member

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetMartechMemberRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.martech.get_martech_member(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Member                 |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetMartechMemberResponse)](../../models/operations/getmartechmemberresponse.md)**


## list_martech_lists

List all lists

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListMartechListsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.martech.list_martech_lists(req)

if ! res.marketing_lists.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::ListMartechListsRequest](../../models/operations/listmartechlistsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::ListMartechListsResponse)](../../models/operations/listmartechlistsresponse.md)**


## list_martech_members

List all members

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListMartechMembersRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.martech.list_martech_members(req)

if ! res.marketing_members.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Operations::ListMartechMembersRequest](../../models/operations/listmartechmembersrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(Operations::ListMartechMembersResponse)](../../models/operations/listmartechmembersresponse.md)**


## patch_martech_list

Update a list

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchMartechListRequest.new(
  connection_id="string",
  id="<ID>",
  marketing_list=Shared::MarketingList.new(
    raw=Shared::PropertyMarketingListRaw.new(),
  ),
)
    
res = s.martech.patch_martech_list(connection_id="string", id="string", marketing_list=Shared::MarketingList.new(
    raw=Shared::PropertyMarketingListRaw.new(),
  ))

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `connection_id`                                               | *String*                                                      | :heavy_check_mark:                                            | ID of the connection                                          |
| `id`                                                          | *String*                                                      | :heavy_check_mark:                                            | ID of the List                                                |
| `marketing_list`                                              | [Shared::MarketingList](../../models/shared/marketinglist.md) | :heavy_minus_sign:                                            | Mailing List                                                  |


### Response

**[T.nilable(Operations::PatchMartechListResponse)](../../models/operations/patchmartechlistresponse.md)**


## patch_martech_member

Update a member

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchMartechMemberRequest.new(
  connection_id="string",
  id="<ID>",
  marketing_member=Shared::MarketingMember.new(
    emails=[
      Shared::MarketingEmail.new(
        email="Shana_Boyle@yahoo.com",
      ),
    ],
    list_ids=[
      "string",
    ],
    raw=Shared::PropertyMarketingMemberRaw.new(),
    tags=[
      "string",
    ],
  ),
)
    
res = s.martech.patch_martech_member(connection_id="string", id="string", marketing_member=Shared::MarketingMember.new(
    emails=[
      Shared::MarketingEmail.new(
        email="Maye_Herman22@gmail.com",
      ),
    ],
    list_ids=[
      "string",
    ],
    raw=Shared::PropertyMarketingMemberRaw.new(),
    tags=[
      "string",
    ],
  ))

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *String*                                                          | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *String*                                                          | :heavy_check_mark:                                                | ID of the Member                                                  |
| `marketing_member`                                                | [Shared::MarketingMember](../../models/shared/marketingmember.md) | :heavy_minus_sign:                                                | A member represents a person                                      |


### Response

**[T.nilable(Operations::PatchMartechMemberResponse)](../../models/operations/patchmartechmemberresponse.md)**


## remove_martech_list

Remove a list

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveMartechListRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.martech.remove_martech_list(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the List       |


### Response

**[T.nilable(Operations::RemoveMartechListResponse)](../../models/operations/removemartechlistresponse.md)**


## remove_martech_member

Remove member

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveMartechMemberRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.martech.remove_martech_member(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Member     |


### Response

**[T.nilable(Operations::RemoveMartechMemberResponse)](../../models/operations/removemartechmemberresponse.md)**


## update_martech_list

Update a list

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateMartechListRequest.new(
  connection_id="string",
  id="<ID>",
  marketing_list=Shared::MarketingList.new(
    raw=Shared::PropertyMarketingListRaw.new(),
  ),
)
    
res = s.martech.update_martech_list(connection_id="string", id="string", marketing_list=Shared::MarketingList.new(
    raw=Shared::PropertyMarketingListRaw.new(),
  ))

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `connection_id`                                               | *String*                                                      | :heavy_check_mark:                                            | ID of the connection                                          |
| `id`                                                          | *String*                                                      | :heavy_check_mark:                                            | ID of the List                                                |
| `marketing_list`                                              | [Shared::MarketingList](../../models/shared/marketinglist.md) | :heavy_minus_sign:                                            | Mailing List                                                  |


### Response

**[T.nilable(Operations::UpdateMartechListResponse)](../../models/operations/updatemartechlistresponse.md)**


## update_martech_member

Update a member

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateMartechMemberRequest.new(
  connection_id="string",
  id="<ID>",
  marketing_member=Shared::MarketingMember.new(
    emails=[
      Shared::MarketingEmail.new(
        email="Antonette.Kerluke@hotmail.com",
      ),
    ],
    list_ids=[
      "string",
    ],
    raw=Shared::PropertyMarketingMemberRaw.new(),
    tags=[
      "string",
    ],
  ),
)
    
res = s.martech.update_martech_member(connection_id="string", id="string", marketing_member=Shared::MarketingMember.new(
    emails=[
      Shared::MarketingEmail.new(
        email="Jean.Will@yahoo.com",
      ),
    ],
    list_ids=[
      "string",
    ],
    raw=Shared::PropertyMarketingMemberRaw.new(),
    tags=[
      "string",
    ],
  ))

if ! res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *String*                                                          | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *String*                                                          | :heavy_check_mark:                                                | ID of the Member                                                  |
| `marketing_member`                                                | [Shared::MarketingMember](../../models/shared/marketingmember.md) | :heavy_minus_sign:                                                | A member represents a person                                      |


### Response

**[T.nilable(Operations::UpdateMartechMemberResponse)](../../models/operations/updatemartechmemberresponse.md)**

