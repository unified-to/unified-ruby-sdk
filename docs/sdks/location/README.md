# Location


### Available Operations

* [create_commerce_location](#create_commerce_location) - Create a location
* [create_hris_location](#create_hris_location) - Create a location
* [get_commerce_location](#get_commerce_location) - Retrieve a location
* [get_hris_location](#get_hris_location) - Retrieve a location
* [list_commerce_locations](#list_commerce_locations) - List all locations
* [list_hris_locations](#list_hris_locations) - List all locations
* [patch_commerce_location](#patch_commerce_location) - Update a location
* [patch_hris_location](#patch_hris_location) - Update a location
* [remove_commerce_location](#remove_commerce_location) - Remove a location
* [remove_hris_location](#remove_hris_location) - Remove a location
* [update_commerce_location](#update_commerce_location) - Update a location
* [update_hris_location](#update_hris_location) - Update a location

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

    
res = s.location.create_commerce_location(connection_id="<value>", commerce_location=::UnifiedRubySDK::Shared::CommerceLocation.new(
    name: "<value>",
  ))

if ! res.commerce_location.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `commerce_location`                                                                   | [::UnifiedRubySDK::Shared::CommerceLocation](../../models/shared/commercelocation.md) | :heavy_minus_sign:                                                                    | N/A                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCommerceLocationResponse)](../../models/operations/createcommercelocationresponse.md)**


## create_hris_location

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

    
res = s.location.create_hris_location(connection_id="<value>", hris_location=::UnifiedRubySDK::Shared::HrisLocation.new())

if ! res.hris_location.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `hris_location`                                                               | [::UnifiedRubySDK::Shared::HrisLocation](../../models/shared/hrislocation.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateHrisLocationResponse)](../../models/operations/createhrislocationresponse.md)**


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

    
res = s.location.get_commerce_location(connection_id="<value>", id="<value>", fields_=[
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


## get_hris_location

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

    
res = s.location.get_hris_location(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.hris_location.nil?
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

**[T.nilable(::UnifiedRubySDK::Operations::GetHrisLocationResponse)](../../models/operations/gethrislocationresponse.md)**


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
  connection_id: "<value>",
)
    
res = s.location.list_commerce_locations(req)

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


## list_hris_locations

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


req = ::UnifiedRubySDK::Operations::ListHrisLocationsRequest.new(
  connection_id: "<value>",
)
    
res = s.location.list_hris_locations(req)

if ! res.hris_locations.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListHrisLocationsRequest](../../models/operations/listhrislocationsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListHrisLocationsResponse)](../../models/operations/listhrislocationsresponse.md)**


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

    
res = s.location.patch_commerce_location(connection_id="<value>", id="<value>", commerce_location=::UnifiedRubySDK::Shared::CommerceLocation.new(
    name: "<value>",
  ))

if ! res.commerce_location.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `id`                                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the Location                                                                    |
| `commerce_location`                                                                   | [::UnifiedRubySDK::Shared::CommerceLocation](../../models/shared/commercelocation.md) | :heavy_minus_sign:                                                                    | N/A                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCommerceLocationResponse)](../../models/operations/patchcommercelocationresponse.md)**


## patch_hris_location

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

    
res = s.location.patch_hris_location(connection_id="<value>", id="<value>", hris_location=::UnifiedRubySDK::Shared::HrisLocation.new())

if ! res.hris_location.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Location                                                            |
| `hris_location`                                                               | [::UnifiedRubySDK::Shared::HrisLocation](../../models/shared/hrislocation.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchHrisLocationResponse)](../../models/operations/patchhrislocationresponse.md)**


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

    
res = s.location.remove_commerce_location(connection_id="<value>", id="<value>")

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


## remove_hris_location

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

    
res = s.location.remove_hris_location(connection_id="<value>", id="<value>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveHrisLocationResponse)](../../models/operations/removehrislocationresponse.md)**


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

    
res = s.location.update_commerce_location(connection_id="<value>", id="<value>", commerce_location=::UnifiedRubySDK::Shared::CommerceLocation.new(
    name: "<value>",
  ))

if ! res.commerce_location.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `id`                                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the Location                                                                    |
| `commerce_location`                                                                   | [::UnifiedRubySDK::Shared::CommerceLocation](../../models/shared/commercelocation.md) | :heavy_minus_sign:                                                                    | N/A                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCommerceLocationResponse)](../../models/operations/updatecommercelocationresponse.md)**


## update_hris_location

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

    
res = s.location.update_hris_location(connection_id="<value>", id="<value>", hris_location=::UnifiedRubySDK::Shared::HrisLocation.new())

if ! res.hris_location.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Location                                                            |
| `hris_location`                                                               | [::UnifiedRubySDK::Shared::HrisLocation](../../models/shared/hrislocation.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateHrisLocationResponse)](../../models/operations/updatehrislocationresponse.md)**

