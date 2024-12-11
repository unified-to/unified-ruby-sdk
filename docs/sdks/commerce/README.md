# Commerce
(*commerce*)

## Overview

### Available Operations

* [create_commerce_collection](#create_commerce_collection) - Create a collection
* [create_commerce_inventory](#create_commerce_inventory) - Create an inventory
* [create_commerce_item](#create_commerce_item) - Create an item
* [create_commerce_location](#create_commerce_location) - Create a location
* [get_commerce_collection](#get_commerce_collection) - Retrieve a collection
* [get_commerce_inventory](#get_commerce_inventory) - Retrieve an inventory
* [get_commerce_item](#get_commerce_item) - Retrieve an item
* [get_commerce_location](#get_commerce_location) - Retrieve a location
* [list_commerce_collections](#list_commerce_collections) - List all collections
* [list_commerce_inventories](#list_commerce_inventories) - List all inventories
* [list_commerce_items](#list_commerce_items) - List all items
* [list_commerce_locations](#list_commerce_locations) - List all locations
* [patch_commerce_collection](#patch_commerce_collection) - Update a collection
* [patch_commerce_inventory](#patch_commerce_inventory) - Update an inventory
* [patch_commerce_item](#patch_commerce_item) - Update an item
* [patch_commerce_location](#patch_commerce_location) - Update a location
* [remove_commerce_collection](#remove_commerce_collection) - Remove a collection
* [remove_commerce_inventory](#remove_commerce_inventory) - Remove an inventory
* [remove_commerce_item](#remove_commerce_item) - Remove an item
* [remove_commerce_location](#remove_commerce_location) - Remove a location
* [update_commerce_collection](#update_commerce_collection) - Update a collection
* [update_commerce_inventory](#update_commerce_inventory) - Update an inventory
* [update_commerce_item](#update_commerce_item) - Update an item
* [update_commerce_location](#update_commerce_location) - Update a location

## create_commerce_collection

Create a collection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.create_commerce_collection(connection_id="<id>", commerce_collection=::UnifiedRubySDK::Shared::CommerceCollection.new(
  name: "<value>",
), fields_=[
  "<value>",
])

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                            | Type                                                                                                 | Required                                                                                             | Description                                                                                          |
| ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                      | *::String*                                                                                           | :heavy_check_mark:                                                                                   | ID of the connection                                                                                 |
| `commerce_collection`                                                                                | [T.nilable(::UnifiedRubySDK::Shared::CommerceCollection)](../../models/shared/commercecollection.md) | :heavy_minus_sign:                                                                                   | A collection of items/products/services                                                              |
| `fields_`                                                                                            | T::Array<*::String*>                                                                                 | :heavy_minus_sign:                                                                                   | Comma-delimited fields to return                                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceCollectionResponse)](../../models/operations/createcommercecollectionresponse.md)**



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

    
res = s.commerce.create_commerce_inventory(connection_id="<id>", commerce_inventory=::UnifiedRubySDK::Shared::CommerceInventory.new(
  available: 5165.08,
), fields_=[
  "<value>",
])

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                    | *::String*                                                                                         | :heavy_check_mark:                                                                                 | ID of the connection                                                                               |
| `commerce_inventory`                                                                               | [T.nilable(::UnifiedRubySDK::Shared::CommerceInventory)](../../models/shared/commerceinventory.md) | :heavy_minus_sign:                                                                                 | N/A                                                                                                |
| `fields_`                                                                                          | T::Array<*::String*>                                                                               | :heavy_minus_sign:                                                                                 | Comma-delimited fields to return                                                                   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceInventoryResponse)](../../models/operations/createcommerceinventoryresponse.md)**



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

    
res = s.commerce.create_commerce_item(connection_id="<id>", commerce_item=::UnifiedRubySDK::Shared::CommerceItem.new(), fields_=[
  "<value>",
])

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `commerce_item`                                                                          | [T.nilable(::UnifiedRubySDK::Shared::CommerceItem)](../../models/shared/commerceitem.md) | :heavy_minus_sign:                                                                       | N/A                                                                                      |
| `fields_`                                                                                | T::Array<*::String*>                                                                     | :heavy_minus_sign:                                                                       | Comma-delimited fields to return                                                         |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceItemResponse)](../../models/operations/createcommerceitemresponse.md)**



## create_commerce_location

Create a location

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.create_commerce_location(connection_id="<id>", commerce_location=::UnifiedRubySDK::Shared::CommerceLocation.new(
  name: "<value>",
), fields_=[
  "<value>",
])

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                        | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                  | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the connection                                                                             |
| `commerce_location`                                                                              | [T.nilable(::UnifiedRubySDK::Shared::CommerceLocation)](../../models/shared/commercelocation.md) | :heavy_minus_sign:                                                                               | N/A                                                                                              |
| `fields_`                                                                                        | T::Array<*::String*>                                                                             | :heavy_minus_sign:                                                                               | Comma-delimited fields to return                                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceLocationResponse)](../../models/operations/createcommercelocationresponse.md)**



## get_commerce_collection

Retrieve a collection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.get_commerce_collection(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Collection             |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCommerceCollectionResponse)](../../models/operations/getcommercecollectionresponse.md)**



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

    
res = s.commerce.get_commerce_inventory(connection_id="<id>", id="<id>", fields_=[
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

    
res = s.commerce.get_commerce_item(connection_id="<id>", id="<id>", fields_=[
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



## get_commerce_location

Retrieve a location

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.get_commerce_location(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Location               |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCommerceLocationResponse)](../../models/operations/getcommercelocationresponse.md)**



## list_commerce_collections

List all collections

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCommerceCollectionsRequest.new(
  connection_id: "<id>",
)
    
res = s.commerce.list_commerce_collections(req)

if ! res.commerce_collections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::UnifiedRubySDK::Operations::ListCommerceCollectionsRequest](../../models/operations/listcommercecollectionsrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCommerceCollectionsResponse)](../../models/operations/listcommercecollectionsresponse.md)**



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
    
res = s.commerce.list_commerce_inventories(req)

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
  connection_id: "<id>",
)
    
res = s.commerce.list_commerce_items(req)

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



## list_commerce_locations

List all locations

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCommerceLocationsRequest.new(
  connection_id: "<id>",
)
    
res = s.commerce.list_commerce_locations(req)

if ! res.commerce_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListCommerceLocationsRequest](../../models/operations/listcommercelocationsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCommerceLocationsResponse)](../../models/operations/listcommercelocationsresponse.md)**



## patch_commerce_collection

Update a collection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.patch_commerce_collection(connection_id="<id>", id="<id>", commerce_collection=::UnifiedRubySDK::Shared::CommerceCollection.new(
  name: "<value>",
), fields_=[
  "<value>",
])

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                            | Type                                                                                                 | Required                                                                                             | Description                                                                                          |
| ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                      | *::String*                                                                                           | :heavy_check_mark:                                                                                   | ID of the connection                                                                                 |
| `id`                                                                                                 | *::String*                                                                                           | :heavy_check_mark:                                                                                   | ID of the Collection                                                                                 |
| `commerce_collection`                                                                                | [T.nilable(::UnifiedRubySDK::Shared::CommerceCollection)](../../models/shared/commercecollection.md) | :heavy_minus_sign:                                                                                   | A collection of items/products/services                                                              |
| `fields_`                                                                                            | T::Array<*::String*>                                                                                 | :heavy_minus_sign:                                                                                   | Comma-delimited fields to return                                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceCollectionResponse)](../../models/operations/patchcommercecollectionresponse.md)**



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

    
res = s.commerce.patch_commerce_inventory(connection_id="<id>", id="<id>", commerce_inventory=::UnifiedRubySDK::Shared::CommerceInventory.new(
  available: 615.23,
), fields_=[
  "<value>",
])

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                    | *::String*                                                                                         | :heavy_check_mark:                                                                                 | ID of the connection                                                                               |
| `id`                                                                                               | *::String*                                                                                         | :heavy_check_mark:                                                                                 | ID of the Inventory                                                                                |
| `commerce_inventory`                                                                               | [T.nilable(::UnifiedRubySDK::Shared::CommerceInventory)](../../models/shared/commerceinventory.md) | :heavy_minus_sign:                                                                                 | N/A                                                                                                |
| `fields_`                                                                                          | T::Array<*::String*>                                                                               | :heavy_minus_sign:                                                                                 | Comma-delimited fields to return                                                                   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceInventoryResponse)](../../models/operations/patchcommerceinventoryresponse.md)**



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

    
res = s.commerce.patch_commerce_item(connection_id="<id>", id="<id>", commerce_item=::UnifiedRubySDK::Shared::CommerceItem.new(), fields_=[
  "<value>",
])

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the Item                                                                           |
| `commerce_item`                                                                          | [T.nilable(::UnifiedRubySDK::Shared::CommerceItem)](../../models/shared/commerceitem.md) | :heavy_minus_sign:                                                                       | N/A                                                                                      |
| `fields_`                                                                                | T::Array<*::String*>                                                                     | :heavy_minus_sign:                                                                       | Comma-delimited fields to return                                                         |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceItemResponse)](../../models/operations/patchcommerceitemresponse.md)**



## patch_commerce_location

Update a location

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.patch_commerce_location(connection_id="<id>", id="<id>", commerce_location=::UnifiedRubySDK::Shared::CommerceLocation.new(
  name: "<value>",
), fields_=[
  "<value>",
])

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                        | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                  | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the connection                                                                             |
| `id`                                                                                             | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the Location                                                                               |
| `commerce_location`                                                                              | [T.nilable(::UnifiedRubySDK::Shared::CommerceLocation)](../../models/shared/commercelocation.md) | :heavy_minus_sign:                                                                               | N/A                                                                                              |
| `fields_`                                                                                        | T::Array<*::String*>                                                                             | :heavy_minus_sign:                                                                               | Comma-delimited fields to return                                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceLocationResponse)](../../models/operations/patchcommercelocationresponse.md)**



## remove_commerce_collection

Remove a collection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.remove_commerce_collection(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Collection |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCommerceCollectionResponse)](../../models/operations/removecommercecollectionresponse.md)**



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

    
res = s.commerce.remove_commerce_inventory(connection_id="<id>", id="<id>")

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

    
res = s.commerce.remove_commerce_item(connection_id="<id>", id="<id>")

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



## remove_commerce_location

Remove a location

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.remove_commerce_location(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Location   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCommerceLocationResponse)](../../models/operations/removecommercelocationresponse.md)**



## update_commerce_collection

Update a collection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.update_commerce_collection(connection_id="<id>", id="<id>", commerce_collection=::UnifiedRubySDK::Shared::CommerceCollection.new(
  name: "<value>",
), fields_=[
  "<value>",
])

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                            | Type                                                                                                 | Required                                                                                             | Description                                                                                          |
| ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                      | *::String*                                                                                           | :heavy_check_mark:                                                                                   | ID of the connection                                                                                 |
| `id`                                                                                                 | *::String*                                                                                           | :heavy_check_mark:                                                                                   | ID of the Collection                                                                                 |
| `commerce_collection`                                                                                | [T.nilable(::UnifiedRubySDK::Shared::CommerceCollection)](../../models/shared/commercecollection.md) | :heavy_minus_sign:                                                                                   | A collection of items/products/services                                                              |
| `fields_`                                                                                            | T::Array<*::String*>                                                                                 | :heavy_minus_sign:                                                                                   | Comma-delimited fields to return                                                                     |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceCollectionResponse)](../../models/operations/updatecommercecollectionresponse.md)**



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

    
res = s.commerce.update_commerce_inventory(connection_id="<id>", id="<id>", commerce_inventory=::UnifiedRubySDK::Shared::CommerceInventory.new(
  available: 9360.01,
), fields_=[
  "<value>",
])

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                    | *::String*                                                                                         | :heavy_check_mark:                                                                                 | ID of the connection                                                                               |
| `id`                                                                                               | *::String*                                                                                         | :heavy_check_mark:                                                                                 | ID of the Inventory                                                                                |
| `commerce_inventory`                                                                               | [T.nilable(::UnifiedRubySDK::Shared::CommerceInventory)](../../models/shared/commerceinventory.md) | :heavy_minus_sign:                                                                                 | N/A                                                                                                |
| `fields_`                                                                                          | T::Array<*::String*>                                                                               | :heavy_minus_sign:                                                                                 | Comma-delimited fields to return                                                                   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceInventoryResponse)](../../models/operations/updatecommerceinventoryresponse.md)**



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

    
res = s.commerce.update_commerce_item(connection_id="<id>", id="<id>", commerce_item=::UnifiedRubySDK::Shared::CommerceItem.new(), fields_=[
  "<value>",
])

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the Item                                                                           |
| `commerce_item`                                                                          | [T.nilable(::UnifiedRubySDK::Shared::CommerceItem)](../../models/shared/commerceitem.md) | :heavy_minus_sign:                                                                       | N/A                                                                                      |
| `fields_`                                                                                | T::Array<*::String*>                                                                     | :heavy_minus_sign:                                                                       | Comma-delimited fields to return                                                         |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceItemResponse)](../../models/operations/updatecommerceitemresponse.md)**



## update_commerce_location

Update a location

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.update_commerce_location(connection_id="<id>", id="<id>", commerce_location=::UnifiedRubySDK::Shared::CommerceLocation.new(
  name: "<value>",
), fields_=[
  "<value>",
])

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                        | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                  | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the connection                                                                             |
| `id`                                                                                             | *::String*                                                                                       | :heavy_check_mark:                                                                               | ID of the Location                                                                               |
| `commerce_location`                                                                              | [T.nilable(::UnifiedRubySDK::Shared::CommerceLocation)](../../models/shared/commercelocation.md) | :heavy_minus_sign:                                                                               | N/A                                                                                              |
| `fields_`                                                                                        | T::Array<*::String*>                                                                             | :heavy_minus_sign:                                                                               | Comma-delimited fields to return                                                                 |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceLocationResponse)](../../models/operations/updatecommercelocationresponse.md)**

