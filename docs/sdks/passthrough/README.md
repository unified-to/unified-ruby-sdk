# Passthrough
(*passthrough*)

## Overview

### Available Operations

* [create_passthrough2_json](#create_passthrough2_json) - Passthrough POST
* [create_passthrough2_raw](#create_passthrough2_raw) - Passthrough POST
* [list_passthroughs2](#list_passthroughs2) - Passthrough GET
* [patch_passthrough2_json](#patch_passthrough2_json) - Passthrough PUT
* [patch_passthrough2_raw](#patch_passthrough2_raw) - Passthrough PUT
* [remove_passthrough2](#remove_passthrough2) - Passthrough DELETE
* [update_passthrough2_json](#update_passthrough2_json) - Passthrough PUT
* [update_passthrough2_raw](#update_passthrough2_raw) - Passthrough PUT

## create_passthrough2_json

Passthrough POST

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPassthrough2_json" method="post" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.create_passthrough2_json(connection_id: '<id>', path: '/net')

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

**[T.nilable(Models::Operations::CreatePassthrough2JsonResponse)](../../models/operations/createpassthrough2jsonresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_passthrough2_raw

Passthrough POST

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPassthrough2_raw" method="post" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.create_passthrough2_raw(connection_id: '<id>', path: '/net')

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

**[T.nilable(Models::Operations::CreatePassthrough2RawResponse)](../../models/operations/createpassthrough2rawresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_passthroughs2

Passthrough GET

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPassthroughs2" method="get" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.list_passthroughs2(connection_id: '<id>', path: '/usr/local/src')

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

**[T.nilable(Models::Operations::ListPassthroughs2Response)](../../models/operations/listpassthroughs2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_passthrough2_json

Passthrough PUT

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPassthrough2_json" method="patch" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.patch_passthrough2_json(connection_id: '<id>', path: '/usr/X11R6')

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

**[T.nilable(Models::Operations::PatchPassthrough2JsonResponse)](../../models/operations/patchpassthrough2jsonresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_passthrough2_raw

Passthrough PUT

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPassthrough2_raw" method="patch" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.patch_passthrough2_raw(connection_id: '<id>', path: '/usr/X11R6')

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

**[T.nilable(Models::Operations::PatchPassthrough2RawResponse)](../../models/operations/patchpassthrough2rawresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_passthrough2

Passthrough DELETE

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePassthrough2" method="delete" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.remove_passthrough2(connection_id: '<id>', path: '/usr/include')

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

**[T.nilable(Models::Operations::RemovePassthrough2Response)](../../models/operations/removepassthrough2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_passthrough2_json

Passthrough PUT

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePassthrough2_json" method="put" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.update_passthrough2_json(connection_id: '<id>', path: '/home/user/dir')

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

**[T.nilable(Models::Operations::UpdatePassthrough2JsonResponse)](../../models/operations/updatepassthrough2jsonresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_passthrough2_raw

Passthrough PUT

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePassthrough2_raw" method="put" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.update_passthrough2_raw(connection_id: '<id>', path: '/home/user/dir')

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

**[T.nilable(Models::Operations::UpdatePassthrough2RawResponse)](../../models/operations/updatepassthrough2rawresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |