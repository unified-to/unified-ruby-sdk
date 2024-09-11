# Collection

## Overview

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
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.collection.create_commerce_collection(connection_id="<value>", commerce_collection=::UnifiedRubySDK::Shared::CommerceCollection.new(
    id: "<id>",
    name: "<value>",
  ), fields_=[
    "<value>",
  ])

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `connection_id`                                                                           | *::String*                                                                                | :heavy_check_mark:                                                                        | ID of the connection                                                                      |
| `commerce_collection`                                                                     | [::UnifiedRubySDK::Shared::CommerceCollection](../../models/shared/commercecollection.md) | :heavy_minus_sign:                                                                        | A collection of items/products/services                                                   |
| `fields_`                                                                                 | T::Array<*::String*>                                                                      | :heavy_minus_sign:                                                                        | Comma-delimited fields to return                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceCollectionResponse)](../../models/operations/createcommercecollectionresponse.md)**




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

    
res = s.collection.get_commerce_collection(connection_id="<value>", id="<value>", fields_=[
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
  connection_id: "<value>",
)
    
res = s.collection.list_commerce_collections(req)

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

    
res = s.collection.patch_commerce_collection(connection_id="<value>", id="<value>", commerce_collection=::UnifiedRubySDK::Shared::CommerceCollection.new(
    id: "<id>",
    name: "<value>",
  ), fields_=[
    "<value>",
  ])

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `connection_id`                                                                           | *::String*                                                                                | :heavy_check_mark:                                                                        | ID of the connection                                                                      |
| `id`                                                                                      | *::String*                                                                                | :heavy_check_mark:                                                                        | ID of the Collection                                                                      |
| `commerce_collection`                                                                     | [::UnifiedRubySDK::Shared::CommerceCollection](../../models/shared/commercecollection.md) | :heavy_minus_sign:                                                                        | A collection of items/products/services                                                   |
| `fields_`                                                                                 | T::Array<*::String*>                                                                      | :heavy_minus_sign:                                                                        | Comma-delimited fields to return                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceCollectionResponse)](../../models/operations/patchcommercecollectionresponse.md)**




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

    
res = s.collection.remove_commerce_collection(connection_id="<value>", id="<value>")

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

    
res = s.collection.update_commerce_collection(connection_id="<value>", id="<value>", commerce_collection=::UnifiedRubySDK::Shared::CommerceCollection.new(
    id: "<id>",
    name: "<value>",
  ), fields_=[
    "<value>",
  ])

if ! res.commerce_collection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `connection_id`                                                                           | *::String*                                                                                | :heavy_check_mark:                                                                        | ID of the connection                                                                      |
| `id`                                                                                      | *::String*                                                                                | :heavy_check_mark:                                                                        | ID of the Collection                                                                      |
| `commerce_collection`                                                                     | [::UnifiedRubySDK::Shared::CommerceCollection](../../models/shared/commercecollection.md) | :heavy_minus_sign:                                                                        | A collection of items/products/services                                                   |
| `fields_`                                                                                 | T::Array<*::String*>                                                                      | :heavy_minus_sign:                                                                        | Comma-delimited fields to return                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceCollectionResponse)](../../models/operations/updatecommercecollectionresponse.md)**


