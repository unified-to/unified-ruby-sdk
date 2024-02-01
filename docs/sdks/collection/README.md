# Collection


### Available Operations

* [create_commerce_collection](#create_commerce_collection) - Create a collection
* [get_commerce_collection](#get_commerce_collection) - Retrieve a collection
* [list_commerce_collections](#list_commerce_collections) - List all collections
* [patch_commerce_collection](#patch_commerce_collection) - Update a collection
* [remove_commerce_collection](#remove_commerce_collection) - Remove a collection
* [update_commerce_collection](#update_commerce_collection) - Update a collection

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

    
res = s.collection.create_commerce_collection(connection_id="string", commerce_collection=Shared::CommerceCollection.new(
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

    
res = s.collection.get_commerce_collection(connection_id="string", id="string", fields=[
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
    
res = s.collection.list_commerce_collections(req)

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

    
res = s.collection.patch_commerce_collection(connection_id="string", id="string", commerce_collection=Shared::CommerceCollection.new(
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

    
res = s.collection.remove_commerce_collection(connection_id="string", id="string")

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

    
res = s.collection.update_commerce_collection(connection_id="string", id="string", commerce_collection=Shared::CommerceCollection.new(
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

