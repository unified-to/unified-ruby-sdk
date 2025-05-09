# Passthrough
(*passthrough*)

## Overview

### Available Operations

* [create_passthrough_json](#create_passthrough_json) - Passthrough POST
* [create_passthrough_raw](#create_passthrough_raw) - Passthrough POST
* [list_passthroughs](#list_passthroughs) - Passthrough GET
* [patch_passthrough_json](#patch_passthrough_json) - Passthrough PUT
* [patch_passthrough_raw](#patch_passthrough_raw) - Passthrough PUT
* [remove_passthrough](#remove_passthrough) - Passthrough DELETE
* [update_passthrough_json](#update_passthrough_json) - Passthrough PUT
* [update_passthrough_raw](#update_passthrough_raw) - Passthrough PUT

## create_passthrough_json

Passthrough POST

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.passthrough.create_passthrough_json(connection_id="<id>", path="/opt/lib", request_body="<value>", query={
  "key": "<value>",
})

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *::String*                   | :heavy_check_mark:           | N/A                          |
| `request_body`               | *T.nilable(::Object)*        | :heavy_minus_sign:           | integration-specific payload |
| `query`                      | T::Hash[Symbol, *::Object*]  | :heavy_minus_sign:           | N/A                          |

### Response

**[T.nilable(Models::Operations::CreatePassthroughJsonResponse)](../../models/operations/createpassthroughjsonresponse.md)**



## create_passthrough_raw

Passthrough POST

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.passthrough.create_passthrough_raw(connection_id="<id>", path="/etc/namedb", request_body="0x4B93D6214f".encode(), query={
  "key": "<value>",
})

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *::String*                   | :heavy_check_mark:           | N/A                          |
| `request_body`               | *T.nilable(::String)*        | :heavy_minus_sign:           | integration-specific payload |
| `query`                      | T::Hash[Symbol, *::Object*]  | :heavy_minus_sign:           | N/A                          |

### Response

**[T.nilable(Models::Operations::CreatePassthroughRawResponse)](../../models/operations/createpassthroughrawresponse.md)**



## list_passthroughs

Passthrough GET

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.passthrough.list_passthroughs(connection_id="<id>", path="/selinux", query={
  "key": "<value>",
})

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                   | Type                        | Required                    | Description                 |
| --------------------------- | --------------------------- | --------------------------- | --------------------------- |
| `connection_id`             | *::String*                  | :heavy_check_mark:          | ID of the connection        |
| `path`                      | *::String*                  | :heavy_check_mark:          | N/A                         |
| `query`                     | T::Hash[Symbol, *::Object*] | :heavy_minus_sign:          | N/A                         |

### Response

**[T.nilable(Models::Operations::ListPassthroughsResponse)](../../models/operations/listpassthroughsresponse.md)**



## patch_passthrough_json

Passthrough PUT

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.passthrough.patch_passthrough_json(connection_id="<id>", path="/home/user", request_body="<value>", query={
  "key": "<value>",
})

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *::String*                   | :heavy_check_mark:           | N/A                          |
| `request_body`               | *T.nilable(::Object)*        | :heavy_minus_sign:           | integration-specific payload |
| `query`                      | T::Hash[Symbol, *::Object*]  | :heavy_minus_sign:           | N/A                          |

### Response

**[T.nilable(Models::Operations::PatchPassthroughJsonResponse)](../../models/operations/patchpassthroughjsonresponse.md)**



## patch_passthrough_raw

Passthrough PUT

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.passthrough.patch_passthrough_raw(connection_id="<id>", path="/etc/mail", request_body="0xCbf5667DBd".encode(), query={
  "key": "<value>",
})

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *::String*                   | :heavy_check_mark:           | N/A                          |
| `request_body`               | *T.nilable(::String)*        | :heavy_minus_sign:           | integration-specific payload |
| `query`                      | T::Hash[Symbol, *::Object*]  | :heavy_minus_sign:           | N/A                          |

### Response

**[T.nilable(Models::Operations::PatchPassthroughRawResponse)](../../models/operations/patchpassthroughrawresponse.md)**



## remove_passthrough

Passthrough DELETE

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.passthrough.remove_passthrough(connection_id="<id>", path="/Applications", query={
  "key": "<value>",
})

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                   | Type                        | Required                    | Description                 |
| --------------------------- | --------------------------- | --------------------------- | --------------------------- |
| `connection_id`             | *::String*                  | :heavy_check_mark:          | ID of the connection        |
| `path`                      | *::String*                  | :heavy_check_mark:          | N/A                         |
| `query`                     | T::Hash[Symbol, *::Object*] | :heavy_minus_sign:          | N/A                         |

### Response

**[T.nilable(Models::Operations::RemovePassthroughResponse)](../../models/operations/removepassthroughresponse.md)**



## update_passthrough_json

Passthrough PUT

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.passthrough.update_passthrough_json(connection_id="<id>", path="/etc/namedb", request_body="<value>", query={
  "key": "<value>",
})

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *::String*                   | :heavy_check_mark:           | N/A                          |
| `request_body`               | *T.nilable(::Object)*        | :heavy_minus_sign:           | integration-specific payload |
| `query`                      | T::Hash[Symbol, *::Object*]  | :heavy_minus_sign:           | N/A                          |

### Response

**[T.nilable(Models::Operations::UpdatePassthroughJsonResponse)](../../models/operations/updatepassthroughjsonresponse.md)**



## update_passthrough_raw

Passthrough PUT

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.passthrough.update_passthrough_raw(connection_id="<id>", path="/System", request_body="0x5739830F8E".encode(), query={
  "key": "<value>",
})

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `path`                       | *::String*                   | :heavy_check_mark:           | N/A                          |
| `request_body`               | *T.nilable(::String)*        | :heavy_minus_sign:           | integration-specific payload |
| `query`                      | T::Hash[Symbol, *::Object*]  | :heavy_minus_sign:           | N/A                          |

### Response

**[T.nilable(Models::Operations::UpdatePassthroughRawResponse)](../../models/operations/updatepassthroughrawresponse.md)**

