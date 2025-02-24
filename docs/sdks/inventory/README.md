# Inventory
(*inventory*)

## Overview

### Available Operations

* [create_commerce_inventory](#create_commerce_inventory) - Create an inventory
* [get_commerce_inventory](#get_commerce_inventory) - Retrieve an inventory
* [list_commerce_inventories](#list_commerce_inventories) - List all inventories
* [patch_commerce_inventory](#patch_commerce_inventory) - Update an inventory
* [remove_commerce_inventory](#remove_commerce_inventory) - Remove an inventory
* [update_commerce_inventory](#update_commerce_inventory) - Update an inventory

## create_commerce_inventory

Create an inventory

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.inventory.create_commerce_inventory(commerce_inventory=::UnifiedRubySDK::Shared::CommerceInventory.new(
  available: 5165.08,
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `commerce_inventory`                                                                    | [::UnifiedRubySDK::Shared::CommerceInventory](../../models/shared/commerceinventory.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceInventoryResponse)](../../models/operations/createcommerceinventoryresponse.md)**



## get_commerce_inventory

Retrieve an inventory

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.inventory.get_commerce_inventory(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Inventory              |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCommerceInventoryResponse)](../../models/operations/getcommerceinventoryresponse.md)**



## list_commerce_inventories

List all inventories

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCommerceInventoriesRequest.new(
  connection_id: "<id>",
)
    
res = s.inventory.list_commerce_inventories(req)

if ! res.commerce_inventories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::UnifiedRubySDK::Operations::ListCommerceInventoriesRequest](../../models/operations/listcommerceinventoriesrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCommerceInventoriesResponse)](../../models/operations/listcommerceinventoriesresponse.md)**



## patch_commerce_inventory

Update an inventory

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.inventory.patch_commerce_inventory(commerce_inventory=::UnifiedRubySDK::Shared::CommerceInventory.new(
  available: 615.23,
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `commerce_inventory`                                                                    | [::UnifiedRubySDK::Shared::CommerceInventory](../../models/shared/commerceinventory.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Inventory                                                                     |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceInventoryResponse)](../../models/operations/patchcommerceinventoryresponse.md)**



## remove_commerce_inventory

Remove an inventory

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.inventory.remove_commerce_inventory(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Inventory  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCommerceInventoryResponse)](../../models/operations/removecommerceinventoryresponse.md)**



## update_commerce_inventory

Update an inventory

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.inventory.update_commerce_inventory(commerce_inventory=::UnifiedRubySDK::Shared::CommerceInventory.new(
  available: 9360.02,
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `commerce_inventory`                                                                    | [::UnifiedRubySDK::Shared::CommerceInventory](../../models/shared/commerceinventory.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Inventory                                                                     |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceInventoryResponse)](../../models/operations/updatecommerceinventoryresponse.md)**

