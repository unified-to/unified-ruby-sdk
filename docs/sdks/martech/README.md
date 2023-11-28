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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateMartechListRequest.new(
  path_params=Operations::CreateMartechListRequest.new(
    connection_id="string",
    marketing_list=Shared::MarketingList.new(
      created_at="string",
      id="<ID>",
      name="string",
      raw=Shared::PropertyMarketingListRaw.new(),
      updated_at=DateTime.iso8601('2022-10-15T11:18:03.715Z'),
    ),
  ),
  marketing_list=Shared::MarketingList.new(
    created_at="string",
    id="<ID>",
    name="string",
    raw=Shared::PropertyMarketingListRaw.new(),
    updated_at=DateTime.iso8601('2023-01-27T12:04:00.397Z'),
  ),
)
    
res = s.martech.create_martech_list(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateMartechMemberRequest.new(
  path_params=Operations::CreateMartechMemberRequest.new(
    connection_id="string",
    marketing_member=Shared::MarketingMember.new(
      created_at=DateTime.iso8601('2021-07-29T12:25:04.271Z'),
      emails=.new[
        Shared::MarketingEmail.new(
          email="Kimberly55@gmail.com",
          type=Shared::MarketingEmailType::OTHER,
        ),
      ],
      id="<ID>",
      list_ids=.new[
        "string",
      ],
      name="string",
      raw=Shared::PropertyMarketingMemberRaw.new(),
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2022-05-24T02:54:04.081Z'),
    ),
  ),
  marketing_member=Shared::MarketingMember.new(
    created_at=DateTime.iso8601('2022-10-16T17:12:32.602Z'),
    emails=.new[
      Shared::MarketingEmail.new(
        email="Audreanne12@hotmail.com",
        type=Shared::MarketingEmailType::OTHER,
      ),
    ],
    id="<ID>",
    list_ids=.new[
      "string",
    ],
    name="string",
    raw=Shared::PropertyMarketingMemberRaw.new(),
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2022-09-06T13:54:18.171Z'),
  ),
)
    
res = s.martech.create_martech_member(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetMartechListRequest.new(
  path_params=Operations::GetMartechListRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetMartechListRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.martech.get_martech_list(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetMartechMemberRequest.new(
  path_params=Operations::GetMartechMemberRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetMartechMemberRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.martech.get_martech_member(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListMartechListsRequest.new(
  path_params=Operations::ListMartechListsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=9665.22,
    offset=367.94,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-09-12T06:44:44.684Z'),
  ),
  query_params=Operations::ListMartechListsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=3411.84,
    offset=3446.94,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-05-16T19:29:33.621Z'),
  ),
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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListMartechMembersRequest.new(
  path_params=Operations::ListMartechMembersRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=1432.99,
    list_id="string",
    offset=4150.29,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-02-09T03:38:53.799Z'),
  ),
  query_params=Operations::ListMartechMembersRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=1272.57,
    list_id="string",
    offset=2202.33,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-03-01T03:08:05.630Z'),
  ),
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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchMartechListRequest.new(
  path_params=Operations::PatchMartechListRequest.new(
    connection_id="string",
    id="<ID>",
    marketing_list=Shared::MarketingList.new(
      created_at="string",
      id="<ID>",
      name="string",
      raw=Shared::PropertyMarketingListRaw.new(),
      updated_at=DateTime.iso8601('2022-10-07T20:57:43.081Z'),
    ),
  ),
  marketing_list=Shared::MarketingList.new(
    created_at="string",
    id="<ID>",
    name="string",
    raw=Shared::PropertyMarketingListRaw.new(),
    updated_at=DateTime.iso8601('2022-11-25T17:50:51.153Z'),
  ),
)
    
res = s.martech.patch_martech_list(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchMartechMemberRequest.new(
  path_params=Operations::PatchMartechMemberRequest.new(
    connection_id="string",
    id="<ID>",
    marketing_member=Shared::MarketingMember.new(
      created_at=DateTime.iso8601('2022-11-02T06:23:45.231Z'),
      emails=.new[
        Shared::MarketingEmail.new(
          email="Avis.Nikolaus70@hotmail.com",
          type=Shared::MarketingEmailType::HOME,
        ),
      ],
      id="<ID>",
      list_ids=.new[
        "string",
      ],
      name="string",
      raw=Shared::PropertyMarketingMemberRaw.new(),
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2023-07-23T02:40:10.928Z'),
    ),
  ),
  marketing_member=Shared::MarketingMember.new(
    created_at=DateTime.iso8601('2023-08-21T03:24:13.489Z'),
    emails=.new[
      Shared::MarketingEmail.new(
        email="Tiffany41@gmail.com",
        type=Shared::MarketingEmailType::WORK,
      ),
    ],
    id="<ID>",
    list_ids=.new[
      "string",
    ],
    name="string",
    raw=Shared::PropertyMarketingMemberRaw.new(),
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2021-06-09T17:18:42.686Z'),
  ),
)
    
res = s.martech.patch_martech_member(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveMartechListRequest.new(
  path_params=Operations::RemoveMartechListRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.martech.remove_martech_list(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveMartechMemberRequest.new(
  path_params=Operations::RemoveMartechMemberRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.martech.remove_martech_member(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateMartechListRequest.new(
  path_params=Operations::UpdateMartechListRequest.new(
    connection_id="string",
    id="<ID>",
    marketing_list=Shared::MarketingList.new(
      created_at="string",
      id="<ID>",
      name="string",
      raw=Shared::PropertyMarketingListRaw.new(),
      updated_at=DateTime.iso8601('2023-09-02T06:01:18.792Z'),
    ),
  ),
  marketing_list=Shared::MarketingList.new(
    created_at="string",
    id="<ID>",
    name="string",
    raw=Shared::PropertyMarketingListRaw.new(),
    updated_at=DateTime.iso8601('2022-01-16T02:32:07.070Z'),
  ),
)
    
res = s.martech.update_martech_list(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateMartechMemberRequest.new(
  path_params=Operations::UpdateMartechMemberRequest.new(
    connection_id="string",
    id="<ID>",
    marketing_member=Shared::MarketingMember.new(
      created_at=DateTime.iso8601('2023-04-24T11:56:04.469Z'),
      emails=.new[
        Shared::MarketingEmail.new(
          email="Horacio55@gmail.com",
          type=Shared::MarketingEmailType::HOME,
        ),
      ],
      id="<ID>",
      list_ids=.new[
        "string",
      ],
      name="string",
      raw=Shared::PropertyMarketingMemberRaw.new(),
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2023-11-13T16:21:56.090Z'),
    ),
  ),
  marketing_member=Shared::MarketingMember.new(
    created_at=DateTime.iso8601('2022-05-12T19:29:43.788Z'),
    emails=.new[
      Shared::MarketingEmail.new(
        email="Craig.Shields@gmail.com",
        type=Shared::MarketingEmailType::WORK,
      ),
    ],
    id="<ID>",
    list_ids=.new[
      "string",
    ],
    name="string",
    raw=Shared::PropertyMarketingMemberRaw.new(),
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2021-11-29T21:46:12.900Z'),
  ),
)
    
res = s.martech.update_martech_member(req)

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
