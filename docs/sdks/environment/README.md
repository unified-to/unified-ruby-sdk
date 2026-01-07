# Environment
(*environment*)

## Overview

### Available Operations

* [create_unified_environment](#create_unified_environment) - Create new environments
* [list_unified_environments](#list_unified_environments) - Returns all environments
* [remove_unified_environment](#remove_unified_environment) - Remove an environment

## create_unified_environment

Create new environments

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUnifiedEnvironment" method="post" path="/unified/environment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = []

res = s.environment.create_unified_environment(request: req)

unless res.environments.nil?
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `request`                                  | [T::Array[::String]](../../models//.md)    | :heavy_check_mark:                         | The request object to use for the request. |

### Response

**[T.nilable(Models::Operations::CreateUnifiedEnvironmentResponse)](../../models/operations/createunifiedenvironmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_environments

Returns all environments

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedEnvironments" method="get" path="/unified/environment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.environment.list_unified_environments()

unless res.environments.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::ListUnifiedEnvironmentsResponse)](../../models/operations/listunifiedenvironmentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_unified_environment

Remove an environment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUnifiedEnvironment" method="delete" path="/unified/environment/{env}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.environment.remove_unified_environment(env: '<value>')

unless res.environments.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `env`              | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::RemoveUnifiedEnvironmentResponse)](../../models/operations/removeunifiedenvironmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |