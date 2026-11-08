# Secretsmanager
(*secretsmanager*)

## Overview

### Available Operations

* [create_unified_secretsmanager](#create_unified_secretsmanager) - Create secrets manager
* [get_unified_secretsmanager](#get_unified_secretsmanager) - Retrieve secrets manager
* [list_unified_secretsmanager_instructions](#list_unified_secretsmanager_instructions) - List secrets manager setup instructions
* [list_unified_secretsmanager_secrets](#list_unified_secretsmanager_secrets) - List secrets in a secrets manager
* [list_unified_secretsmanagers](#list_unified_secretsmanagers) - List secrets managers
* [remove_unified_secretsmanager](#remove_unified_secretsmanager) - Remove secrets manager

## create_unified_secretsmanager

Create secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUnifiedSecretsmanager" method="post" path="/unified/secretsmanager" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Shared::SecretsManager.new(
  auth: {
    "key": '<value>',
    "key1": '<value>',
  },
  name: '<value>',
  type: Models::Shared::SecretsManagerType::AKEYLESS,
)

res = s.secretsmanager.create_unified_secretsmanager(request: req)

unless res.secrets_manager.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `request`                                                               | [Models::Shared::SecretsManager](../../models/shared/secretsmanager.md) | :heavy_check_mark:                                                      | The request object to use for the request.                              |

### Response

**[T.nilable(Models::Operations::CreateUnifiedSecretsmanagerResponse)](../../models/operations/createunifiedsecretsmanagerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_unified_secretsmanager

Retrieve secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedSecretsmanager" method="get" path="/unified/secretsmanager/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.secretsmanager.get_unified_secretsmanager(id: '<id>')

unless res.secrets_manager.nil?
  # handle response
end

```

### Parameters

| Parameter                | Type                     | Required                 | Description              |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `id`                     | *::String*               | :heavy_check_mark:       | ID of the Secretsmanager |

### Response

**[T.nilable(Models::Operations::GetUnifiedSecretsmanagerResponse)](../../models/operations/getunifiedsecretsmanagerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_secretsmanager_instructions

List secrets manager setup instructions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedSecretsmanagerInstructions" method="get" path="/unified/secretsmanager/instructions" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.secretsmanager.list_unified_secretsmanager_instructions()

unless res.secrets_manager_instructions_list.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::ListUnifiedSecretsmanagerInstructionsResponse)](../../models/operations/listunifiedsecretsmanagerinstructionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_secretsmanager_secrets

List secrets in a secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedSecretsmanagerSecrets" method="get" path="/unified/secretsmanager/secrets" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.secretsmanager.list_unified_secretsmanager_secrets(secretsmanager_id: '<id>')

unless res.secrets_manager_secrets.nil?
  # handle response
end

```

### Parameters

| Parameter                                | Type                                     | Required                                 | Description                              |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| `secretsmanager_id`                      | *::String*                               | :heavy_check_mark:                       | The secrets manager to list secrets from |
| `limit`                                  | *T.nilable(::Float)*                     | :heavy_minus_sign:                       | Maximum number of secrets to return      |
| `offset`                                 | *T.nilable(::Float)*                     | :heavy_minus_sign:                       | Number of secrets to skip                |
| `query`                                  | *T.nilable(::String)*                    | :heavy_minus_sign:                       | Filter secrets by name                   |

### Response

**[T.nilable(Models::Operations::ListUnifiedSecretsmanagerSecretsResponse)](../../models/operations/listunifiedsecretsmanagersecretsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_secretsmanagers

List secrets managers

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedSecretsmanagers" method="get" path="/unified/secretsmanager" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedSecretsmanagersRequest.new()

res = s.secretsmanager.list_unified_secretsmanagers(request: req)

unless res.secrets_managers.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListUnifiedSecretsmanagersRequest](../../models/operations/listunifiedsecretsmanagersrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListUnifiedSecretsmanagersResponse)](../../models/operations/listunifiedsecretsmanagersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_unified_secretsmanager

Remove secrets manager

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUnifiedSecretsmanager" method="delete" path="/unified/secretsmanager/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.secretsmanager.remove_unified_secretsmanager(id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                | Type                     | Required                 | Description              |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `id`                     | *::String*               | :heavy_check_mark:       | ID of the Secretsmanager |

### Response

**[T.nilable(Models::Operations::RemoveUnifiedSecretsmanagerResponse)](../../models/operations/removeunifiedsecretsmanagerresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |