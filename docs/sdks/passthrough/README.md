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

<!-- UsageSnippet language="ruby" operationID="createPassthrough_json" method="post" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.create_passthrough_json(connection_id: '<id>', path: '/var/log')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_passthrough_raw

Passthrough POST

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPassthrough_raw" method="post" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.create_passthrough_raw(connection_id: '<id>', path: '/var/log')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_passthroughs

Passthrough GET

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPassthroughs" method="get" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.list_passthroughs(connection_id: '<id>', path: '/System')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_passthrough_json

Passthrough PUT

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPassthrough_json" method="patch" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.patch_passthrough_json(connection_id: '<id>', path: '/System')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_passthrough_raw

Passthrough PUT

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchPassthrough_raw" method="patch" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.patch_passthrough_raw(connection_id: '<id>', path: '/System')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_passthrough

Passthrough DELETE

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removePassthrough" method="delete" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.remove_passthrough(connection_id: '<id>', path: '/bin')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_passthrough_json

Passthrough PUT

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePassthrough_json" method="put" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.update_passthrough_json(connection_id: '<id>', path: '/var/tmp')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_passthrough_raw

Passthrough PUT

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updatePassthrough_raw" method="put" path="/passthrough/{connection_id}/{path}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.passthrough.update_passthrough_raw(connection_id: '<id>', path: '/var/tmp')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |