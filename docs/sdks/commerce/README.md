# Commerce


### Available Operations

* [create_commerce_collection](#create_commerce_collection) - Create a collection
* [create_commerce_inventory](#create_commerce_inventory) - Create an inventory
* [create_commerce_item](#create_commerce_item) - Create an item/product
* [create_commerce_location](#create_commerce_location) - Create a location
* [get_commerce_collection](#get_commerce_collection) - Retrieve a collection
* [get_commerce_inventory](#get_commerce_inventory) - Retrieve an inventory
* [get_commerce_item](#get_commerce_item) - Retrieve an item/product
* [get_commerce_location](#get_commerce_location) - Retrieve a location
* [list_commerce_collections](#list_commerce_collections) - List all collections
* [list_commerce_inventories](#list_commerce_inventories) - List all inventories
* [list_commerce_items](#list_commerce_items) - List all items/products
* [list_commerce_locations](#list_commerce_locations) - List all locations
* [patch_commerce_collection](#patch_commerce_collection) - Update a collection
* [patch_commerce_inventory](#patch_commerce_inventory) - Update an inventory
* [patch_commerce_item](#patch_commerce_item) - Update an item/product
* [patch_commerce_location](#patch_commerce_location) - Update a location
* [remove_commerce_collection](#remove_commerce_collection) - Remove a collection
* [remove_commerce_inventory](#remove_commerce_inventory) - Remove an inventory
* [remove_commerce_item](#remove_commerce_item) - Remove an item/product
* [remove_commerce_location](#remove_commerce_location) - Remove a location
* [update_commerce_collection](#update_commerce_collection) - Update a collection
* [update_commerce_inventory](#update_commerce_inventory) - Update an inventory
* [update_commerce_item](#update_commerce_item) - Update an item/product
* [update_commerce_location](#update_commerce_location) - Update a location

## create_commerce_collection

Create a collection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.create_commerce_collection(connection_id="string", commerce_collection=Shared::CommerceCollection.new(
    id="<ID>",
    item_ids=[
      "string",
    ],
    media=[
      Shared::CommerceItemMedia.new(
        url="http://uneven-mattress.name",
      ),
    ],
    name="string",
    raw={
      "whoever": "string",
    },
    tags=[
      "string",
    ],
  ))

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `commerce_collection`                                                   | [Shared::CommerceCollection](../../models/shared/commercecollection.md) | :heavy_minus_sign:                                                      | A collection of items/products/services                                 |


### Response

**[T.nilable(Operations::CreateCommerceCollectionResponse)](../../models/operations/createcommercecollectionresponse.md)**


## create_commerce_inventory

Create an inventory

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.create_commerce_inventory(connection_id="string", commerce_inventory=Shared::CommerceInventory.new(
    available=5165.08,
    raw={
      "Officer": "string",
    },
  ))

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `commerce_inventory`                                                  | [Shared::CommerceInventory](../../models/shared/commerceinventory.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateCommerceInventoryResponse)](../../models/operations/createcommerceinventoryresponse.md)**


## create_commerce_item

Create an item/product

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.create_commerce_item(connection_id="string", commerce_item=Shared::CommerceItem.new(
    media=[
      Shared::CommerceItemMedia.new(
        url="http://loud-minister.name",
      ),
    ],
    name="string",
    raw={
      "Awesome": "string",
    },
    tags=[
      "string",
    ],
    variants=[
      Shared::CommerceItemVariant.new(
        media=[
          Shared::CommerceItemMedia.new(
            url="https://burdensome-pinecone.name",
          ),
        ],
        name="string",
        options=[
          Shared::CommerceItemOption.new(
            id="<ID>",
            name="string",
            values=[
              "string",
            ],
          ),
        ],
        prices=[
          Shared::CommerceItemPrice.new(
            price=5559.73,
          ),
        ],
        tags=[
          "string",
        ],
      ),
    ],
  ))

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `commerce_item`                                             | [Shared::CommerceItem](../../models/shared/commerceitem.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::CreateCommerceItemResponse)](../../models/operations/createcommerceitemresponse.md)**


## create_commerce_location

Create a location

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.create_commerce_location(connection_id="string", commerce_location=Shared::CommerceLocation.new(
    address=Shared::PropertyCommerceLocationAddress.new(),
    name="string",
    raw={
      "Books": "string",
    },
  ))

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `connection_id`                                                     | *String*                                                            | :heavy_check_mark:                                                  | ID of the connection                                                |
| `commerce_location`                                                 | [Shared::CommerceLocation](../../models/shared/commercelocation.md) | :heavy_minus_sign:                                                  | N/A                                                                 |


### Response

**[T.nilable(Operations::CreateCommerceLocationResponse)](../../models/operations/createcommercelocationresponse.md)**


## get_commerce_collection

Retrieve a collection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.get_commerce_collection(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Collection             |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCommerceCollectionResponse)](../../models/operations/getcommercecollectionresponse.md)**


## get_commerce_inventory

Retrieve an inventory

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.get_commerce_inventory(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Inventory              |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCommerceInventoryResponse)](../../models/operations/getcommerceinventoryresponse.md)**


## get_commerce_item

Retrieve an item/product

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.get_commerce_item(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.commerce_item.nil?
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

**[T.nilable(Operations::GetCommerceItemResponse)](../../models/operations/getcommerceitemresponse.md)**


## get_commerce_location

Retrieve a location

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.get_commerce_location(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Location               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCommerceLocationResponse)](../../models/operations/getcommercelocationresponse.md)**


## list_commerce_collections

List all collections

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListCommerceCollectionsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.commerce.list_commerce_collections(req)

if ! res.commerce_collections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Operations::ListCommerceCollectionsRequest](../../models/operations/listcommercecollectionsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(Operations::ListCommerceCollectionsResponse)](../../models/operations/listcommercecollectionsresponse.md)**


## list_commerce_inventories

List all inventories

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListCommerceInventoriesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.commerce.list_commerce_inventories(req)

if ! res.commerce_inventories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Operations::ListCommerceInventoriesRequest](../../models/operations/listcommerceinventoriesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(Operations::ListCommerceInventoriesResponse)](../../models/operations/listcommerceinventoriesresponse.md)**


## list_commerce_items

List all items/products

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListCommerceItemsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.commerce.list_commerce_items(req)

if ! res.commerce_items.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::ListCommerceItemsRequest](../../models/operations/listcommerceitemsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::ListCommerceItemsResponse)](../../models/operations/listcommerceitemsresponse.md)**


## list_commerce_locations

List all locations

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListCommerceLocationsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.commerce.list_commerce_locations(req)

if ! res.commerce_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Operations::ListCommerceLocationsRequest](../../models/operations/listcommercelocationsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(Operations::ListCommerceLocationsResponse)](../../models/operations/listcommercelocationsresponse.md)**


## patch_commerce_collection

Update a collection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.patch_commerce_collection(connection_id="string", id="string", commerce_collection=Shared::CommerceCollection.new(
    id="<ID>",
    item_ids=[
      "string",
    ],
    media=[
      Shared::CommerceItemMedia.new(
        url="http://personal-sorrow.com",
      ),
    ],
    name="string",
    raw={
      "Cheese": "string",
    },
    tags=[
      "string",
    ],
  ))

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the Collection                                                    |
| `commerce_collection`                                                   | [Shared::CommerceCollection](../../models/shared/commercecollection.md) | :heavy_minus_sign:                                                      | A collection of items/products/services                                 |


### Response

**[T.nilable(Operations::PatchCommerceCollectionResponse)](../../models/operations/patchcommercecollectionresponse.md)**


## patch_commerce_inventory

Update an inventory

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.patch_commerce_inventory(connection_id="string", id="string", commerce_inventory=Shared::CommerceInventory.new(
    available=615.23,
    raw={
      "Modern": "string",
    },
  ))

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Inventory                                                   |
| `commerce_inventory`                                                  | [Shared::CommerceInventory](../../models/shared/commerceinventory.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchCommerceInventoryResponse)](../../models/operations/patchcommerceinventoryresponse.md)**


## patch_commerce_item

Update an item/product

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.patch_commerce_item(connection_id="string", id="string", commerce_item=Shared::CommerceItem.new(
    media=[
      Shared::CommerceItemMedia.new(
        url="http://frank-galley.biz",
      ),
    ],
    name="string",
    raw={
      "Dollar": "string",
    },
    tags=[
      "string",
    ],
    variants=[
      Shared::CommerceItemVariant.new(
        media=[
          Shared::CommerceItemMedia.new(
            url="http://jaded-sequence.name",
          ),
        ],
        name="string",
        options=[
          Shared::CommerceItemOption.new(
            id="<ID>",
            name="string",
            values=[
              "string",
            ],
          ),
        ],
        prices=[
          Shared::CommerceItemPrice.new(
            price=3986.91,
          ),
        ],
        tags=[
          "string",
        ],
      ),
    ],
  ))

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Item                                              |
| `commerce_item`                                             | [Shared::CommerceItem](../../models/shared/commerceitem.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::PatchCommerceItemResponse)](../../models/operations/patchcommerceitemresponse.md)**


## patch_commerce_location

Update a location

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.patch_commerce_location(connection_id="string", id="string", commerce_location=Shared::CommerceLocation.new(
    address=Shared::PropertyCommerceLocationAddress.new(),
    name="string",
    raw={
      "Kina": "string",
    },
  ))

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `connection_id`                                                     | *String*                                                            | :heavy_check_mark:                                                  | ID of the connection                                                |
| `id`                                                                | *String*                                                            | :heavy_check_mark:                                                  | ID of the Location                                                  |
| `commerce_location`                                                 | [Shared::CommerceLocation](../../models/shared/commercelocation.md) | :heavy_minus_sign:                                                  | N/A                                                                 |


### Response

**[T.nilable(Operations::PatchCommerceLocationResponse)](../../models/operations/patchcommercelocationresponse.md)**


## remove_commerce_collection

Remove a collection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.remove_commerce_collection(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Collection |


### Response

**[T.nilable(Operations::RemoveCommerceCollectionResponse)](../../models/operations/removecommercecollectionresponse.md)**


## remove_commerce_inventory

Remove an inventory

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.remove_commerce_inventory(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Inventory  |


### Response

**[T.nilable(Operations::RemoveCommerceInventoryResponse)](../../models/operations/removecommerceinventoryresponse.md)**


## remove_commerce_item

Remove an item/product

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.remove_commerce_item(connection_id="string", id="string")

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

**[T.nilable(Operations::RemoveCommerceItemResponse)](../../models/operations/removecommerceitemresponse.md)**


## remove_commerce_location

Remove a location

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.remove_commerce_location(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Location   |


### Response

**[T.nilable(Operations::RemoveCommerceLocationResponse)](../../models/operations/removecommercelocationresponse.md)**


## update_commerce_collection

Update a collection

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.update_commerce_collection(connection_id="string", id="string", commerce_collection=Shared::CommerceCollection.new(
    id="<ID>",
    item_ids=[
      "string",
    ],
    media=[
      Shared::CommerceItemMedia.new(
        url="https://stupid-entity.org",
      ),
    ],
    name="string",
    raw={
      "Modern": "string",
    },
    tags=[
      "string",
    ],
  ))

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the Collection                                                    |
| `commerce_collection`                                                   | [Shared::CommerceCollection](../../models/shared/commercecollection.md) | :heavy_minus_sign:                                                      | A collection of items/products/services                                 |


### Response

**[T.nilable(Operations::UpdateCommerceCollectionResponse)](../../models/operations/updatecommercecollectionresponse.md)**


## update_commerce_inventory

Update an inventory

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.update_commerce_inventory(connection_id="string", id="string", commerce_inventory=Shared::CommerceInventory.new(
    available=9360.02,
    raw={
      "wavy": "string",
    },
  ))

if ! res.commerce_inventory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Inventory                                                   |
| `commerce_inventory`                                                  | [Shared::CommerceInventory](../../models/shared/commerceinventory.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateCommerceInventoryResponse)](../../models/operations/updatecommerceinventoryresponse.md)**


## update_commerce_item

Update an item/product

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.update_commerce_item(connection_id="string", id="string", commerce_item=Shared::CommerceItem.new(
    media=[
      Shared::CommerceItemMedia.new(
        url="https://aggressive-major-league.org",
      ),
    ],
    name="string",
    raw={
      "fuga": "string",
    },
    tags=[
      "string",
    ],
    variants=[
      Shared::CommerceItemVariant.new(
        media=[
          Shared::CommerceItemMedia.new(
            url="http://exemplary-standing.biz",
          ),
        ],
        name="string",
        options=[
          Shared::CommerceItemOption.new(
            id="<ID>",
            name="string",
            values=[
              "string",
            ],
          ),
        ],
        prices=[
          Shared::CommerceItemPrice.new(
            price=113.63,
          ),
        ],
        tags=[
          "string",
        ],
      ),
    ],
  ))

if ! res.commerce_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Item                                              |
| `commerce_item`                                             | [Shared::CommerceItem](../../models/shared/commerceitem.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::UpdateCommerceItemResponse)](../../models/operations/updatecommerceitemresponse.md)**


## update_commerce_location

Update a location

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.commerce.update_commerce_location(connection_id="string", id="string", commerce_location=Shared::CommerceLocation.new(
    address=Shared::PropertyCommerceLocationAddress.new(),
    name="string",
    raw={
      "hmph": "string",
    },
  ))

if ! res.commerce_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `connection_id`                                                     | *String*                                                            | :heavy_check_mark:                                                  | ID of the connection                                                |
| `id`                                                                | *String*                                                            | :heavy_check_mark:                                                  | ID of the Location                                                  |
| `commerce_location`                                                 | [Shared::CommerceLocation](../../models/shared/commercelocation.md) | :heavy_minus_sign:                                                  | N/A                                                                 |


### Response

**[T.nilable(Operations::UpdateCommerceLocationResponse)](../../models/operations/updatecommercelocationresponse.md)**

