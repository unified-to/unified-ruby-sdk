# Item


### Available Operations

* [create_commerce_item](#create_commerce_item) - Create an item
* [get_commerce_item](#get_commerce_item) - Retrieve an item
* [list_commerce_items](#list_commerce_items) - List all items
* [patch_commerce_item](#patch_commerce_item) - Update an item
* [remove_commerce_item](#remove_commerce_item) - Remove an item
* [update_commerce_item](#update_commerce_item) - Update an item

## create_commerce_item

Create an item

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.item.create_commerce_item(connection_id="<value>", commerce_item=::UnifiedRubySDK::Shared::CommerceItem.new())

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `commerce_item`                                                               | [::UnifiedRubySDK::Shared::CommerceItem](../../models/shared/commerceitem.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceItemResponse)](../../models/operations/createcommerceitemresponse.md)**


## get_commerce_item

Retrieve an item

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.item.get_commerce_item(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Item                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCommerceItemResponse)](../../models/operations/getcommerceitemresponse.md)**


## list_commerce_items

List all items

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCommerceItemsRequest.new(
  connection_id: "<value>",
)
    
res = s.item.list_commerce_items(req)

if ! res.commerce_items.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListCommerceItemsRequest](../../models/operations/listcommerceitemsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCommerceItemsResponse)](../../models/operations/listcommerceitemsresponse.md)**


## patch_commerce_item

Update an item

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.item.patch_commerce_item(connection_id="<value>", id="<value>", commerce_item=::UnifiedRubySDK::Shared::CommerceItem.new())

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Item                                                                |
| `commerce_item`                                                               | [::UnifiedRubySDK::Shared::CommerceItem](../../models/shared/commerceitem.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceItemResponse)](../../models/operations/patchcommerceitemresponse.md)**


## remove_commerce_item

Remove an item

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.item.remove_commerce_item(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Item       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCommerceItemResponse)](../../models/operations/removecommerceitemresponse.md)**


## update_commerce_item

Update an item

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.item.update_commerce_item(connection_id="<value>", id="<value>", commerce_item=::UnifiedRubySDK::Shared::CommerceItem.new())

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Item                                                                |
| `commerce_item`                                                               | [::UnifiedRubySDK::Shared::CommerceItem](../../models/shared/commerceitem.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceItemResponse)](../../models/operations/updatecommerceitemresponse.md)**

