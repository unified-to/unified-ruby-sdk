# Member


### Available Operations

* [create_martech_member](#create_martech_member) - Create a member
* [get_martech_member](#get_martech_member) - Retrieve a member
* [list_martech_members](#list_martech_members) - List all members
* [patch_martech_member](#patch_martech_member) - Update a member
* [remove_martech_member](#remove_martech_member) - Remove member
* [update_martech_member](#update_martech_member) - Update a member

## create_martech_member

Create a member

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
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
    
res = s.member.create_martech_member(connection_id="string", marketing_member=Shared::MarketingMember.new(
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


## get_martech_member

Retrieve a member

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
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
    
res = s.member.get_martech_member(connection_id="string", id="string", fields=[
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


## list_martech_members

List all members

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
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
    
res = s.member.list_martech_members(req)

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


## patch_martech_member

Update a member

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
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
    
res = s.member.patch_martech_member(connection_id="string", id="string", marketing_member=Shared::MarketingMember.new(
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


## remove_martech_member

Remove member

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveMartechMemberRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.member.remove_martech_member(connection_id="string", id="string")

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


## update_martech_member

Update a member

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
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
    
res = s.member.update_martech_member(connection_id="string", id="string", marketing_member=Shared::MarketingMember.new(
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

