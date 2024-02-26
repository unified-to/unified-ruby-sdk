# Commerce


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

    
res = s.commerce.create_commerce_collection(::UnifiedRubySDK::Operations::CreateCommerceCollectionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", commerce_collection=::UnifiedRubySDK::Shared::CommerceCollection.new(
    id: "<id>",
    name: "<value>",
  ))

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                    | [::UnifiedRubySDK::Operations::CreateCommerceCollectionSecurity](../../models/operations/createcommercecollectionsecurity.md) | :heavy_check_mark:                                                                                                            | The security requirements to use for the request.                                                                             |
| `connection_id`                                                                                                               | *::String*                                                                                                                    | :heavy_check_mark:                                                                                                            | ID of the connection                                                                                                          |
| `commerce_collection`                                                                                                         | [::UnifiedRubySDK::Shared::CommerceCollection](../../models/shared/commercecollection.md)                                     | :heavy_minus_sign:                                                                                                            | A collection of items/products/services                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceCollectionResponse)](../../models/operations/createcommercecollectionresponse.md)**


## create_commerce_inventory

Create an inventory

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.create_commerce_inventory(::UnifiedRubySDK::Operations::CreateCommerceInventorySecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", commerce_inventory=::UnifiedRubySDK::Shared::CommerceInventory.new(
    available: 5165.08,
  ))

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::CreateCommerceInventorySecurity](../../models/operations/createcommerceinventorysecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `commerce_inventory`                                                                                                        | [::UnifiedRubySDK::Shared::CommerceInventory](../../models/shared/commerceinventory.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceInventoryResponse)](../../models/operations/createcommerceinventoryresponse.md)**


## create_commerce_item

Create an item

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.create_commerce_item(::UnifiedRubySDK::Operations::CreateCommerceItemSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", commerce_item=::UnifiedRubySDK::Shared::CommerceItem.new(
    name: "<value>",
  ))

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::CreateCommerceItemSecurity](../../models/operations/createcommerceitemsecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `commerce_item`                                                                                                   | [::UnifiedRubySDK::Shared::CommerceItem](../../models/shared/commerceitem.md)                                     | :heavy_minus_sign:                                                                                                | N/A                                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceItemResponse)](../../models/operations/createcommerceitemresponse.md)**


## create_commerce_location

Create a location

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.create_commerce_location(::UnifiedRubySDK::Operations::CreateCommerceLocationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", commerce_location=::UnifiedRubySDK::Shared::CommerceLocation.new(
    name: "<value>",
  ))

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::CreateCommerceLocationSecurity](../../models/operations/createcommercelocationsecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `connection_id`                                                                                                           | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the connection                                                                                                      |
| `commerce_location`                                                                                                       | [::UnifiedRubySDK::Shared::CommerceLocation](../../models/shared/commercelocation.md)                                     | :heavy_minus_sign:                                                                                                        | N/A                                                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceLocationResponse)](../../models/operations/createcommercelocationresponse.md)**


## get_commerce_collection

Retrieve a collection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.get_commerce_collection(::UnifiedRubySDK::Operations::GetCommerceCollectionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                              | [::UnifiedRubySDK::Operations::GetCommerceCollectionSecurity](../../models/operations/getcommercecollectionsecurity.md) | :heavy_check_mark:                                                                                                      | The security requirements to use for the request.                                                                       |
| `connection_id`                                                                                                         | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | ID of the connection                                                                                                    |
| `id`                                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | ID of the Collection                                                                                                    |
| `fields_`                                                                                                               | T::Array<*::String*>                                                                                                    | :heavy_minus_sign:                                                                                                      | Comma-delimited fields to return                                                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCommerceCollectionResponse)](../../models/operations/getcommercecollectionresponse.md)**


## get_commerce_inventory

Retrieve an inventory

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.get_commerce_inventory(::UnifiedRubySDK::Operations::GetCommerceInventorySecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::GetCommerceInventorySecurity](../../models/operations/getcommerceinventorysecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Inventory                                                                                                   |
| `fields_`                                                                                                             | T::Array<*::String*>                                                                                                  | :heavy_minus_sign:                                                                                                    | Comma-delimited fields to return                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCommerceInventoryResponse)](../../models/operations/getcommerceinventoryresponse.md)**


## get_commerce_item

Retrieve an item

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.get_commerce_item(::UnifiedRubySDK::Operations::GetCommerceItemSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                  | [::UnifiedRubySDK::Operations::GetCommerceItemSecurity](../../models/operations/getcommerceitemsecurity.md) | :heavy_check_mark:                                                                                          | The security requirements to use for the request.                                                           |
| `connection_id`                                                                                             | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the connection                                                                                        |
| `id`                                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the Item                                                                                              |
| `fields_`                                                                                                   | T::Array<*::String*>                                                                                        | :heavy_minus_sign:                                                                                          | Comma-delimited fields to return                                                                            |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCommerceItemResponse)](../../models/operations/getcommerceitemresponse.md)**


## get_commerce_location

Retrieve a location

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.get_commerce_location(::UnifiedRubySDK::Operations::GetCommerceLocationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::GetCommerceLocationSecurity](../../models/operations/getcommercelocationsecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `id`                                                                                                                | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the Location                                                                                                  |
| `fields_`                                                                                                           | T::Array<*::String*>                                                                                                | :heavy_minus_sign:                                                                                                  | Comma-delimited fields to return                                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCommerceLocationResponse)](../../models/operations/getcommercelocationresponse.md)**


## list_commerce_collections

List all collections

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListCommerceCollectionsRequest.new(
  connection_id: "<value>",
)
    
res = s.commerce.list_commerce_collections(req, ::UnifiedRubySDK::Operations::ListCommerceCollectionsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.commerce_collections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::UnifiedRubySDK::Operations::ListCommerceCollectionsRequest](../../models/operations/listcommercecollectionsrequest.md)   | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::ListCommerceCollectionsSecurity](../../models/operations/listcommercecollectionssecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCommerceCollectionsResponse)](../../models/operations/listcommercecollectionsresponse.md)**


## list_commerce_inventories

List all inventories

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListCommerceInventoriesRequest.new(
  connection_id: "<value>",
)
    
res = s.commerce.list_commerce_inventories(req, ::UnifiedRubySDK::Operations::ListCommerceInventoriesSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.commerce_inventories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [::UnifiedRubySDK::Operations::ListCommerceInventoriesRequest](../../models/operations/listcommerceinventoriesrequest.md)   | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::ListCommerceInventoriesSecurity](../../models/operations/listcommerceinventoriessecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCommerceInventoriesResponse)](../../models/operations/listcommerceinventoriesresponse.md)**


## list_commerce_items

List all items

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListCommerceItemsRequest.new(
  connection_id: "<value>",
)
    
res = s.commerce.list_commerce_items(req, ::UnifiedRubySDK::Operations::ListCommerceItemsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.commerce_items.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListCommerceItemsRequest](../../models/operations/listcommerceitemsrequest.md)   | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::ListCommerceItemsSecurity](../../models/operations/listcommerceitemssecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCommerceItemsResponse)](../../models/operations/listcommerceitemsresponse.md)**


## list_commerce_locations

List all locations

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListCommerceLocationsRequest.new(
  connection_id: "<value>",
)
    
res = s.commerce.list_commerce_locations(req, ::UnifiedRubySDK::Operations::ListCommerceLocationsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.commerce_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListCommerceLocationsRequest](../../models/operations/listcommercelocationsrequest.md)   | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |
| `security`                                                                                                              | [::UnifiedRubySDK::Operations::ListCommerceLocationsSecurity](../../models/operations/listcommercelocationssecurity.md) | :heavy_check_mark:                                                                                                      | The security requirements to use for the request.                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCommerceLocationsResponse)](../../models/operations/listcommercelocationsresponse.md)**


## patch_commerce_collection

Update a collection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.patch_commerce_collection(::UnifiedRubySDK::Operations::PatchCommerceCollectionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", commerce_collection=::UnifiedRubySDK::Shared::CommerceCollection.new(
    id: "<id>",
    name: "<value>",
  ))

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::PatchCommerceCollectionSecurity](../../models/operations/patchcommercecollectionsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Collection                                                                                                        |
| `commerce_collection`                                                                                                       | [::UnifiedRubySDK::Shared::CommerceCollection](../../models/shared/commercecollection.md)                                   | :heavy_minus_sign:                                                                                                          | A collection of items/products/services                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceCollectionResponse)](../../models/operations/patchcommercecollectionresponse.md)**


## patch_commerce_inventory

Update an inventory

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.patch_commerce_inventory(::UnifiedRubySDK::Operations::PatchCommerceInventorySecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", commerce_inventory=::UnifiedRubySDK::Shared::CommerceInventory.new(
    available: 615.23,
  ))

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::PatchCommerceInventorySecurity](../../models/operations/patchcommerceinventorysecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `connection_id`                                                                                                           | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the connection                                                                                                      |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the Inventory                                                                                                       |
| `commerce_inventory`                                                                                                      | [::UnifiedRubySDK::Shared::CommerceInventory](../../models/shared/commerceinventory.md)                                   | :heavy_minus_sign:                                                                                                        | N/A                                                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceInventoryResponse)](../../models/operations/patchcommerceinventoryresponse.md)**


## patch_commerce_item

Update an item

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.patch_commerce_item(::UnifiedRubySDK::Operations::PatchCommerceItemSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", commerce_item=::UnifiedRubySDK::Shared::CommerceItem.new(
    name: "<value>",
  ))

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::PatchCommerceItemSecurity](../../models/operations/patchcommerceitemsecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Item                                                                                                  |
| `commerce_item`                                                                                                 | [::UnifiedRubySDK::Shared::CommerceItem](../../models/shared/commerceitem.md)                                   | :heavy_minus_sign:                                                                                              | N/A                                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceItemResponse)](../../models/operations/patchcommerceitemresponse.md)**


## patch_commerce_location

Update a location

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.patch_commerce_location(::UnifiedRubySDK::Operations::PatchCommerceLocationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", commerce_location=::UnifiedRubySDK::Shared::CommerceLocation.new(
    name: "<value>",
  ))

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                              | [::UnifiedRubySDK::Operations::PatchCommerceLocationSecurity](../../models/operations/patchcommercelocationsecurity.md) | :heavy_check_mark:                                                                                                      | The security requirements to use for the request.                                                                       |
| `connection_id`                                                                                                         | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | ID of the connection                                                                                                    |
| `id`                                                                                                                    | *::String*                                                                                                              | :heavy_check_mark:                                                                                                      | ID of the Location                                                                                                      |
| `commerce_location`                                                                                                     | [::UnifiedRubySDK::Shared::CommerceLocation](../../models/shared/commercelocation.md)                                   | :heavy_minus_sign:                                                                                                      | N/A                                                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceLocationResponse)](../../models/operations/patchcommercelocationresponse.md)**


## remove_commerce_collection

Remove a collection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.remove_commerce_collection(::UnifiedRubySDK::Operations::RemoveCommerceCollectionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                    | [::UnifiedRubySDK::Operations::RemoveCommerceCollectionSecurity](../../models/operations/removecommercecollectionsecurity.md) | :heavy_check_mark:                                                                                                            | The security requirements to use for the request.                                                                             |
| `connection_id`                                                                                                               | *::String*                                                                                                                    | :heavy_check_mark:                                                                                                            | ID of the connection                                                                                                          |
| `id`                                                                                                                          | *::String*                                                                                                                    | :heavy_check_mark:                                                                                                            | ID of the Collection                                                                                                          |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCommerceCollectionResponse)](../../models/operations/removecommercecollectionresponse.md)**


## remove_commerce_inventory

Remove an inventory

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.remove_commerce_inventory(::UnifiedRubySDK::Operations::RemoveCommerceInventorySecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::RemoveCommerceInventorySecurity](../../models/operations/removecommerceinventorysecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Inventory                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCommerceInventoryResponse)](../../models/operations/removecommerceinventoryresponse.md)**


## remove_commerce_item

Remove an item

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.remove_commerce_item(::UnifiedRubySDK::Operations::RemoveCommerceItemSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::RemoveCommerceItemSecurity](../../models/operations/removecommerceitemsecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the Item                                                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCommerceItemResponse)](../../models/operations/removecommerceitemresponse.md)**


## remove_commerce_location

Remove a location

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.remove_commerce_location(::UnifiedRubySDK::Operations::RemoveCommerceLocationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::RemoveCommerceLocationSecurity](../../models/operations/removecommercelocationsecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `connection_id`                                                                                                           | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the connection                                                                                                      |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the Location                                                                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCommerceLocationResponse)](../../models/operations/removecommercelocationresponse.md)**


## update_commerce_collection

Update a collection

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.update_commerce_collection(::UnifiedRubySDK::Operations::UpdateCommerceCollectionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", commerce_collection=::UnifiedRubySDK::Shared::CommerceCollection.new(
    id: "<id>",
    name: "<value>",
  ))

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                    | [::UnifiedRubySDK::Operations::UpdateCommerceCollectionSecurity](../../models/operations/updatecommercecollectionsecurity.md) | :heavy_check_mark:                                                                                                            | The security requirements to use for the request.                                                                             |
| `connection_id`                                                                                                               | *::String*                                                                                                                    | :heavy_check_mark:                                                                                                            | ID of the connection                                                                                                          |
| `id`                                                                                                                          | *::String*                                                                                                                    | :heavy_check_mark:                                                                                                            | ID of the Collection                                                                                                          |
| `commerce_collection`                                                                                                         | [::UnifiedRubySDK::Shared::CommerceCollection](../../models/shared/commercecollection.md)                                     | :heavy_minus_sign:                                                                                                            | A collection of items/products/services                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceCollectionResponse)](../../models/operations/updatecommercecollectionresponse.md)**


## update_commerce_inventory

Update an inventory

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.update_commerce_inventory(::UnifiedRubySDK::Operations::UpdateCommerceInventorySecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", commerce_inventory=::UnifiedRubySDK::Shared::CommerceInventory.new(
    available: 9360.02,
  ))

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::UpdateCommerceInventorySecurity](../../models/operations/updatecommerceinventorysecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Inventory                                                                                                         |
| `commerce_inventory`                                                                                                        | [::UnifiedRubySDK::Shared::CommerceInventory](../../models/shared/commerceinventory.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceInventoryResponse)](../../models/operations/updatecommerceinventoryresponse.md)**


## update_commerce_item

Update an item

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.update_commerce_item(::UnifiedRubySDK::Operations::UpdateCommerceItemSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", commerce_item=::UnifiedRubySDK::Shared::CommerceItem.new(
    name: "<value>",
  ))

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::UpdateCommerceItemSecurity](../../models/operations/updatecommerceitemsecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the Item                                                                                                    |
| `commerce_item`                                                                                                   | [::UnifiedRubySDK::Shared::CommerceItem](../../models/shared/commerceitem.md)                                     | :heavy_minus_sign:                                                                                                | N/A                                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceItemResponse)](../../models/operations/updatecommerceitemresponse.md)**


## update_commerce_location

Update a location

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.commerce.update_commerce_location(::UnifiedRubySDK::Operations::UpdateCommerceLocationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", commerce_location=::UnifiedRubySDK::Shared::CommerceLocation.new(
    name: "<value>",
  ))

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::UpdateCommerceLocationSecurity](../../models/operations/updatecommercelocationsecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `connection_id`                                                                                                           | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the connection                                                                                                      |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the Location                                                                                                        |
| `commerce_location`                                                                                                       | [::UnifiedRubySDK::Shared::CommerceLocation](../../models/shared/commercelocation.md)                                     | :heavy_minus_sign:                                                                                                        | N/A                                                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceLocationResponse)](../../models/operations/updatecommercelocationresponse.md)**

