# List

## Overview

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
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.list.create_martech_list(connection_id="<value>", marketing_list=::UnifiedRubySDK::Shared::MarketingList.new())

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `connection_id`                                                                 | *::String*                                                                      | :heavy_check_mark:                                                              | ID of the connection                                                            |
| `marketing_list`                                                                | [::UnifiedRubySDK::Shared::MarketingList](../../models/shared/marketinglist.md) | :heavy_minus_sign:                                                              | Mailing List                                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateMartechListResponse)](../../models/operations/createmartechlistresponse.md)**




## get_martech_list

Retrieve a list

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.list.get_martech_list(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the List                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetMartechListResponse)](../../models/operations/getmartechlistresponse.md)**




## list_martech_lists

List all lists

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListMartechListsRequest.new(
  connection_id: "<value>",
)
    
res = s.list.list_martech_lists(req)

if ! res.marketing_lists.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListMartechListsRequest](../../models/operations/listmartechlistsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListMartechListsResponse)](../../models/operations/listmartechlistsresponse.md)**




## patch_martech_list

Update a list

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.list.patch_martech_list(connection_id="<value>", id="<value>", marketing_list=::UnifiedRubySDK::Shared::MarketingList.new())

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `connection_id`                                                                 | *::String*                                                                      | :heavy_check_mark:                                                              | ID of the connection                                                            |
| `id`                                                                            | *::String*                                                                      | :heavy_check_mark:                                                              | ID of the List                                                                  |
| `marketing_list`                                                                | [::UnifiedRubySDK::Shared::MarketingList](../../models/shared/marketinglist.md) | :heavy_minus_sign:                                                              | Mailing List                                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchMartechListResponse)](../../models/operations/patchmartechlistresponse.md)**




## remove_martech_list

Remove a list

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.list.remove_martech_list(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the List       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveMartechListResponse)](../../models/operations/removemartechlistresponse.md)**




## update_martech_list

Update a list

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.list.update_martech_list(connection_id="<value>", id="<value>", marketing_list=::UnifiedRubySDK::Shared::MarketingList.new())

if ! res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `connection_id`                                                                 | *::String*                                                                      | :heavy_check_mark:                                                              | ID of the connection                                                            |
| `id`                                                                            | *::String*                                                                      | :heavy_check_mark:                                                              | ID of the List                                                                  |
| `marketing_list`                                                                | [::UnifiedRubySDK::Shared::MarketingList](../../models/shared/marketinglist.md) | :heavy_minus_sign:                                                              | Mailing List                                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateMartechListResponse)](../../models/operations/updatemartechlistresponse.md)**


