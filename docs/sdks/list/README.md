# List


### Available Operations

* [create_martech_list](#create_martech_list) - Create a list
* [get_martech_list](#get_martech_list) - Retrieve a list
* [list_martech_lists](#list_martech_lists) - List all lists
* [patch_martech_list](#patch_martech_list) - Update a list
* [remove_martech_list](#remove_martech_list) - Remove a list
* [update_martech_list](#update_martech_list) - Update a list

## create_martech_list

Create a list

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.list.create_martech_list(req)

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


## get_martech_list

Retrieve a list

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.list.get_martech_list(req)

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


## list_martech_lists

List all lists

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.list.list_martech_lists(req)

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


## patch_martech_list

Update a list

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.list.patch_martech_list(req)

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


## remove_martech_list

Remove a list

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.list.remove_martech_list(req)

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


## update_martech_list

Update a list

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.list.update_martech_list(req)

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

