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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreatePassthroughRequest.new(
  path_params=Operations::CreatePassthroughRequest.new(
    connection_id="string",
    path="/etc/periodic",
    undefined=Shared::Undefined.new(),
  ),
  undefined=Shared::Undefined.new(),
)
    
res = s.passthrough.create_passthrough(req)

if ! res.undefined.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `connection_id`                                       | *String*                                              | :heavy_check_mark:                                    | ID of the connection                                  |
| `path`                                                | *String*                                              | :heavy_check_mark:                                    | N/A                                                   |
| `undefined`                                           | [Shared::Undefined](../../models/shared/undefined.md) | :heavy_minus_sign:                                    | integration-specific payload                          |


### Response

**[T.nilable(Operations::CreatePassthroughResponse)](../../models/operations/createpassthroughresponse.md)**


## list_passthroughs

Passthrough GET

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListPassthroughsRequest.new(
  path_params=Operations::ListPassthroughsRequest.new(
    connection_id="string",
    path="/selinux",
  ),
)
    
res = s.passthrough.list_passthroughs(req)

if ! res.undefined.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `path`               | *String*             | :heavy_check_mark:   | N/A                  |


### Response

**[T.nilable(Operations::ListPassthroughsResponse)](../../models/operations/listpassthroughsresponse.md)**


## patch_passthrough

Passthrough PUT

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchPassthroughRequest.new(
  path_params=Operations::PatchPassthroughRequest.new(
    connection_id="string",
    path="/mnt",
    undefined=Shared::Undefined.new(),
  ),
  undefined=Shared::Undefined.new(),
)
    
res = s.passthrough.patch_passthrough(req)

if ! res.undefined.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `connection_id`                                       | *String*                                              | :heavy_check_mark:                                    | ID of the connection                                  |
| `path`                                                | *String*                                              | :heavy_check_mark:                                    | N/A                                                   |
| `undefined`                                           | [Shared::Undefined](../../models/shared/undefined.md) | :heavy_minus_sign:                                    | integration-specific payload                          |


### Response

**[T.nilable(Operations::PatchPassthroughResponse)](../../models/operations/patchpassthroughresponse.md)**


## remove_passthrough

Passthrough DELETE

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemovePassthroughRequest.new(
  path_params=Operations::RemovePassthroughRequest.new(
    connection_id="string",
    path="/Applications",
  ),
)
    
res = s.passthrough.remove_passthrough(req)

if ! res.undefined.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `path`               | *String*             | :heavy_check_mark:   | N/A                  |


### Response

**[T.nilable(Operations::RemovePassthroughResponse)](../../models/operations/removepassthroughresponse.md)**


## update_passthrough

Passthrough PUT

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdatePassthroughRequest.new(
  path_params=Operations::UpdatePassthroughRequest.new(
    connection_id="string",
    path="/dev",
    undefined=Shared::Undefined.new(),
  ),
  undefined=Shared::Undefined.new(),
)
    
res = s.passthrough.update_passthrough(req)

if ! res.undefined.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `connection_id`                                       | *String*                                              | :heavy_check_mark:                                    | ID of the connection                                  |
| `path`                                                | *String*                                              | :heavy_check_mark:                                    | N/A                                                   |
| `undefined`                                           | [Shared::Undefined](../../models/shared/undefined.md) | :heavy_minus_sign:                                    | integration-specific payload                          |


### Response

**[T.nilable(Operations::UpdatePassthroughResponse)](../../models/operations/updatepassthroughresponse.md)**

