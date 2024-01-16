# Item


### Available Operations

* [create_accounting_item](#create_accounting_item) - Create an item
* [get_accounting_item](#get_accounting_item) - Retrieve an item
* [list_accounting_items](#list_accounting_items) - List all items
* [patch_accounting_item](#patch_accounting_item) - Update an item
* [remove_accounting_item](#remove_accounting_item) - Remove an item
* [update_accounting_item](#update_accounting_item) - Update an item

## create_accounting_item

Create an item

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.item.create_accounting_item(connection_id="string", accounting_item=Shared::AccountingItem.new(
    name="string",
    raw=Shared::PropertyAccountingItemRaw.new(),
  ))

if ! res.accounting_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `accounting_item`                                               | [Shared::AccountingItem](../../models/shared/accountingitem.md) | :heavy_minus_sign:                                              | An item or product                                              |


### Response

**[T.nilable(Operations::CreateAccountingItemResponse)](../../models/operations/createaccountingitemresponse.md)**


## get_accounting_item

Retrieve an item

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.item.get_accounting_item(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_item.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Item                   |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingItemResponse)](../../models/operations/getaccountingitemresponse.md)**


## list_accounting_items

List all items

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingItemsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.item.list_accounting_items(req)

if ! res.accounting_items.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::ListAccountingItemsRequest](../../models/operations/listaccountingitemsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::ListAccountingItemsResponse)](../../models/operations/listaccountingitemsresponse.md)**


## patch_accounting_item

Update an item

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.item.patch_accounting_item(connection_id="string", id="string", accounting_item=Shared::AccountingItem.new(
    name="string",
    raw=Shared::PropertyAccountingItemRaw.new(),
  ))

if ! res.accounting_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Item                                                  |
| `accounting_item`                                               | [Shared::AccountingItem](../../models/shared/accountingitem.md) | :heavy_minus_sign:                                              | An item or product                                              |


### Response

**[T.nilable(Operations::PatchAccountingItemResponse)](../../models/operations/patchaccountingitemresponse.md)**


## remove_accounting_item

Remove an item

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.item.remove_accounting_item(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Item       |


### Response

**[T.nilable(Operations::RemoveAccountingItemResponse)](../../models/operations/removeaccountingitemresponse.md)**


## update_accounting_item

Update an item

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.item.update_accounting_item(connection_id="string", id="string", accounting_item=Shared::AccountingItem.new(
    name="string",
    raw=Shared::PropertyAccountingItemRaw.new(),
  ))

if ! res.accounting_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Item                                                  |
| `accounting_item`                                               | [Shared::AccountingItem](../../models/shared/accountingitem.md) | :heavy_minus_sign:                                              | An item or product                                              |


### Response

**[T.nilable(Operations::UpdateAccountingItemResponse)](../../models/operations/updateaccountingitemresponse.md)**

