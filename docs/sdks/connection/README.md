# Connection
(*connection*)

## Overview

### Available Operations

* [create_unified_connection](#create_unified_connection) - Create connection
* [get_unified_connection](#get_unified_connection) - Retrieve connection
* [list_unified_connections](#list_unified_connections) - List all connections
* [patch_unified_connection](#patch_unified_connection) - Update connection
* [remove_unified_connection](#remove_unified_connection) - Remove connection
* [update_unified_connection](#update_unified_connection) - Update connection

## create_unified_connection

Used only to import existing customer credentials; use "Create connection indirectly" instead

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Shared::Connection.new(
  categories: [
    ::UnifiedRubySDK::Shared::PropertyConnectionCategories::METADATA,
  ],
  integration_type: "<value>",
  permissions: [
    ::UnifiedRubySDK::Shared::PropertyConnectionPermissions::CRM_PIPELINE_WRITE,
  ],
)

res = s.connection.create_unified_connection(req)

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `request`                                                                 | [::UnifiedRubySDK::Shared::Connection](../../models/shared/connection.md) | :heavy_check_mark:                                                        | The request object to use for the request.                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateUnifiedConnectionResponse)](../../models/operations/createunifiedconnectionresponse.md)**



## get_unified_connection

Retrieve connection

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.connection.get_unified_connection(id="<id>")

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Connection |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetUnifiedConnectionResponse)](../../models/operations/getunifiedconnectionresponse.md)**



## list_unified_connections

List all connections

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListUnifiedConnectionsRequest.new()

res = s.connection.list_unified_connections(req)

if ! res.connections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListUnifiedConnectionsRequest](../../models/operations/listunifiedconnectionsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedConnectionsResponse)](../../models/operations/listunifiedconnectionsresponse.md)**



## patch_unified_connection

Update connection

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.connection.patch_unified_connection(connection=::UnifiedRubySDK::Shared::Connection.new(
  categories: [
    ::UnifiedRubySDK::Shared::PropertyConnectionCategories::MESSAGING,
  ],
  integration_type: "<value>",
  permissions: [
    ::UnifiedRubySDK::Shared::PropertyConnectionPermissions::CALENDAR_RECORDING_WRITE,
  ],
), id="<id>")

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `connection`                                                              | [::UnifiedRubySDK::Shared::Connection](../../models/shared/connection.md) | :heavy_check_mark:                                                        | A connection represents a specific authentication of an integration.      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Connection                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchUnifiedConnectionResponse)](../../models/operations/patchunifiedconnectionresponse.md)**



## remove_unified_connection

Remove connection

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.connection.remove_unified_connection(id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Connection |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveUnifiedConnectionResponse)](../../models/operations/removeunifiedconnectionresponse.md)**



## update_unified_connection

Update connection

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.connection.update_unified_connection(connection=::UnifiedRubySDK::Shared::Connection.new(
  categories: [
    ::UnifiedRubySDK::Shared::PropertyConnectionCategories::SCIM,
  ],
  integration_type: "<value>",
  permissions: [
    ::UnifiedRubySDK::Shared::PropertyConnectionPermissions::CALENDAR_LINK_WRITE,
  ],
), id="<id>")

if ! res.connection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `connection`                                                              | [::UnifiedRubySDK::Shared::Connection](../../models/shared/connection.md) | :heavy_check_mark:                                                        | A connection represents a specific authentication of an integration.      |
| `id`                                                                      | *::String*                                                                | :heavy_check_mark:                                                        | ID of the Connection                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateUnifiedConnectionResponse)](../../models/operations/updateunifiedconnectionresponse.md)**

