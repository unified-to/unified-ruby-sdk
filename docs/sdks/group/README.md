# Group


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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateHrisGroupRequest.new(
  path_params=Operations::CreateHrisGroupRequest.new(
    connection_id="string",
    hris_group=Shared::HrisGroup.new(
      created_at=DateTime.iso8601('2022-08-11T13:14:46.931Z'),
      description="Self-enabling system-worthy collaboration",
      employee_ids=.new[
        "string",
      ],
      id="<ID>",
      is_active=false,
      manager_ids=.new[
        "string",
      ],
      name="string",
      parent_id="string",
      raw=Shared::PropertyHrisGroupRaw.new(),
      type=Shared::HrisGroupType::TEAM,
      updated_at=DateTime.iso8601('2023-03-10T00:20:29.321Z'),
    ),
  ),
  hris_group=Shared::HrisGroup.new(
    created_at=DateTime.iso8601('2022-01-27T15:34:55.791Z'),
    description="Proactive empowering approach",
    employee_ids=.new[
      "string",
    ],
    id="<ID>",
    is_active=false,
    manager_ids=.new[
      "string",
    ],
    name="string",
    parent_id="string",
    raw=Shared::PropertyHrisGroupRaw.new(),
    type=Shared::HrisGroupType::TEAM,
    updated_at=DateTime.iso8601('2022-01-25T14:36:31.130Z'),
  ),
)
    
res = s.group.create_hris_group(req)

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `connection_id`                                       | *String*                                              | :heavy_check_mark:                                    | ID of the connection                                  |
| `hris_group`                                          | [Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                    | N/A                                                   |


### Response

**[T.nilable(Operations::CreateHrisGroupResponse)](../../models/operations/createhrisgroupresponse.md)**


## get_hris_group

Retrieve a group

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetHrisGroupRequest.new(
  path_params=Operations::GetHrisGroupRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetHrisGroupRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.group.get_hris_group(req)

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Group                  |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetHrisGroupResponse)](../../models/operations/gethrisgroupresponse.md)**


## list_hris_groups

List all groups

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListHrisGroupsRequest.new(
  path_params=Operations::ListHrisGroupsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=4815.14,
    offset=2554.75,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-04-29T22:04:03.121Z'),
  ),
  query_params=Operations::ListHrisGroupsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=4234.1,
    offset=9175.29,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-10-31T06:46:39.656Z'),
  ),
)
    
res = s.group.list_hris_groups(req)

if ! res.hris_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Operations::ListHrisGroupsRequest](../../models/operations/listhrisgroupsrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |


### Response

**[T.nilable(Operations::ListHrisGroupsResponse)](../../models/operations/listhrisgroupsresponse.md)**


## patch_hris_group

Update a group

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchHrisGroupRequest.new(
  path_params=Operations::PatchHrisGroupRequest.new(
    connection_id="string",
    id="<ID>",
    hris_group=Shared::HrisGroup.new(
      created_at=DateTime.iso8601('2021-11-09T20:25:35.217Z'),
      description="Compatible contextually-based local area network",
      employee_ids=.new[
        "string",
      ],
      id="<ID>",
      is_active=false,
      manager_ids=.new[
        "string",
      ],
      name="string",
      parent_id="string",
      raw=Shared::PropertyHrisGroupRaw.new(),
      type=Shared::HrisGroupType::DIVISION,
      updated_at=DateTime.iso8601('2022-06-23T09:49:13.425Z'),
    ),
  ),
  hris_group=Shared::HrisGroup.new(
    created_at=DateTime.iso8601('2022-12-25T07:04:30.987Z'),
    description="Adaptive radical methodology",
    employee_ids=.new[
      "string",
    ],
    id="<ID>",
    is_active=false,
    manager_ids=.new[
      "string",
    ],
    name="string",
    parent_id="string",
    raw=Shared::PropertyHrisGroupRaw.new(),
    type=Shared::HrisGroupType::DIVISION,
    updated_at=DateTime.iso8601('2022-05-22T15:46:46.079Z'),
  ),
)
    
res = s.group.patch_hris_group(req)

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `connection_id`                                       | *String*                                              | :heavy_check_mark:                                    | ID of the connection                                  |
| `id`                                                  | *String*                                              | :heavy_check_mark:                                    | ID of the Group                                       |
| `hris_group`                                          | [Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                    | N/A                                                   |


### Response

**[T.nilable(Operations::PatchHrisGroupResponse)](../../models/operations/patchhrisgroupresponse.md)**


## remove_hris_group

Remove a group

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveHrisGroupRequest.new(
  path_params=Operations::RemoveHrisGroupRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.group.remove_hris_group(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Group      |


### Response

**[T.nilable(Operations::RemoveHrisGroupResponse)](../../models/operations/removehrisgroupresponse.md)**


## update_hris_group

Update a group

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateHrisGroupRequest.new(
  path_params=Operations::UpdateHrisGroupRequest.new(
    connection_id="string",
    id="<ID>",
    hris_group=Shared::HrisGroup.new(
      created_at=DateTime.iso8601('2021-12-06T17:42:02.933Z'),
      description="Integrated empowering productivity",
      employee_ids=.new[
        "string",
      ],
      id="<ID>",
      is_active=false,
      manager_ids=.new[
        "string",
      ],
      name="string",
      parent_id="string",
      raw=Shared::PropertyHrisGroupRaw.new(),
      type=Shared::HrisGroupType::TEAM,
      updated_at=DateTime.iso8601('2023-09-12T15:58:06.273Z'),
    ),
  ),
  hris_group=Shared::HrisGroup.new(
    created_at=DateTime.iso8601('2021-02-20T16:10:10.066Z'),
    description="Business-focused analyzing help-desk",
    employee_ids=.new[
      "string",
    ],
    id="<ID>",
    is_active=false,
    manager_ids=.new[
      "string",
    ],
    name="string",
    parent_id="string",
    raw=Shared::PropertyHrisGroupRaw.new(),
    type=Shared::HrisGroupType::TEAM,
    updated_at=DateTime.iso8601('2023-01-30T09:57:45.517Z'),
  ),
)
    
res = s.group.update_hris_group(req)

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `connection_id`                                       | *String*                                              | :heavy_check_mark:                                    | ID of the connection                                  |
| `id`                                                  | *String*                                              | :heavy_check_mark:                                    | ID of the Group                                       |
| `hris_group`                                          | [Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                    | N/A                                                   |


### Response

**[T.nilable(Operations::UpdateHrisGroupResponse)](../../models/operations/updatehrisgroupresponse.md)**

