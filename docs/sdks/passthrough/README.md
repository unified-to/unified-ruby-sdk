# Passthrough


### Available Operations

* [create_passthrough](#create_passthrough) - Passthrough POST
* [list_passthroughs](#list_passthroughs) - Passthrough GET
* [patch_passthrough](#patch_passthrough) - Passthrough PUT
* [remove_passthrough](#remove_passthrough) - Passthrough DELETE
* [update_passthrough](#update_passthrough) - Passthrough PUT

## create_passthrough

Passthrough POST

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.passthrough.create_passthrough(connection_id="string", path="string", request_body={
    "turquoise": "string",
  })

if ! res.result.nil?
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *::String*                   | :heavy_check_mark:           | N/A                          |
| `request_body`               | T::Hash[Symbol, *::Object*]  | :heavy_minus_sign:           | integration-specific payload |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreatePassthroughResponse)](../../models/operations/createpassthroughresponse.md)**


## list_passthroughs

Passthrough GET

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.passthrough.list_passthroughs(connection_id="string", path="string")

if ! res.result.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `path`               | *::String*           | :heavy_check_mark:   | N/A                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListPassthroughsResponse)](../../models/operations/listpassthroughsresponse.md)**


## patch_passthrough

Passthrough PUT

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.passthrough.patch_passthrough(connection_id="string", path="string", request_body={
    "brand": "string",
  })

if ! res.result.nil?
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *::String*                   | :heavy_check_mark:           | N/A                          |
| `request_body`               | T::Hash[Symbol, *::Object*]  | :heavy_minus_sign:           | integration-specific payload |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchPassthroughResponse)](../../models/operations/patchpassthroughresponse.md)**


## remove_passthrough

Passthrough DELETE

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.passthrough.remove_passthrough(connection_id="string", path="string")

if ! res.result.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `path`               | *::String*           | :heavy_check_mark:   | N/A                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemovePassthroughResponse)](../../models/operations/removepassthroughresponse.md)**


## update_passthrough

Passthrough PUT

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.passthrough.update_passthrough(connection_id="string", path="string", request_body={
    "Northwest": "string",
  })

if ! res.result.nil?
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *::String*                   | :heavy_check_mark:           | N/A                          |
| `request_body`               | T::Hash[Symbol, *::Object*]  | :heavy_minus_sign:           | integration-specific payload |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdatePassthroughResponse)](../../models/operations/updatepassthroughresponse.md)**

