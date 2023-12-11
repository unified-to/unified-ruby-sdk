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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateMartechListRequest.new(
  connection_id="string",
  marketing_list=Shared::MarketingList.new(
    raw=Shared::PropertyMarketingListRaw.new(),
  ),
)
    
res = s.list.create_martech_list(connection_id="string", marketing_list=Shared::MarketingList.new(
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


## get_martech_list

Retrieve a list

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetMartechListRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.list.get_martech_list(connection_id="string", id="string", fields=[
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


## list_martech_lists

List all lists

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListMartechListsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchMartechListRequest.new(
  connection_id="string",
  id="<ID>",
  marketing_list=Shared::MarketingList.new(
    raw=Shared::PropertyMarketingListRaw.new(),
  ),
)
    
res = s.list.patch_martech_list(connection_id="string", id="string", marketing_list=Shared::MarketingList.new(
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


## remove_martech_list

Remove a list

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveMartechListRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.list.remove_martech_list(connection_id="string", id="string")

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateMartechListRequest.new(
  connection_id="string",
  id="<ID>",
  marketing_list=Shared::MarketingList.new(
    raw=Shared::PropertyMarketingListRaw.new(),
  ),
)
    
res = s.list.update_martech_list(connection_id="string", id="string", marketing_list=Shared::MarketingList.new(
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

